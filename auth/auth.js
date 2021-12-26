const express = require('express');
const route = express.Router();
const { User, validateUser, validateLogin } = require('../models/user');

route.post('/signup', async (req, res) => {
    const {error} = validateUser(req.body);
    if(error){
        return res.status(400).send({
            success : false,
            message : error.details[0].message
        });
    }
    let user_by_email = await User.findOne({email: req.body.email});
    if(user_by_email){
        return res.status(401).send({
            success : false,
            message : "User already exists"
        });
    }
    
    let user = new User({
        name: req.body.name,
        email: req.body.email,
        phone: req.body.phone,
        password: req.body.password,
        isAdmin: req.body.isAdmin
    });

    const new_user = await user.save();
    return res.status(200).send({
        success : true,
        message : "You have successfully signed-up"
    });
});

route.post('/login', async(req, res) => {
    const {error} = validateLogin(req.body.email, req.body.password);
    if(error){
        return res.status(400).send({
            success : false,
            message : error.details[0].message
        });
    }

    let user_by_email = await User.findOne({email: req.body.email});
    if(!user_by_email){
        return res.status(401).send({
            success : false,
            message : "User doesn't exist"
        });
    }

    if(user_by_email.password === req.body.password){
        return res.status(200).send({
            success: true,
            name : user_by_email.name,
            email : user_by_email.email,
            phone : user_by_email.phone,
            isAdmin : user_by_email.isAdmin
        });
    }else{
        return res.status(403).send({
            success : false,
            message : "Wrong password, Please enter correct password"
        });
    }

});

module.exports = route;