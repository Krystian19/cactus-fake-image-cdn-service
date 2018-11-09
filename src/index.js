const path = require('path');
const express = require('express');
const app = express();
const PORT = process.env.SERVER_PORT || 3000;

app.use(express.static(path.resolve(__dirname, 'img')));

app.listen(PORT, () => {
  console.log(`App listening @ port ${PORT}`)
});
