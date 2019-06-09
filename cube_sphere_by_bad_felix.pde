// Song: Tech house RAW' mix - 2018... BNLF
// by BigNoiZeLeFunK
//
// Full mix:
// https://soundcloud.com/big-noize-le-funk/tech-house-mix-2018-bnlf

import moonlander.library.*;
import ddf.minim.*;

Moonlander moonlander;

int bpm = 125;
float beat;

PFont titleFontBlack, titleFontRegular;

void setup() {
  moonlander = Moonlander.initWithSoundtrack(this, "data/Tech house RAW' mix - 2018... BNLF by BigNoiZeLeFunK.mp3", bpm, 4);
  fullScreen(P3D);
  //size(1280, 720, P3D);
  //size(480, 270, P3D);
  noCursor();
  colorMode(HSB, 360, 100, 100);
  noiseSeed(0);
  moonlander.start();
  titleFontBlack = createFont("Raleway-Black.ttf", 100);
  titleFontRegular = createFont("Raleway-Regular.ttf", 100);
}

void draw() {
  moonlander.update();
  beat = (float) moonlander.getCurrentTime() * bpm/60 - 0.25;

  translate(width/2, height/2);
  scale(height/1000.0);
  
  int scene = int((float) moonlander.getValue("scene"));
  
  pushMatrix();
  if (scene == 1) {
    drawCubeSphere();
  } else if (scene == 2) {
    drawColorRing();
  } else {
    background(0, 0, 0);
  }
  popMatrix();
  
  drawTitles();
}
