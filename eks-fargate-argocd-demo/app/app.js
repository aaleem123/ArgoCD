const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (_, res) => {
  res.send('Hello from EKS Fargate!');
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});

