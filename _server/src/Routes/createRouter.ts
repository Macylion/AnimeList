import CharacterController from "../Controllers/CharacterController";
import FormatController from "../Controllers/FormatController";
import HumanController from "../Controllers/HumanController";
import MediaTypesController from "../Controllers/MediaTypesController";
import MediumController from "../Controllers/MediumController";
import RelationTypeController from "../Controllers/RelationTypeController";
import SeasonController from "../Controllers/SeasonController";
import StatusController from "../Controllers/StatusController";
import StudioController from "../Controllers/StudioController";
import TagController from "../Controllers/TagController";
import createRoutes from "./createRoutes";

export default function (app) {
	createRoutes(app, 'tags', TagController);
	createRoutes(app, 'formats', FormatController);
	createRoutes(app, 'relationtypes', RelationTypeController);
	createRoutes(app, 'mediatypes', MediaTypesController);
	createRoutes(app, 'seasosn', SeasonController);
	createRoutes(app, 'studios', StudioController);
	createRoutes(app, 'statuses', StatusController);
	createRoutes(app, 'humans', HumanController);
	createRoutes(app, 'characters', CharacterController);
	createRoutes(app, 'media', MediumController);
}