  
void drawSilverfish(float x, float y) {
  
  // Tail
  fill(-5000269);
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(x,y);
  //translate(631.5447, 479.35574);
  translate(-40, 0);
  rotate(1.5787649);
  triangle(0, -36.75074, -21.21805, 0, 21.21805, 0);
  popMatrix();

  // Stomach
  fill(-5000269);
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(x,y);
  //translate(654.9707, 479.6486);
  translate(-20, 0);
  rotate(1.5671331);
  triangle(0, -39.97097, -23.077251, 0, 23.077251, 0);
  popMatrix();

  // Head
  fill(-5000269);
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(x,y);
  //translate(676.05414, 480.38065);
  rotate(1.5665231);
  triangle(0, -68.521866, -39.56112, 0, 39.56112, 0);
  popMatrix();
  
  // Eye
  fill(-1);
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(x,y);
  //translate(697.72327, 469.6925);
  translate(30, -10);
  rotate(0.0);
  ellipse(0,0,22.187225, 22.187225);
  popMatrix();
  
  // Pupil
  fill(-6750208);
  strokeWeight(1.0);
  stroke(0);
  pushMatrix();
  translate(x,y);
  //translate(701.53, 471.01022);
  translate(32, -10);
  rotate(0.0);
  ellipse(0,0,10.496827, 10.496827);
  popMatrix();

  // Eyebrow (broke)
  pushMatrix();
  strokeWeight(1.0);
  stroke(0);
  translate(x,y);
  translate(-660,-475);
  line(710.6076, 466.1786, 680.8858, 437.62808);
  popMatrix();
}
