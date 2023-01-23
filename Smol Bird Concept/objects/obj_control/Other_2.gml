/// @description spirte enums

// player states

enum playerState {
	idle,
	walking,
	pickingUp,
	whistle,
	SitDown,
}


// NPC progression starts at 0
global.hasMetFrog = false;
global.hasMetBadger = false;
global.hasMetBeaver = false;
global.heardOfBeaver = false
global.frogFeather = false;
global.badgerFeather = false;
global.beaverFeather = false;
global.momFeather = false;
global.beaverTwigs = false;
global.beaverFinal = false;
global.badgerFinal = false;


global.targetRoom = -1;
global.targetX= -1;
global.targetY= -1;
global.targetDirection= 0;
global.mudAmount = 0;
global.grassAmount = 0;
global.twigAmount = 0;
global.constructed = false; 