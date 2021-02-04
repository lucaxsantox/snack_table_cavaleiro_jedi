const express = require('express');

const app =express();

const cors = require('cors')

app.use (cors())
app.use(express.json())



app.get('/',(req, res, next) => { 





    const mysql=require('mysql')
    const connection =mysql.createConnection ({
        host: 'localhost',
        user: 'root',
        password:"",
        database: 'snack_table'
    });

    connection.query("SELECT * FROM snack_table.produtos join valores on produtos.idprodutos =valores.id_valores;", (error, result) => {
        res.json( result )

        console.log(result);
    
    })

})


app.post('/mensagem', (req, res) => { 

    const mysql=require('mysql')
    const connection =mysql.createConnection ({
        host: 'localhost',
        user: 'root',
        password:"",
        database: 'snack_table'
    });

    

        // array com meus dados 
    let dados =[] 

    dados.push( {
        nome_cliente: req.body.nome_cliente, mensagem_cliente: req.body.mensagem_cliente
    })

    connection.query('INSERT INTO mensagens_fale_conosco SET?', ()=> {
        dados =[]
        return res.json ({mensagem: " Dados enviados com sucesso"})
    })

}) 

app.listen(3050, () => {
    console.log('O servidor está funcionando na porta 3050');
})