const Sequelize = require("sequelize")
const db = require("../database/db");

module.exports = db.sequelize.define(
    'comments',
    {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        customerId: {
            type: Sequelize.INTEGER
        },
        comment: {
            type: Sequelize.STRING
        },
        created: {
            type: Sequelize.DATE,
            defaultValue: Sequelize.NOW
        },
        deleted: {
            type: Sequelize.INTEGER,
            defaultValue: 0
        }
    },{
        timestamps: false
    }
);