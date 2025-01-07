const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const authRoutes = require('./routes/authRoutes');



require('dotenv').config();



const app = express();
const PORT = process.env.PORT || 3000;


app.use(cors());
app.use(bodyParser.json());


app.use('/api/auth', authRoutes);


app.listen(PORT, () => {
    console.log(`Сервер запущен на порту http://localhost:${PORT}`);
});
