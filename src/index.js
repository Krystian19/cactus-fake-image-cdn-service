const path = require('path');
const express = require('express');
const cors = require('cors');
const logger = require('morgan');
const app = express();
const PORT = process.env.SERVER_PORT || 3000;

app.use(cors());
app.use(logger('dev'));

app.use(express.static(path.resolve(__dirname, 'img')));

app.listen(PORT, () => {
  console.log(`App listening @ port ${PORT}`)
});
