import Jumbotron from 'react-bootstrap/Jumbotron'
import Card from 'react-bootstrap/Card'
import CardGroup from 'react-bootstrap/CardGroup'
import Form from 'react-bootstrap/Form'
import Button from 'react-bootstrap/Button'
import React from 'react'
import Alert from 'react-bootstrap/Alert'


const Contato = () => {
  const [form, setForm] = React.useState ({
      nome_cliente: "",
      mensagem_cliente: ""
  })


  const [response, setResponse]=React.useState(null)


  function handleChange({target}){
      const {id, value} = target
      setForm({...form, [id]: value})

      console.log ({[id]: value}) 

  }
  
  function handleSubmit(event) {
      event.preventDefault()
      fetch('http://localhost:1501/mensagem', {
          method: "POST",
          headers: {"Content-Type" : "application/json"},
          body : JSON.stringify(form)
      }).then(res=> {
          setResponse(res)
      })

      window.location.reload(false)
  }



    return (
    <div><Jumbotron>
        <h1>Contato</h1>
    </Jumbotron>
    <CardGroup>
    <Card>
      <Card.Img variant="top" src={require(`../Produto/Imagens/logo_email.png`).default} className="logo"/>
      <Card.Body>
        <Card.Title>contato@snacktable.com</Card.Title>
        
      </Card.Body>
    </Card>
    <Card>
      <Card.Img variant="top" src={require(`../Produto/Imagens/logo_whatsapp.png`).default} className="logo" />
      <Card.Body>
        <Card.Title>(21) 99999-9999</Card.Title>
      </Card.Body>
    </Card>
    <Card>
      <Card.Img variant="top" src={require(`../Produto/Imagens/twitter-logo-1-1.png`).default}  className="logo"/>
      <Card.Body>
        <Card.Title>@snack_table</Card.Title>
      </Card.Body>
    </Card>
  </CardGroup>
  <br/> <br/>


  <Form onSubmit={handleSubmit} method="post">
  <Form.Group controlId="exampleForm.ControlInput1">
    <Form.Label htmlFor="nome_cliente">Nome:</Form.Label>
    <Form.Control type="text"
          name="nome_cliente"
          id="nome_cliente"
          value ={form.nome_cliente}
          onChange={handleChange} placeholder="Diga seu nome" />
  </Form.Group>
  <Form.Group controlId="exampleForm.ControlTextarea1">
    <Form.Label htmlFor="mensagem_cliente">Mensagem:</Form.Label>
    <Form.Control type="text"
          name="mensagem_cliente"
          id="mensagem_cliente"
          value ={form.mensagem_cliente}
          onChange={handleChange} as="textarea" rows={3} placeholder="Digite sua mensagem"/>
  </Form.Group>
  <Button type="submit" variant="danger">Enviar Mensagem</Button>
</Form>

  {response && response.ok && alert("Mensagem enviada com sucesso!")}
  </div>
    )
}

export default Contato;