var models = require('../models');

module.exports = {
  get: function (req, res) {},
  post: function (req, res) {
    console.log('waiter post user', req.body);
    models.users.create(req.body.username, () => {});
    res.end('something');
}}