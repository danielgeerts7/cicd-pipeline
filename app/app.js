const express = require('express');
const functions = require('./functions')
const app = express();


app.get('/', function (req, res) {
  let result = functions.catString('Hello', 'world', '!')
  res.send(result + ' Daniël was here!');
});

app.get('/demo', function (req, res) {
  let result = functions.catString('This', 'is', 'my', 'beautiful' ,'demo')
  res.send(result);
});

app.get('/test', function (req, res) {
  let result = functions.catString('T', 'E', 'S', 'T' ,'I', 'N', 'G')
  res.send(result);
});

app.get('/audience', function (req, res) {
  let result = functions.catString('Audience', 'was', 'here', '!')
  res.send(result);
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
