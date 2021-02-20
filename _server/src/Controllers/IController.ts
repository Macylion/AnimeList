export default interface IController {
	create(req, res);
	findAll(req, res);
	findOne(req, res);
	update(req, res);
	remove(req, res);
}