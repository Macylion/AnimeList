import { DataTypes, Model } from 'sequelize';
import db from './Database';

class Status extends Model {
	public id!: number;
	public name!: string;
	public isMain!: boolean;

	public readonly createdAt!: Date;
	public readonly updatedAt!: Date;
}

Status.init({
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
	createdAt: { 
		type: DataTypes.DATE,
		field: "created_at"
	},
	updatedAt: { 
		type: DataTypes.DATE,
		field: "updated_at"
	}
}, {
	tableName: "statuses",
	timestamps: true,
	sequelize: db,
});

export default Status;