import express from 'express';
import preguntasRoutes from './routes/preguntas.routes.js';
import indexRoutes from './routes/index.routes.js';


const app = express();

app.use(express.json());

app.use(indexRoutes);
app.use('/api',preguntasRoutes);

app.use((req, res) => {
    res.status(404).json({
        message: 'Endpoint not found'
    });
});

export default app;