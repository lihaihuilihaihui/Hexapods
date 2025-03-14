
"use strict";

let allLegPosition = require('./allLegPosition.js');
let bodyPos = require('./bodyPos.js');
let commands = require('./commands.js');
let legAngle = require('./legAngle.js');
let bodyTwist = require('./bodyTwist.js');
let footPosition = require('./footPosition.js');

module.exports = {
  allLegPosition: allLegPosition,
  bodyPos: bodyPos,
  commands: commands,
  legAngle: legAngle,
  bodyTwist: bodyTwist,
  footPosition: footPosition,
};
