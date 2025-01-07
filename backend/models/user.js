const db = require('../config/db');

class User {
    static create(email, password) {
        return new Promise((resolve, reject) => {
            db.query('INSERT INTO users (email, password) VALUES (?, ?)', [email, password], (err, result) => {
                if (err) return reject(err);
                resolve(result);
            });
        });
    }

    static findByEmail(email) {
        return new Promise((resolve, reject) => {
            db.query('SELECT * FROM users WHERE email = ?', [email], (err, result) => {
                if (err) return reject(err);
                resolve(result[0]);
            });
        });
    }
}

module.exports = User;
