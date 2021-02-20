import Format from "../Models/Format";
import Controller from "./Controller";

class FormatController extends Controller {
	constructor(model) {
		super(model);
		//this.includes = ["media"];
	}
}

export default new FormatController(Format);