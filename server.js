const express = require('express');
const hbs = require('express-handlebars');
var formidable = require('formidable');
const path = require('path');

const app = express();
const port = 8000;

let manager = [];
let track = 0;

app.set('views', path.join(__dirname, 'views'));
app.engine('hbs', hbs({ defaultLayout: 'main.hbs' }));
app.set('view engine', 'hbs');
app.use(express.static(path.join(__dirname, 'static')));

app.get('/', (req, res) => {
  res.render('upload.hbs');
});

app.get('/manager', (req, res) => {
  const context = {
    files: [],
  };

  manager.map((file, index) => {
    let imgPath = '';

    switch (file.type) {
      case 'image/png':
        imgPath = 'png.svg';
        break;
      case 'video/mp4':
        imgPath = 'mp4.svg';
        break;
      case 'application/zip':
        imgPath = 'zip.svg';
        break;
      default:
        imgPath = 'idk.svg';
        break;
    }

    context.files.push({
      id: file.ID,
      name: file.name,
      size: file.size,
      type: file.type,
      img: imgPath,
    });
  });

  res.render('filemanager.hbs', context);
});

app.get('/info/:id', (req, res) => {
  const file = manager.find((file) => file.ID === parseInt(req.params.id));
  const context = {
    id: file.ID,
    name: file.name,
    path: file.path,
    size: file.size,
    type: file.type,
    savedate: new Date(file.lastModifiedDate).getTime(),
  };

  res.render('info.hbs', context);
});

app.get('/down/:id', (req, res) => {
  const file = manager.find((file) => file.ID === parseInt(req.params.id));

  res.sendFile(file.path);
});

app.get('/delete', (req, res) => {
  manager = [];
  res.redirect('/manager');
});

app.post('/file', (req, res) => {
  let form = formidable({});
  form.uploadDir = __dirname + '/static/upload/'; // folder do zapisu zdjęcia
  form.keepExtensions = true;
  form.multiples = true;

  form.parse(req, function (err, fields, files) {
    if (Array.isArray(files.files)) {
      files.files.map((file) => {
        manager.push({
          ID: track,
          ...file,
        });
        track++;
      });
    } else {
      manager.push({
        ID: track,
        ...files.files,
      });
      track++;
    }

    res.render('upload.hbs');
  });
});

app.get('/delete/:id', (req, res) => {
  manager = manager.filter((file) => file.ID !== parseInt(req.params.id));
  res.redirect('/manager');
});

app.listen(port, () => {
  console.log(`Server started on ${port}`);
});
