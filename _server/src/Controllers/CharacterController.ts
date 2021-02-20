import Character from "../Models/Character";
import Controller from "./Controller";

class CharacterController extends Controller {
	constructor(model) {
		super(model);
		this.includes = ["human"];
	}
}

export default new CharacterController(Character);