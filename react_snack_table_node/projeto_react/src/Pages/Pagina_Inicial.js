//import Jumbotron_Display from '../Components/Jumbotron'
import { lazy, Suspense } from 'react'

const Jumbotron_Display = lazy(() => import('../Components/Jumbotron'));

function Pagina_Inicial() {


    return (
        <Suspense fallback={<center><h1>Carregando</h1></center>}>
        <Jumbotron_Display/>
        </Suspense>
    )
}

export default Pagina_Inicial;