  
const express = require('express');
const routes = express.Router();
const Nosql = require("./src/controllers/index");

// Produtos
routes.get("/produtos",Nosql.ShowProdutos) 
  
// Mensagem
routes.post("/mensagem",Nosql.EnviandoDados) 

module.exports = routes;