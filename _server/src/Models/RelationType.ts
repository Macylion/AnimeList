import { DataTypes, Model } from 'sequelize';
import db from './Database';

class RelationType extends Model {
	public id!: number;
	public parentName!: string;
	public childName!: string;

	public readonly createdAt!: Date;
	public readonly updatedAt!: Date;
}

RelationType.init({
	id: {
		type: DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false,
	},
	parentName: {
		type: DataTypes.STRING,
		allowNull: false,
		field: "parent_name"
	},
	childName: {
		type: DataTypes.STRING,
		allowNull: false,
		field: "child_name"
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
	sequelize: db,
	tableName: "relation_types",
	timestamps: true,
})

export default RelationType;