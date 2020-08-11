var express = require("express")
var cors = require("cors")
var bodyParser = require("body-parser")
var app = express()
var port = process.env.PORT || 5000

app.use(bodyParser.json())
app.use(cors())
app.use(bodyParser.urlencoded({extended: false}))

var users = require("./routes/User")
var comments = require("./routes/Comment")
var customers = require("./routes/Customers")

app.use("/users", users)
app.use("/comments", comments)
app.use("/customers", customers)

app.listen(port, () => {
    console.log("server start " + port)
})