const express = require('express');
const cors = require('cors');
require('dotenv').config();

const app = express();
const PORT = process.env.PORT || 5000;

// Middlewares
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Importar rutas
const authRoutes = require('./routes/auth');
const productRoutes = require('./routes/products');
const favoriteRoutes = require('./routes/favorites');
const promotionRoutes = require('./routes/promotions');
const requestRoutes = require('./routes/requests');
const adminRoutes = require('./routes/admin');

// Usar rutas
app.use('/api/auth', authRoutes);
app.use('/api/products', productRoutes);
app.use('/api/favorites', favoriteRoutes);
app.use('/api/promotions', promotionRoutes);
app.use('/api/requests', requestRoutes);
app.use('/api/admin', adminRoutes);

// Ruta de prueba
app.get('/', (req, res) => {
    res.send('API D&R Fashion funcionando correctamente');
});

// Iniciar servidor
app.listen(PORT, () => {
    console.log(`Servidor corriendo en http://localhost:${PORT}`);
});

require('./jobs/checkStock'); 
