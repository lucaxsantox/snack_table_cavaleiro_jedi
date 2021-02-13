  
const express = require("express");
const app=express();
const cors=require('cors'); 
const routes = require('./rotas');

//config
app.use(express.json());
app.use(cors())
app.use(express.static('./build'))

//rotas
app.use(routes);

//port
app.listen(1501);