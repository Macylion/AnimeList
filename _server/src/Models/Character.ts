import { DataTypes, Model } from 'sequelize';
import db from './Database';

class Character extends Model {
	public id!: number;
	// public humanId!: number;

	public firstName!: string;
	public lastName!: string;
	public description!: string;
	public isMain!: boolean;

	public readonly createdAt!: Date;
	public readonly updatedAt!: Date;
}

Character.init({
	id: {
		type: DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false,
	},
	// humanId: {
	// 	type: DataTypes.BIGINT,
	// 	allowNull: false,
	// 	field: "human_id",
	// 	key: "human_id",
	// },
	firstName: {
		type: DataTypes.STRING,
		allowNull: false,
		field: "first_name",
	},
	lastName: {
		type: DataTypes.STRING,
		allowNull: false,
		field: "last_name",
	},
	description: {
		type: DataTypes.STRING,
		allowNull: false,
	},
	isMain: {
		type: DataTypes.BOOLEAN,
		allowNull: false,
		field: "is_main",
	},
	createdAt: { 
		type: DataTypes.DATE,
		field: "created_at"
	},
	updatedAt: { 
		type: DataTypes.DATE,
		field: "updated_at"
	}
}, {
	tableName: "characters",
	timestamps: true,
	sequelize: db, 
});

//Character.belongsTo(Human);
//Character.hasOne(Human)

export default Character;