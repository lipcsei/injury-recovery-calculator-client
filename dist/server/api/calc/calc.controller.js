'use strict';

var _ = require('lodash');

// Get list of calcs
exports.index = function (req, res) {


    res.json(req.body.time);
};


//function isWorks(date) {
//
//    var day = date.getDay();
//    var isWeekend = (day == 6) || (day == 0);
//    if (isWeekend) {
//        return false;
//    }
//    var actualHour = date.getHours();
//    if(actualHour< )
//
//}

