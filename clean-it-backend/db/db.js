const mongoose = require('mongoose');

module.exports = async function (){
    try{
        await mongoose.connect(
            "mongodb+srv://cleanitadmin:Qwerty123@cluster0.hhpax.mongodb.net/myFirstDatabase?retryWrites=true&w=majority",
            {
                useNewUrlParser: true,
                useUnifiedTopology: true
            }
        );
        console.log("Database connection established..");
    }catch(ex){
        console.log(ex);
    }
}