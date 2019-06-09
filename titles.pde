void drawTitles() {
  hint(DISABLE_DEPTH_TEST);
  noLights();
  textMode(MODEL);


  fill(0, 0, 100);

  textFont(titleFontBlack, 50);
  
  float titlesStart = beat - 200.75;
  
  if (titlesStart >= 0 && titlesStart < 16.0) {
    textFont(titleFontBlack, 150);
    text("Cube Sphere", -670, -60);
    
    if (titlesStart >= 8.0) {
      textFont(titleFontRegular, 150);
      text("by Bad Felix", -670, 140);
    }
  }
  
  if (titlesStart >= 16.0 && titlesStart < 24.0) {
    textFont(titleFontRegular, 150);
    text("Made at", -670, -60);
    
    if (titlesStart >= 20.0) {
      textFont(titleFontBlack, 150);
      text("Graffathon 2019", -670, 140);
    }
  }
  
  if (titlesStart >= 24.0) {
    translate(0, 35);
    textFont(titleFontRegular, 150);
    text("Music:", -670, -140);

    if (titlesStart >= 26.0) {
      textFont(titleFontBlack, 80);
      text("Tech house RAW' mix - 2018... BNLF", -670, -20);
    }
    
    if (titlesStart >= 28.0) {
      textFont(titleFontRegular, 150);
      text("by BigNoiZeLeFunK", -670, 140);
    }
    
    if (titlesStart >= 30.0) {
      exit();
    }
  }
  
  hint(ENABLE_DEPTH_TEST);
}
