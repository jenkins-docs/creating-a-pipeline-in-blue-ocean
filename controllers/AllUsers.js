'use strict';

var url = require('url');


var AllUsers = require('./AllUsersService');


module.exports.authorsGET = function authorsGET (req, res, next) {
  AllUsers.authorsGET(req.swagger.params, res, next);
};

module.exports.authorsIdGET = function authorsIdGET (req, res, next) {
  AllUsers.authorsIdGET(req.swagger.params, res, next);
};

module.exports.booksGET = function booksGET (req, res, next) {
  AllUsers.booksGET(req.swagger.params, res, next);
};

module.exports.booksIdGET = function booksIdGET (req, res, next) {
  AllUsers.booksIdGET(req.swagger.params, res, next);
};
