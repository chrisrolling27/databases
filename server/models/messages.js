var db = require('../db');

module.exports = {

  getAll: function (callback) {
    // A JOIN clause is used to combine rows from two or more tables, based on a related column between them.



    console.log('---->',db.query());

  }, // a function which produces all the messages
  create: function () {} // a function which can be used to insert a message into the database
};
