const mongoose = require("mongoose");
const Schema = mongoose.Schema;

//criação da minha tabela Feedback

const Mensagem = new Schema({
    nome_cliente:{
        type: String,
        required: true,
        maxlength: 45,
        minlength: 3
      },
    mensagem_cliente:{
        type: String,
        required: true,
      },
})

mongoose.model("contato", Mensagem);