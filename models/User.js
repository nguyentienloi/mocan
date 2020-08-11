const Sequelize = require("sequelize")
const db = require("../database/db");

module.exports = db.sequelize.define(
    'users',
    {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        first_name: {
            type: Sequelize.STRING
        },
        last_name: {
            type: Sequelize.STRING
        },
        email: {
            type: Sequelize.STRING
        },
        password: {
            type: Sequelize.STRING
        },
        status: {
            type: Sequelize.INTEGER,
            defaultValue: 0
        },
        role: {
            type: Sequelize.INTEGER,
            defaultValue: 0
        },
        created: {
            type: Sequelize.DATE,
            defaultValue: Sequelize.NOW
        }
    },{
        timestamps: false
    }
);
