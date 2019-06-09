void drawColorRing() {
  background(0, 0, 0);

  int n1 = int(pow(2, (float) moonlander.getValue("2 lb n1"))); // 1..100
  float noiseR = (float) moonlander.getValue("noise R"); // 0.3..3
  float avgD = pow(2, (float) moonlander.getValue("lb avgD"));
  float scale = pow(2, (float) moonlander.getValue("2 lb scale"));
  float minD = avgD / sqrt(scale);
  float maxD = avgD * sqrt(scale);

  float noiseZ = (float) moonlander.getValue("noise Z"); // 1..9
  float noiseExp = (float) moonlander.getValue("noise exp"); // 0.3..0.6
  noiseDetail(9, noiseExp);
  
  float noiseR2 = (float) moonlander.getValue("noise R 2"); // 0.3..3
  float avgD2 = pow(2, (float) moonlander.getValue("lb avgD 2"));
  float scale2 = pow(2, (float) moonlander.getValue("lb scale 2"));
  float minD2 = avgD2 / sqrt(scale2);
  float maxD2 = avgD2 * sqrt(scale2);
  
  noStroke();
  float t = beat;

  for (float a = 0; a < TAU; a += TAU/n1) {
    float d = noise(1000 + noiseR * cos(a), 1000 + noiseR * sin(a), noiseZ);
    float diameter = exp(map(d, 0, 1, log(minD), log(maxD))); 
    
    float d2 = noise(1000 + noiseR2 * cos(a), 1000 + noiseR2 * sin(a), noiseZ);
    float diameter2 = exp(map(d2, 0, 1, log(minD2), log(maxD2))); 
    
    float hue = map(cos(a*3+t) + cos(a), -2, 2, 300, 120) % 360;
    float sat = map(cos(a*3 + PI) + cos(a + PI), -1, 1, 40, 70);
    float bri = map(cos(a+PI), -1, 1, 100, 100);
    fill(hue, sat, bri);
    
    pushMatrix();
    rotate(a);
    translate(diameter2, 0);
    ellipse(0, 0, diameter, diameter);
    popMatrix();
  } 
  
}
