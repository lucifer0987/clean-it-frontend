const express = require('express');
const app = express();
const db = require('./db/db')();
const auth = require('./auth/auth');
const schedule_pickup = require('./pickup_apis/schedule_pickup')

app.use(express.json());

app.get('/', (req, res) => {
    res.send('Welcome to Clean It');
});

app.use('/auth', auth);
app.use('/pickup', schedule_pickup);


const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log(`Listening on port ${port}...`);
})


/*
1. Pickup request raised - with availability,  date and time
2. Pickup request accepted
3. Clothes picked Up
4. Clothes received
5. Washing in-progress
6. Washing comleted
7. Delivery in-progress
8. Delivered
*/
