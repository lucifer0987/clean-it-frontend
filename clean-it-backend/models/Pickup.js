const mongoose = require('mongoose');
const Joi = require('joi');

const PickupSchema = mongoose.Schema({
    email : {type: String, min: 5, max: 255, required: true},
    name : {type:String, min: 1, max: 255, required: true},
    price : {type:String, min: 1, max: 255, required: true},
    address1 : {type:String, min: 1, max: 255, required: true},
    phone : {type: String, min: 10, max: 10, required: true},
    pincode : {type:String, min: 6, max: 6, required: true},
    city : {type:String, min: 1, max: 255, required: true},
    state : {type:String, min: 1, max: 255, required: true},
    items : {type: [], required: true},
    status : {type: [], required: true},
    pickupdate : {type: String, required: true},
    pickuptime : {type: String, required: true}
});

const Pickup = new mongoose.model("Pickup", PickupSchema);

function validatePickup(pickup){
    const schema = {
        email : Joi.string().email().required(),
        name : Joi.string().min(1).max(255).required(),
        price : Joi.string().min(1).max(255).required(),
        address1 : Joi.string().min(1).max(255).required(),
        phone : Joi.string().min(10).max(10).required(),
        pincode : Joi.string().min(6).max(6).required(),
        city : Joi.string().min(1).max(255).required(),
        state : Joi.string().min(1).max(255).required(),
        items : Joi.array().required(),
        status : Joi.array().required(),
        pickupdate : Joi.string().min(1).max(255).required(),
        pickuptime : Joi.string().min(1).max(255).required(),
    }

    return Joi.validate(pickup, schema);
}


module.exports.Pickup = Pickup
module.exports.validatePickup = validatePickup