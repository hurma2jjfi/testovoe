const express = require('express');
const { register, login } = require('../controllers/AuthController');
const { check } = require('express-validator');

const router = express.Router();

router.post('/register', [
    check('email').isEmail().withMessage('Неправильная почта'),
    check('password').isLength({ min: 8 }).matches(/^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/).withMessage('Пароль должен содержать не менее 8 символов, включая заглавную букву, цифру и специальный символ')
], register);

router.post('/login', login);

module.exports = router;
