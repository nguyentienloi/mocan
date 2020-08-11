const Sequelize = require("sequelize")
const db = require("../database/db");

module.exports = db.sequelize.define(
    'customers',
    {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        name: {
            type: Sequelize.STRING
        },
        phone: {
            type: Sequelize.INTEGER
        },
        created: {
            type: Sequelize.DATE,
            defaultValue: Sequelize.NOW
        }
    },{
        timestamps: false
    }
);