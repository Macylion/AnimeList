import { DataTypes, Model } from 'sequelize';
import db from './Database';

class Season extends Model {
	public id!: number;
	public seasonName!: string;
	public year!: number;
	public startDate!: Date;
	public endDate!: Date;

	public readonly createdAt!: Date;
	public readonly updatedAt!: Date;
}

Season.init({
	id: {
		type: DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false,
	},
	seasonName: {
		type: DataTypes.STRING,
		allowNull: false,
		field: "season_name"
	},
	year: {
		type: DataTypes.DATE,
		allowNull: false,
	},
	startDate: {
		type: DataTypes.DATE,
		allowNull: false,
		field: "start_date",
	},
	endDate: {
		type: DataTypes.DATE,
		allowNull: false,
		field: "end_date"
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
	tableName: "seasons",
	timestamps: true,
	sequelize: db,
});

export default Season;