import { DataTypes, Model } from 'sequelize';
import Character from './Character';
import db from './Database';

class Human extends Model {
	public id!: number;
	public firstName!: string;
	public lastName!: string;
	public description!: string;

	public readonly createdAt!: Date;
	public readonly updatedAt!: Date;
}

Human.init({
	id: {
		type: DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false,
	},
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
	createdAt: { 
		type: DataTypes.DATE,
		field: "created_at"
	},
	updatedAt: { 
		type: DataTypes.DATE,
		field: "updated_at"
	}
}, {
	tableName: "humans",
	timestamps: true,
	sequelize: db, 
});

Human.hasMany(Character, {
	foreignKey: "human_id",
	as: "characters",
});
Character.belongsTo(Human, {
	targetKey: "id",
	foreignKey: "human_id",
	as: "human"
});

export default Human;