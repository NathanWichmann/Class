// creates the sequelize 
const Sequelize = require('sequelize');
//creates the .env varable 
require('dotenv').config();
//changable variable 
let sequelize;
//if using the jaws use jaws if unavailable use sequelize and creates these .env variables 
if (process.env.JAWSDB_URL) {
  sequelize = new Sequelize(process.env.JAWSDB_URL);
} else {
  sequelize = new Sequelize(
    process.env.DB_NAME,
    process.env.DB_USER,
    process.env.DB_PASSWORD,
    {
      host: 'localhost',
      dialect: 'mysql',
      port: 3306
    }
  );
}
//exports sequelize 
module.exports = sequelize;
