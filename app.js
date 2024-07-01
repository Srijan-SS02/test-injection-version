const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  const version = process.env.VERSION || 'Unknown';
  res.send(`Hello, world! Version: ${version}`);
});

app.listen(port, () => {
  console.log(`App running on http://localhost:${port}`);
});
