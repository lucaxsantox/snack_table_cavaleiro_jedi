//import Jumbotron_Loja from '../Components/Jumbotron_Loja'
//import Tabela from '../Components/Tabela_Lojas'
import { lazy, Suspense } from 'react'

const Jumbotron_Loja = lazy(() => import('../Components/Jumbotron_Loja'));
const Tabela = lazy(() => import('../Components/Tabela_Lojas'));


 function Lojas() {


    return (
        <div>
            <Suspense fallback={<center><h1>Carregando</h1></center>}>
        <Jumbotron_Loja/>

        <Tabela/>
        </Suspense>
        </div>
    )
}

export default Lojas;