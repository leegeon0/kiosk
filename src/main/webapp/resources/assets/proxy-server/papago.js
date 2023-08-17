
const express = require('express');
const request = require('request');
 
const app = express();
const PORT = 3000;

app.use(express.json());


app.use(( res, next) => {
    res.setHeader('Access-Control-Allow-Origin', 'http://localhost:8080');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
    next();
});

// 이후 라우트 및 서버 설정

app.post('/translate', (req, res) => {
    const url = 'https://openapi.naver.com/v1/papago/n2mt';
    const headers = {
        'X-Naver-Client-Id': '8090vN5qrPlrk0DF9HhJ',
        'X-Naver-Client-Secret': '1IAIwQE4Ku'
    };
    
    request.post({ url, headers, json: req.body }, (error, response, body) => {
        if (error) {
            res.status(500).json({ error: 'Internal server error' });
        } else {
            res.status(response.statusCode).json(body);
        }
    });
});

app.listen(PORT, () => {
    console.log(`Proxy server is running on port ${PORT}`);
});