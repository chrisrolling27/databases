var db = require('../db');

module.exports = {
  getAll: function () {},
  create: function (load, callback) {
    const { username, message, roomname } = load;
    const usernameQ =  `INSERT INTO users (username) VALUES ('${username}')`;
    db.query(usernameQ, [], function(err) {
        if (err) {
          throw err;
        } else {
          const roomnameQ = `INSERT INTO rooms (roomname) VALUES ('${roomname}')`;

          db.query(roomnameQ, [], function(err) {
            if (err) {
              throw err;
            } else {
              const messageQ = `INSERT INTO messages (id_users, id_rooms text) VALUES ('${roomnameQ}, ${messageQ}, ${message}')`;
              db.query(messageQ, [], function(err) {
                if (err) {
                  throw err;
                } else {
                  callback(null, messageQ);
                }
              });
            }
          });

        }
         // results contains rows returned by server
         // fields contains extra meta data about results, if available
      }
    );
  }
};