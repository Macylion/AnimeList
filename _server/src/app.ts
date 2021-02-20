import bodyParser from 'body-parser';
import express from 'express';
import db from './Models/Database';
import createRouter from './Routes/createRouter';

const app = express();
const port = 3000;


//app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())
app.use(function (error, req, res, next) {
	if (error instanceof SyntaxError) {
		console.error('[ERROR] Syntax Error')
		res.send({ error: "Syntax Error", msg: "Probably json is invalid" })
	}
	else next();
});
 
createRouter(app);

db.authenticate()
	.then(() => console.log('Database connection established.'))

app.listen(port, () => {
	return console.log(`server is listening on ${port}`);
});
