const User = require('../models/user'); 
const bcrypt = require('bcrypt');



exports.register = async (req, res) => {
    const { email, password } = req.body;

    try {
       
        const existingUser = await User.findByEmail(email);
        if (existingUser) {
            return res.status(400).json({ message: 'Пользователь уже существует' });
        }

     
        const passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
        if (!passwordRegex.test(password)) {
            return res.status(400).json({
                message: 'Пароль должен содержать не менее 8 символов, включая заглавную букву, цифру и специальный символ'
            });
        }

  
        const hashedPassword = await bcrypt.hash(password, 10);
        
     
        await User.create(email, hashedPassword);

        return res.status(201).json({ message: 'Пользователь успешно зарегистрирован' });
    } catch (error) {
        console.error('Ошибка регистрации:', error); 
        return res.status(500).json({ message: 'Ошибка сервера', error: error.message }); 
    }
};


exports.login = async (req, res) => {
    const { email, password } = req.body;

    try {
        
        const user = await User.findByEmail(email);
        if (!user) {
            return res.status(401).json({ message: 'Неверные учетные данные' });
        }

    
        const isMatch = await bcrypt.compare(password, user.password);
        if (!isMatch) {
            return res.status(401).json({ message: 'Неверные учетные данные' });
        }

        return res.json({ message: 'Успешно вошли в систему' });
    } catch (error) {
        console.error('Ошибка входа:', error); 
        return res.status(500).json({ message: 'Ошибка сервера', error: error.message }); 
    }
};



