import { DataTypes, Model } from 'sequelize';
import Character from './Character';
import db from './Database';
import Format from './Format';
import MediaType from './MediaType';
import Season from './Seasons';
import Status from './Status';
import Studio from './Studio';
import Tag from './Tag';

class Medium extends Model {
	public id!: number;
	public titleRomanji!: string;
	public titleNative!: string;
	public titleEnglish!: string;
	public description!: string;
	public startDate!: Date;
	public endDate!: Date;
	public releaseDay!: Date;
	public score!: number;
	public episodes!: number;
	public scoreMal!: number;
	public scoreAni!: number;
	public favourites!: number;
	public favouritesMal!: number;
	public favouritesAni!: number;
	public avatarUrl!: string;
	public bannerUrl!: string;

	public readonly createdAt!: Date;
	public readonly updatedAt!: Date;
}

Medium.init({
	id: {
		type: DataTypes.BIGINT,
		primaryKey: true,
		autoIncrement: true,
		allowNull: false
	},
	titleRomanji: {
		type: DataTypes.STRING,
		allowNull: false,
		field: "title_romanji",
	},
	titleNative: {
		type: DataTypes.STRING,
		allowNull: false,
		field: "title_native",
	},
	titleEnglish: {
		type: DataTypes.STRING,
		allowNull: false,
		field: "title_english",
	},
	description: {
		type: DataTypes.STRING,
		allowNull: false,
	},
	startDate: {
		type: DataTypes.DATE,
		allowNull: false,
		field: "start_date"
	},
	endDate: {
		type: DataTypes.DATE,
		allowNull: false,
		field: "end_date"
	},
	releaseDay: {
		type: DataTypes.DATE,
		allowNull: false,
		field: "release_day"
	},
	score: {
		type: DataTypes.INTEGER,
		allowNull: false,
	},
	episodes: {
		type: DataTypes.INTEGER,
		allowNull: false,
	},
	scoreMal: {
		type: DataTypes.INTEGER,
		allowNull: false,
		field: "score_mal"
	},
	scoreAni: {
		type: DataTypes.INTEGER,
		allowNull: false,
		field: "score_ani"
	},
	favourites: {
		type: DataTypes.INTEGER,
		allowNull: false,
	},
	favouritesMal: {
		type: DataTypes.INTEGER,
		allowNull: false,
		field: "favourites_mal"
	},
	favouritesAni: {
		type: DataTypes.INTEGER,
		allowNull: false,
		field: "favourites_ani"
	},
	bannerUrl: {
		type: DataTypes.STRING,
		allowNull: false,
		field: "banner_url"
	},
	avatarUrl: {
		type: DataTypes.STRING,
		allowNull: false,
		field: "avatar_url"
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
	timestamps: true,
	tableName: "media",
	sequelize: db,
})

Format.hasMany(Medium, {
	foreignKey: "format_id",
	as: "media"
});
Medium.belongsTo(Format, {
	targetKey: "id",
	foreignKey: "format_id",
	as: "format"
});

MediaType.hasMany(Medium, {
	foreignKey: "media_type_id",
	as: "media",
})
Medium.belongsTo(MediaType, {
	targetKey: "id",
	foreignKey: "media_type_id",
	as: "mediaType"
});

Season.hasMany(Medium, {
	foreignKey: "season_id",
	as: "media",
});
Medium.belongsTo(Season, {
	targetKey: "id",
	foreignKey: "season_id",
	as: "season",
});

Status.hasMany(Medium, {
	foreignKey: "status_id",
	as: "media",
});
Medium.belongsTo(Status, {
	targetKey: "id",
	foreignKey: "status_id",
	as: "status",
});

Studio.hasMany(Medium, {
	foreignKey: "studio_id",
	as: "media",
});
Medium.belongsTo(Studio, {
	targetKey: "id",
	foreignKey: "studio_id",
	as: "studio"
});

/**
 * Remember to change updated_at and created_at
 * to updatedAt and createdAt
 * in 
 * medium_tags, characters_media
 * tables
 * not so sure how to get around with this
 */
Tag.belongsToMany(Medium, {
	through: "media_tags",
	as: "media",
	timestamps: false, //
	foreignKey: "tag_id",
});
Medium.belongsToMany(Tag, {
	through: "media_tags",
	as: "tags",
	timestamps: false, //
	foreignKey: "medium_id"
});

Character.belongsToMany(Medium, {
	through: "characters_media",
	as: "media",
	timestamps: false, //
	foreignKey: "character_id"
});
Medium.belongsToMany(Character, {
	through: "characters_media",
	as: "characters",
	timestamps: false, //
	foreignKey: "medium_id"
});

Medium.belongsToMany(Medium, {
	through: "relations",
	as: "parentMedia",
	timestamps: false,
	foreignKey: "child_media_id",
});
Medium.belongsToMany(Medium, {
	through: "relations",
	as: "childMedia",
	timestamps: false,
	foreignKey: "parent_media_id",
});

export default Medium;