void drawboss(int x, int y){
  
    fill(-5000269);
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(x, y);
  translate(272.51773, 167.37589);
  rotate(0.0);
  rectMode(CORNERS);
  rect(-89.361725, -89.361725, 89.361725, 89.361725);
  popMatrix();

  fill(-1);
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(x, y);
  translate(202.30496, 132.62411);
  rotate(0.0);
  ellipse(0,0,55.246365, 55.246365);
  popMatrix();

  fill(-1);
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(x, y);
  translate(332.80142, 131.20567);
  rotate(0.0);
  ellipse(0,0,61.0094, 61.0094);
  popMatrix();

  fill(-6737152);
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(x, y);
  translate(344.14896, 331.9149);
  rotate(0.01123498);
  arc(0,0,236.84122, 177.66772, -1.5707964, 0.0, PIE);
  popMatrix();

  fill(-6737152);
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(x, y);
  translate(198.75887, 339.0071);
  rotate(0.011234984);
  arc(0,0,236.91768, 177.66772, -3.128541, -1.5952754, PIE);
  popMatrix();

  fill(-6737152);
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(x, y);
  translate(200.1773, 130.49646);
  rotate(0.0);
  ellipse(0,0,18.494196, 18.494196);
  popMatrix();

  fill(-6737152);
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(x, y);
  translate(329.25534, 127.65958);
  rotate(0.0);
  ellipse(0,0,16.541706, 16.541706);
  popMatrix();

  mouthdraw(x, y);
  
  // Finn's Eye Color Will Change every second
  if (millis() - timer > 1000) {
     counter++;
  }
  
  armrotate(x, y);
}

void armrotate(int x, int y)
{
  float a = (mouseY / (float) width) * 190f;
  float theta = radians(a);
  
  pushMatrix();
  fill(#b3b3b3);
  translate(x, y);
  translate(250, 80);
  rotate(theta);
  rect(0, 0, 100, 50);
  translate(100, 0);
  rotate(theta);
  rect(0, 0, 100, 50);
  popMatrix();
  
}

void mouthdraw(int x, int y){
  pushMatrix();
  if (counter % 2 == 0){
    fill(-3394765);
  }
  else{
    fill(#b3b3b3);
  }
  stroke(0);
  strokeWeight(1.0);
  translate(x, y);
  bezier(227.12767, 227.65958, 263.2979, 189.3617, 282.4468, 185.10638, 313.6525, 226.24113);
  popMatrix();
}
