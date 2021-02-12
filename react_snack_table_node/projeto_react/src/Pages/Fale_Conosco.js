import { lazy, Suspense } from 'react'
//import Contato from '../Components/Contato'

const Contato = lazy(() => import('../Components/Contato'));

export default function Fale_Conosco() {
    return (
        <Suspense fallback={<center><h1>Carregando</h1></center>}>
        <Contato/>
        </Suspense>
    )
}