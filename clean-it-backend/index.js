const express = require('express');
const app = express();
const db = require('./db/db')();
const auth = require('./auth/auth');

app.use(express.json());

app.get('/', (req, res) => {
    res.send('Welcome to Clean It');
});

app.use('/auth', auth);


const port = process.env.port || 3000;
app.listen(port, () => {
    console.log(`Listening on port ${port}...`);
})
