//color pallette
color black  = #000000;
color white  = #FFFFFF;
color purple = #490A3D;
color pink   = #BD1550;
color orange = #E97F02;
color yellow = #F8CA00;
color green  = #8A9B0F;

//mode framework variables
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
int mode = INTRO;

//key variables;
boolean wkey, akey, skey, dkey, spacekey;


//=============================================================
void setup() {
  //graphics
  size(800, 800);
  noStroke();
  
  //initialize key variables
  wkey = akey = skey = dkey = spacekey = false;
}

//=============================================================
void draw() {
  //chooses which tab to go to
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    pause();
  else if (mode == GAMEOVER) gameOver();
  else println("Mode error! You need to add a new mode to your mode framework in the draw function! -- Mr. Pelletier");
}
