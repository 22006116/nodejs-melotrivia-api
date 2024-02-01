import { Router } from "express";
import {
    getPreguntas, 
    getPregunta,
    crearPreguntas, 
    actualizarPreguntas, 
    deletePreguntas
} from '../controllers/preguntas.controller.js';

const router = Router();

router.get('/preguntas', getPreguntas );

router.get('/preguntas/:id', getPregunta );

router.post('/preguntas', crearPreguntas);

router.patch('/preguntas/:id', actualizarPreguntas);

router.delete('/preguntas/:id', deletePreguntas);

export default router;