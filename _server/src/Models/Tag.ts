import { DataTypes, Model } from 'sequelize';
import db from './Database';

class Tag extends Model {
	public id!: number;
	public name!: string;
	public isMain!: boolean;

	public readonly createdAt!: Date;
	public readonly updatedAt!: Date;
}

Tag.init({
	id: {
		type: DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false,
	},
	name: {
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
	tableName: "tags",
	timestamps: true,
	sequelize: db, 
});

export default Tag;