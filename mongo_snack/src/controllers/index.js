const mongoose = require("mongoose");
require("../db/connect");
//Minha conexão com bd

//model
require("../models/Produtos");
const Produtos = mongoose.model("produtos");

require("../models/Mensagem");
const Mensagem = mongoose.model("contato");

//Produtos
const ShowProdutos = async (req, res) => {
    const produtosResponse = await Produtos.find();
    const produtosJson = await produtosResponse;
    res.json(produtosJson);
  };

//Mensagem
 const EnviandoDados= async(req, res) => {
    const novaMensagem = new Mensagem({
      nome_cliente: req.body.nome_cliente,
      mensagem_cliente: req.body.mensagem_cliente,
    });
    novaMensagem.save();
    res.json({
      message: "Mensagem enviada com sucesso", // test no insonia
      usuario:  novaMensagem,
    })
}


module.exports={
    ShowProdutos,
    EnviandoDados,
};