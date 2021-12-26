const mongoose = require('mongoose');
const Joi = require('joi');

const userSchema = mongoose.Schema({
    name : {type: String, min: 0, max: 255, required: true},
    email : {type: String, min: 5, max: 255, required: true},
    phone : {type: String, min: 10, max: 10, required: true},
    password : {type: String, min: 8, max: 255, required: true},
    isAdmin : {type: Boolean, default: false, required: true}
});

const User = new mongoose.model("users", userSchema);

function validateUser(user){
    const schema = {
        name : Joi.string().min(0).max(255).required(),
        email : Joi.string().email().required(),
        phone : Joi.string().min(10).max(10).required(),
        password : Joi.string().min(8).max(255).required(),
        isAdmin : Joi.boolean().required()
    };
    return Joi.validate(user, schema);
}

function validateLogin(Email, Password){
    const schema = {
        email : Joi.string().email().required(),
        password : Joi.string().min(8).max(255).required()
    };
    return Joi.validate({email: Email, password: Password}, schema);
}

module.exports.User = User;
module.exports.validateUser = validateUser;
module.exports.validateLogin = validateLogin;