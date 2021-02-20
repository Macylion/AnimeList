import Medium from "../Models/Medium";
import Controller from "./Controller";

class MediumController extends Controller {
	constructor(model) {
		super(model);
		this.includes = ["format", "mediaType", "season", "status", "studio", "tags", "characters", "parentMedia", "childMedia"];
	}
}

export default new MediumController(Medium);