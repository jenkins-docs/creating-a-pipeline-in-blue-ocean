'use strict';

exports.authorsGET = function(args, res, next) {
  /**
   * parameters expected in the args:
  * first_name (String)
  * last_name (String)
  **/
    var examples = {};
  examples['application/json'] = {
  "results" : [ {
    "id" : "254",
    "first_name" : "George R.R.",
    "last_name" : "Martin",
    "_link" : "/authors/254"
  }, {
    "id" : "255",
    "first_name" : "Frank",
    "last_name" : "Herbert",
    "_link" : "/authors/255"
  }, {
    "id" : "256",
    "first_name" : "Andy",
    "last_name" : "Weir",
    "_link" : "/authors/256"
  } ],
  "status" : 200
};
  if(Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  }
  else {
    res.end();
  }
  
}

exports.authorsIdGET = function(args, res, next) {
  /**
   * parameters expected in the args:
  * id (Integer)
  **/
    var examples = {};
  examples['application/json'] = {
  "result" : {
    "_link" : "/authors/254",
    "last_name" : "Martin",
    "id" : 254,
    "first_name" : "George R.R."
  },
  "status" : 200
};
  if(Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  }
  else {
    res.end();
  }
  
}

exports.booksGET = function(args, res, next) {
  /**
   * parameters expected in the args:
  * title (String)
  * author (String)
  **/
    var examples = {};
  examples['application/json'] = {
  "results" : [ {
    "id" : "101",
    "title" : "A Game of Thrones",
    "author_id" : 254,
    "_link" : "/books/101"
  }, {
    "id" : "102",
    "title" : "A Clash of Kings",
    "author_id" : 254,
    "_link" : "/books/102"
  }, {
    "id" : "103",
    "title" : "A Storm of Swords",
    "author_id" : 254,
    "_link" : "/books/103"
  }, {
    "id" : "104",
    "title" : "A Feast for Crows",
    "author_id" : 254,
    "_link" : "/books/104"
  } ],
  "status" : 200
};
  if(Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  }
  else {
    res.end();
  }
  
}

exports.booksIdGET = function(args, res, next) {
  /**
   * parameters expected in the args:
  * id (Integer)
  **/
    var examples = {};
  examples['application/json'] = {
  "result" : {
    "_link" : "/books/105",
    "author" : {
      "_link" : "/authors/254",
      "last_name" : "Martin",
      "id" : 254,
      "first_name" : "George R.R."
    },
    "description" : "From a master of contemporary fantasy comes the first novel of a landmark series...",
    "id" : 105,
    "title" : "A Game of Thrones"
  },
  "status" : 200
};
  if(Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  }
  else {
    res.end();
  }
  
}

