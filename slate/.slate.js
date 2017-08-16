//my config file

var padding = 4;

var pushRight = slate.operation("push", {
  "direction" : "right",
  "style" : "bar-resize:screenSizeX/2"
});

var pushLeft = slate.operation("push", {
  "direction" : "left",
  "style" : "bar-resize:screenSizeX/2"
});

var pushTop = slate.operation("push", {
  "direction" : "top",
  "style" : "bar-resize:screenSizeY/2"
});

var pushBottom = slate.operation("push", {
  "direction" : "bottom",
  "style" : "bar-resize:screenSizeY/2"
});

var pushLeftSmall = slate.operation("push", {
  "direction" : "left",
  "style" : "bar-resize:screenSizeX/4"
});

var pushRightSmall = slate.operation("push", {
  "direction" : "right",
  "style" : "bar-resize:screenSizeX/4"
});

var pushMid = slate.operation("move", {
  "x" : "screenOriginX+screenSizeX/4",
  "y" : "screenOriginY",
  "width" : "screenSizeX/2",
  "height" : "screenSizeY"
});

var pushMidSmall = slate.operation("move", {
  "x" : "screenOriginX+screenSizeX/4",
  "y" : "screenOriginY",
  "width" : "80",
  "height" : "120"
});

var pushFull = slate.operation("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX",
  "height" : "screenSizeY"
});

var pushFullish = slate.operation("move", {
    "x" : "screenOriginX + (screenSizeX * 0.1)",
    "y" : "screenOriginY + (screenSizeY * 0.1)",
    "width" : "screenSizeX * 0.8",
    "height" : "screenSizeY * 0.8"
});

var topLeft = slate.operation("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX/2",
  "height" : "screenSizeY/2"
});

var topRight = slate.operation("move", {
  "x" : "screenOriginX + (screenSizeX/2)",
  "y" : "screenOriginY",
  "width" : "screenSizeX/2",
  "height" : "screenSizeY/2"
});

var bottomLeft = slate.operation("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY + (screenSizeY/2)",
  "width" : "screenSizeX/2",
  "height" : "screenSizeY/2"
});

var bottomRight = slate.operation("move", {
  "x" : "screenOriginX + (screenSizeX/2)",
  "y" : "screenOriginY + (screenSizeY/2)",
  "width" : "screenSizeX/2",
  "height" : "screenSizeY/2"
});

var topLeft2 = slate.operation("move", {
  "x":"screenOriginX + " + padding,
  "y":"screenOriginY + " + padding,
  "width":"(screenSizeX/2) - " + (padding*2),
  "height":"(screenSizeY/2) - " + (padding*2)
});

var topRight2 = slate.operation("move", {
  "x" : "(screenOriginX + (screenSizeX/2)) + " + padding,
  "y" : "screenOriginY + " + padding,
  "width" : "(screenSizeX/2) - " + (padding*2),
  "height" : "(screenSizeY/2) - " + (padding*2)
});

var bottomLeft2 = slate.operation("move", {
  "x" : "screenOriginX + " + padding,
  "y" : "(screenOriginY + (screenSizeY/2)) + " + padding,
  "width" : "(screenSizeX/2) - " + (padding*2),
  "height" : "(screenSizeY/2) - " + (padding*2)
});

var bottomRight2 = slate.operation("move", {
  "x" : "(screenOriginX + (screenSizeX/2)) + " + padding,
  "y" : "(screenOriginY + (screenSizeY/2)) + " + padding,
  "width" : "(screenSizeX/2) - " + (padding*2),
  "height" : "(screenSizeY/2) - " + (padding*2)
});

var relaunchOp = slate.operation("relaunch", {});

// Boom

var Pad1 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 0) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 0) + " + padding,
  "width":"(screenSizeX/3) - " + (padding),
  "height":"(screenSizeY/3) - " + (padding)
});

var Pad2 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 1) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 0) + " + padding,
  "width":"(screenSizeX/3) - " + (padding),
  "height":"(screenSizeY/3) - " + (padding)
});

var Pad3 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 2) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 0) + " + padding,
  "width":"(screenSizeX/3) - " + (padding),
  "height":"(screenSizeY/3) - " + (padding)
});

var Pad4 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 0) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 1) + " + padding,
  "width":"(screenSizeX/3) - " + (padding),
  "height":"(screenSizeY/3) - " + (padding)
});

var Pad5 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 1) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 1) + " + padding,
  "width":"(screenSizeX/3) - " + (padding),
  "height":"(screenSizeY/3) - " + (padding)
});

var Pad6 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 2) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 1) + " + padding,
  "width":"(screenSizeX/3) - " + (padding),
  "height":"(screenSizeY/3) - " + (padding)
});

var Pad7 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 0) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 2) + " + padding,
  "width":"(screenSizeX/3) - " + (padding),
  "height":"(screenSizeY/3) - " + (padding)
});

var Pad8 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 1) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 2) + " + padding,
  "width":"(screenSizeX/3) - " + (padding),
  "height":"(screenSizeY/3) - " + (padding)
});

var Pad9 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 2) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 2) + " + padding,
  "width":"(screenSizeX/3) - " + (padding),
  "height":"(screenSizeY/3) - " + (padding)
});

var Pad147 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 0) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 0) + " + padding,
  "width":"(screenSizeX/3) - " + (padding),
  "height":"(screenSizeY) - " + (padding)
});
var Pad258 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 1) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 0) + " + padding,
  "width":"(screenSizeX/3) - " + (padding),
  "height":"(screenSizeY) - " + (padding)
});
var Pad369 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 2) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 0) + " + padding,
  "width":"(screenSizeX/3) - " + (padding),
  "height":"(screenSizeY) - " + (padding)
});

var Pad123 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 0) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 0) + " + padding,
  "width":"(screenSizeX) - " + (padding),
  "height":"(screenSizeY/3) - " + (padding)
});
var Pad456 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 0) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 1) + " + padding,
  "width":"(screenSizeX) - " + (padding),
  "height":"(screenSizeY/3) - " + (padding)
});
var Pad789 = slate.operation("move", {
  "x":"screenOriginX + ((screenSizeX/3) * 0) + " + padding,
  "y":"screenOriginY + ((screenSizeY/3) * 2) + " + padding,
  "width":"(screenSizeX) - " + (padding),
  "height":"(screenSizeY/3) - " + (padding)
});

slate.bind("8:ctrl,alt,cmd", function(win) { win.doOperation(Pad1); });
slate.bind("9:ctrl,alt,cmd", function(win) { win.doOperation(Pad2); });
slate.bind("0:ctrl,alt,cmd", function(win) { win.doOperation(Pad3); });
slate.bind("i:ctrl,alt,cmd", function(win) { win.doOperation(Pad4); });
slate.bind("o:ctrl,alt,cmd", function(win) { win.doOperation(Pad5); });
slate.bind("p:ctrl,alt,cmd", function(win) { win.doOperation(Pad6); });
slate.bind("k:ctrl,alt,cmd", function(win) { win.doOperation(Pad7); });
slate.bind("l:ctrl,alt,cmd", function(win) { win.doOperation(Pad8); });
slate.bind(";:ctrl,alt,cmd", function(win) { win.doOperation(Pad9); });

slate.bind("7:ctrl,alt,cmd", function(win) { win.doOperation(Pad147); });
slate.bind("u:ctrl,alt,cmd", function(win) { win.doOperation(Pad258); });
slate.bind("j:ctrl,alt,cmd", function(win) { win.doOperation(Pad369); });

slate.bind("6:ctrl,alt,cmd", function(win) { win.doOperation(Pad123); });
slate.bind("y:ctrl,alt,cmd", function(win) { win.doOperation(Pad456); });
slate.bind("h:ctrl,alt,cmd", function(win) { win.doOperation(Pad789); });

// end boom

slate.bind("left:ctrl,alt,cmd", function(win) { win.doOperation(pushLeft); });
slate.bind("right:ctrl,alt,cmd", function(win) { win.doOperation(pushRight); });
slate.bind("m:shift,ctrl,alt,cmd", function(win) { win.doOperation(pushFullish); });
slate.bind("m:ctrl,alt,cmd", function(win) { win.doOperation(pushFull); });
slate.bind("up:ctrl,alt,cmd", function(win) { win.doOperation(pushTop); });
slate.bind("down:ctrl,alt,cmd", function(win) { win.doOperation(pushBottom); });

// 4-corners
slate.bind("left:shift,ctrl,alt,cmd", function(win) { win.doOperation(topLeft); });
slate.bind("up:shift,ctrl,alt,cmd", function(win) { win.doOperation(topRight); });
slate.bind("right:shift,ctrl,alt,cmd", function(win) { win.doOperation(bottomRight); });
slate.bind("down:shift,ctrl,alt,cmd", function(win) { win.doOperation(bottomLeft); });

var move_mon = function(win, addr) {
    var cur_rect = win.screen().rect();

    var count = slate.screenCount();
    var index = win.screen().id();
    
    addr = parseInt(addr);
    index = parseInt(index);

    index += addr;

    if (index > (count - 1)) {
        index = 0;
    }

    if (index < 0) {
        index = count - 1;
    }

    win.doOperation( slate.operation("move", {
        "width":"windowSizeX",
        "height":"windowSizeY",
        "x" : "screenOriginX",
        "y" : "screenOriginY",
        "screen": index
    }) );
};

slate.bind("return:ctrl,alt,cmd", function(win) {
    win.doOperation(relaunchOp);
});

slate.bind("left:ctrl,cmd", function(win) {
    move_mon(win, -1);
});

slate.bind("right:ctrl,cmd", function(win) {
    move_mon(win, 1);
});

slate.log('config done loading.');
