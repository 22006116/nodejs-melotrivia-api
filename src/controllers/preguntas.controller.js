import {pool} from '../db.js';

export const getPreguntas = async (req, res) => {
    try {
        throw new Error('DB Error');
        const [rows] = await pool.query('SELECT * FROM pregunta');
        res.send(rows);
    } catch (err) {
        return res.status(500).json({
            message: 'Something went wrong'
        });
    }

};

export const getPregunta = async (req, res) => {
  try {
    const [rows] = await pool.query('SELECT * FROM pregunta WHERE id = ?', [req.params.id]);
    if (rows.length <= 0) return res.status(404).json({
        message: 'Solicitud no encntrada'
    });
    res.send(rows[0]);
  } catch (err) {
    return res.status(500).json({
        message: 'Something went wrong'
    });
  }

};

export const crearPreguntas = async (req, res) => {
    try {
        const {pregunta, respuesta_Corecta, respuesta_1, respuesta_2, respuesta_3} = req.body;
        const [rows] = await pool.query('INSERT INTO pregunta (pregunta, respuesta_Corecta, respuesta_1, respuesta_2, respuesta_3 ) VALUES (?, ?, ?, ?, ?)', 
        [pregunta, respuesta_Corecta, respuesta_1, respuesta_2, respuesta_3 ]);   
        res.send({
            id: rows.insertId,
            pregunta, 
            respuesta_Corecta, 
            respuesta_1, 
            respuesta_2, 
            respuesta_3
        });
    } catch (err) {
        return res.status(500).json({
            message: 'Something went wrong'
        });
    }
};

export const actualizarPreguntas = async (req, res) => {
    try {
        const {id} = req.params;
        const {pregunta, respuesta_Corecta, respuesta_1, respuesta_2, respuesta_3} = req.body;
        
        const [result] = await pool.query('UPDATE pregunta SET pregunta = IFNULL(?, pregunta), respuesta_Corecta = IFNULL(?, respuesta_Corecta), respuesta_1 = IFNULL(?, respuesta_1), respuesta_2 = IFNULL(?, respuesta_2), respuesta_3 = IFNULL(?, respuesta_3) WHERE  id = ?', [pregunta, respuesta_Clorecta, respuesta_1, respuesta_2, respuesta_3, id]);
        console.log(result);

        if (result.affectedRows === 0) return  res.status(404).json({
            message: 'Solicitud no encntrada'
        });

        const [rows] = await pool.query('SELECT * FROM pregunta WHERE id = ?', [id]);

        res.json(rows[0]);
    } catch (err) {
        return res.status(500).json({
            message: 'Something went wrong'
        });
    }
};

export const deletePreguntas = async (req, res) => {
  try {
    const [resutl] = await pool.query('DELETE FROM pregunta WHERE id = ?', [req.params.id]);
    if (resutl.affectedRows <= 0) return res.status(404).json({
        message: 'Solicitud no encntrada'
    });
    
    res.sendStatus(204);  
  } catch (err) {
    return res.status(500).json({
        message: 'Something went wrong'
    });
  }
};

