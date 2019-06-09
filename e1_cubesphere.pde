void drawCubeSphere() {
  background(0, 0, 0);
  
  fill(0, 0, 0);
  noStroke();
  
  int n1 = int(pow(2, (float) moonlander.getValue("lb n1"))); // 1..100
  int n2 = int(pow(2, (float) moonlander.getValue("lb n2"))); // 1..100
  
  float boxSize = pow(2, (float) moonlander.getValue("lb box size")); // 3..3000
  
  float rotateX = (float) moonlander.getValue("rotate X") * TAU/2;
  float rotateY = (float) moonlander.getValue("rotate Y") * TAU/2;
  float rotateZ = (float) moonlander.getValue("rotate Z") * TAU/2;
  float scale = pow(2, (float) moonlander.getValue("lb scale"));
  
  rotateX(rotateX);
  rotateY(rotateY);
  rotateZ(rotateZ);
  scale(scale);
  
  noStroke();
  lights();
  fill(0, 60, 80);
  noFill();
  fill(0, 60, 80);
  
  ambientLight(210, 40, 20);
  directionalLight(30, 3, 40, 0, 0, -1);
  directionalLight(30, 1, 40, 0.5, 1, -1);
  directionalLight(30, 50, 16, 0.2, 1, 0);
  directionalLight(210, 10, 30, -1, 0.5, 0.5);
  
  for (float a = 0; a < TAU; a += TAU/n1) {
    for (float b = 0; b <= TAU/2+1e-5; b += TAU/2/n2) {
      pushMatrix();
      rotateY(a);
      rotateX(b);
      translate(0, -300, 0);
      box(boxSize);
      popMatrix();
    }
  }
}
