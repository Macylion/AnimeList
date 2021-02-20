import { Sequelize } from 'sequelize';
import dbConfig from '../Config/Database';
export default new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
	host: dbConfig.HOST,
	dialect: 'mysql',
	//operatorsAliases: false,

	// pool: {
	// 	max: 5,
	// 	min: 0,
	// 	acquire: 30000,
	// 	idle: 10000
	// },
});