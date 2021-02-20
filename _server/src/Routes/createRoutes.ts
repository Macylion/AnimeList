import IController from './../Controllers/IController';

export default  function createRoutes(app: any, routeName: string,controller: IController) {
	app.post(`/api/${routeName}`, (req, res) => controller.create(req, res));
	app.get(`/api/${routeName}`, (req, res) => controller.findAll(req, res));
	app.get(`/api/${routeName}/:id`, (req, res) => controller.findOne(req, res));
	app.put(`/api/${routeName}/:id`, (req, res) => controller.update(req, res));
	app.delete(`/api/${routeName}/:id`, (req, res) => controller.remove(req, res));
}