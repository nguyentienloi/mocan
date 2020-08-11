const express = require("express")
const comments = express.Router()
const cors = require("cors")

const Comment = require("../models/Comment")
const User = require("../models/User")
comments.use(cors())

process.env.SECRET_KEY = 'secret'

comments.post("/postcomment", (req, res) => {
    const today = new Date()
    const commentData = {
        customerId : req.body.customerId,
        comment: req.body.comment,
        created: today
    }
    Comment.create(commentData)
    res.send('them moi comment thanh cong');
})

comments.get("/getlist", async (req, res) => {
    const listComment =  await Comment.findAll({
        attributes: ['id', 'customerId', 'comment', 'created'],
        where: {
            deleted: 0
        },
        order: [['id', 'desc']],
    });
    var rowData = [];
    for (let i = 0; i < listComment.length; i++) {
        const item = listComment[i].dataValues;
        const getName = await User.findOne({
            attributes: ['first_name', 'last_name'],
            where: {
                id: listComment[i].dataValues.customerId
            }
        });
        console.log('data', getName);
        item['userName'] = getName.first_name + ' ' + getName.last_name;
        rowData.push(item);
    }
    res.send(rowData);
})

comments.delete("/delete/:id", (req, res) => {
    const id = req.params.id;
    Comment.destroy({
        where: {
            id,
        }
    })
    res.send({
        code: 200,
        message: 'xoa thanh cong'
    });
})

module.exports = comments