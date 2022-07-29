const express = require('express');
const tf = require("@tensorflow/tfjs");
const tfn = require("@tensorflow/tfjs-node");

const app = express();

app.use(express.json({limit: '30mb'}))

const port = process.env.PORT || 3000;

const handler = tfn.io.fileSystem('./ai_model/hackbiz-js/model.json');

let model;

(async () => {
  const models = await tf.loadLayersModel(handler);
  return models
})().then((data) => { console.log('Model loaded'); model = data; })


app.get('/', (req, res) => {
  res.send('Hello World!');
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
})

app.post('/predict-meal', (req, res) => {
  try {
    if (!model)
      return res.status(500).send('Model not loaded');
    const { image } = req.body; //Image dalam bentuk base64
    const b = Buffer.from(image, 'base64')
    // get the tensor
    const tensorImage = tfn.node.decodeImage(b).resizeBilinear([224, 224]).toFloat().div(tf.scalar(255)).expandDims(0);
    (async () => {
      const prediction = await model.predict(tensorImage);
      const result = prediction;
      let list_prob = result.dataSync().toString().split(',');
      let res_obj = [{
        'class_name': "Eatable",
        'probability': list_prob[0]
      },
      {
        'class_name': "Uneatable",
        'probability': list_prob[1]
      }]
      res.send(res_obj);

      return result
    })()
  }
  catch (err) {
    res.status(500).send(err);
  }
})