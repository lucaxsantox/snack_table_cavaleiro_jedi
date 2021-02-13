const mongoose = require('mongoose')

function connect(){

mongoose
.connect('mongodb://localhost:/snack_table', {
    useNewUrlParser: true,
     useUnifiedTopology: true
    })
 .then(()=>{
     console.log ("Conectado com o banco snack_table")

 }).catch((error)=>{
     console.log(`Erro ao tentar a conexão ${error}`)
 })

}

module.exports = connect()