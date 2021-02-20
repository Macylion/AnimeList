import Human from "../Models/Human";
import Controller from "./Controller";

class HumanController extends Controller {
	constructor(model) {
		super(model);
		this.includes = ["characters"];
	}
}

export default new HumanController(Human);