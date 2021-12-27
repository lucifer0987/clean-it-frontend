const { Router } = require('express');
const express = require('express');
const route = express.Router();
const { Pickup, validatePickup } = require('../models/Pickup');
const Joi = require('joi');

route.post('/schedule', async (req, res) => {
    const {error} = validatePickup(req.body);
    if(error){
        return res.status(400).send({
            success : false,
            message : error.details[0].message
        });
    }
    
    let pickup = new Pickup({
        email : req.body.email,
        name : req.body.name,
        address1 : req.body.address1,
        phone : req.body.phone,
        price : req.body.price,
        pincode : req.body.pincode,
        state : req.body.state, 
        city : req.body.city,
        pickupdate : req.body.pickupdate,
        pickuptime : req.body.pickuptime,
        items : req.body.items,
        status : req.body.status
    });

    const new_pickup = await pickup.save();
    return res.status(200).send({
        success : true,
        message : "your request has been approved",
        ID : new_pickup._id
    });

});

route.post('/update', async (req, res) => {
    const {error} = validatePickup(req.body);
    if(error){
        return res.status(400).send({
            success : false,
            message : error.details[0].message
        });
    }

    let pickup = new Pickup({
        email : req.body.email,
        name : req.body.name,
        address1 : req.body.address1,
        phone : req.body.phone,
        price : req.body.price,
        pincode : req.body.pincode,
        state : req.body.state, 
        city : req.body.city,
        pickupdate : req.body.pickupdate,
        pickuptime : req.body.pickuptime,
        items : req.body.items,
        status : req.body.status
    });

    let pickup_by_items = await Pickup.findOne({items: req.body.items, email: req.body.email});
    if(!pickup_by_items){
        return res.status(401).send({
            success : false,
            message : "This order doesn't exist"
        });
    }

    pickup_by_items.status = req.body.status;
    pickup_by_items.save();

    return res.status(200).send({
        success : true,
        message : "your order has been updated",
        ID : pickup_by_items._id
    });

});

route.post('/list', async (req, res) => {
    const schema = {
        email : Joi.string().email().required()
    };
    const { error } = Joi.validate(req.body, schema);
    if(error){
        return res.status(400).send({
            success : false,
            message : error.details[0].message
        });
    }

    const pickups = await Pickup.find({email: req.body.email});
    return res.status(200).send({
        count : pickups.length,
        data : pickups
    });

});



module.exports = route