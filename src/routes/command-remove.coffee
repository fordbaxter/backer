util = require '../lib/util'
exec = require('child_process').exec
filters = require '../lib/filters'

module.exports = (req, res) ->
	(req, res) ->
		exec 'rm -f ' +  util.makePath(req.body.key), (err) ->
			res.send err ? 500 : 200