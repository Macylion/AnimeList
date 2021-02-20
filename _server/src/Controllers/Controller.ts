import IController from './IController';

class Controller implements IController {
	public model;
	protected includes;

	constructor(model) {
		this.model = model;
		this.includes = [];
	}
	
	public create(req, res) {
		this.model.create(req.body, {
			include: [...this.includes]
		})
			.then(data => res.send(data))
			.catch(err => res.send({ error: err.errors[0].message } ))
	}
	public findAll(req, res) {
		this.model.findAll({
			include: [...this.includes]
		})
			.then( data => res.send(data));
	}
	public findOne(req, res) {
		const Id = req.params.id;
		this.model.findByPk(Id, {
			include: [...this.includes]
		})
			.then( data => res.send(data) );
	}
	public update(req, res) {
		const data = req.body;
		this.model.findByPk(req.params.id)
			.then( data => {
				data.update(data)
				.then( data => res.send(data) )
				.catch(e => res.send(e) )
			})
			.catch(e => res.send(e) )
	}
	public remove(req, res) {
		this.model.findByPk(req.params.id)
			.then( data => data.destroy())
			.then( data => res.send(data) )
			.catch(e => res.send(e) )
	}
}

export default Controller;