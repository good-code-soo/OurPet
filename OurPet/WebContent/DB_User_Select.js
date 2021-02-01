/**
 * http://usejsdoc.org/
 */

var mysql = require('mysql');
var connection = mysql.createConnection({
	host:'127.0.0.1'
		,user:'root'
		,password:'new1234'
});

connection.connect();
connection.query('ourpet');
connection.query('select count(*) from tb_user')
connection.end();