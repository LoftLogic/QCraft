const express = require('express');
const axios = require('axios');

const app = express();

const port = 3000;

//Parses JSON bodies in incoming requests
app.use(express.json());

//POST endpoint at path "/send-text"
app.post('/send-text', async (req, res) => {
    //Extract text from the request body
    const { text } = req.body;

    //Throw an error if no text was retrieved
    if (!text) {
        return res.status(400).send("INCLUDE TEXT");
    }

    try {
        // Make a post request to the SQL Coder Query with the provided text
        const response = await axios.post('http://localhost:8002/query-data', { text });
        
        // Send back the response data
        res.json(response.data);
        
    }
    catch (error) {
        // If there is an error, log in in console and send a error response
        console.log("ERROR: ", error);
        res.status(500).send("An error occured");
    }
});
