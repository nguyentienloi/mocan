const express = require("express")
const customers = express.Router()
const cors = require("cors")
const Customers = require("../models/Customers")
customers.use(cors())

process.env.SECRET_KEY = 'secret'

customers.post("/postcustomer", (req, res) => {
    const today = new Date()
    const customerData = {
        name : req.body.name,
        phone: req.body.mobile,
        created: today
    }
    Customers.create(customerData)
    res.send('success')
})

customers.get("/getlist", async (req, res) => {
    const listCustomers =  await Customers.findAll({
        attributes: ['id', 'name', 'phone', 'created']
    });
    if(listCustomers.length) {
        const dataRow = []
        for(let i = 0; i < listCustomers.length; i++){
            dataRow.push(listCustomers[i].dataValues);
        }
        res.send(dataRow);
    }
})

module.exports = customers