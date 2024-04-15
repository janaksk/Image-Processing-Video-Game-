  void finnEyes(){
    if (mousePressed == true){
    // Finn's Eye
    fill(colors[currentColour % 2]);
    noStroke();
    pushMatrix();
    translate(970, 610);
    ellipse(0, 0, 40, 5);
    popMatrix();
    
    // Finn's Eye
    fill(colors[currentColour % 2]);
    noStroke();
    pushMatrix();
    translate(1080, 610);
    ellipse(0, 0, 40, 5);
    popMatrix();
    }
    else {
    // Finn's Eye
    fill(colors[currentColour % 2]);
    noStroke();
    pushMatrix();
    translate(970, 610);
    ellipse(0, 0, 25, 25);
    popMatrix();
    
    // Finn's Eye
    fill(colors[currentColour % 2]);
    noStroke();
    pushMatrix();
    translate(1080, 610);
    ellipse(0, 0, 25, 25);
    popMatrix();
    }
  }
  
        void drawMountains(){
           // Mountain 1
          fill(#5d4553);
          noStroke();
          pushMatrix();
          translate(130, 630);
          triangle(0, -330, -120, 0, 110, 0);
          popMatrix();
        
          // Mountain 2
          fill(#5d4553);
          noStroke();
          pushMatrix();
          translate(250, 610);
          triangle(0, -230, -90, 0, 130, 0);
          popMatrix();
        
          // Mountain 3
          fill(#5d4553);
          noStroke();
          pushMatrix();
          translate(-50, 570);
          rotate(2);
          triangle(0, -150, -150, 0, 51, 0);
          popMatrix();
        }
        
        void drawFinn(){
          // Finn's Chest 
          fill(#2596be);
          noStroke();
          pushMatrix();
          translate(1025, 820);
          rect(-125, -110, 115, 90);
          popMatrix();
          
          // Finn's Head
          fill(#e9e9e9);
          noStroke();
          pushMatrix();
          translate(985, 650);
          rect(-73, -110, 170, 75);
          popMatrix();
        
          // Finn's Right Arm
          fill(#e9c5b7);
          noStroke();
          pushMatrix();
          translate(900, 860);
          rotate(-1.4);
          rect(-78, -17, 17, 17);
          popMatrix();
        
          // Finn's Left Arm 
          fill(#e9c5b7);
          noStroke();
          pushMatrix();
          translate(1180, 890);
          rotate(-1.8);
          rect(-19, -19, 39, 19);
          popMatrix();
        
          // Finn's Left Sleeve
          fill(#1d98c1);
          noStroke();
          pushMatrix();
          translate(1145, 760);
          rotate(-0.3);
          rect(-23, -37, 23, 112);
          popMatrix();
          
            // Finn's Right Sleeve
          fill(#1d98c1);
          noStroke();
          pushMatrix();
          translate(900, 850);
          rotate(-1.4);
          rectMode(CORNERS);
          rect(-19, -19, 140, 19);
          popMatrix();
        
          // Finn's Face
          fill(#e8c5b7);
          noStroke();
          pushMatrix();
          translate(1030, 630);
          rotate(0.0);
          ellipse(0,0,200, 150);
          popMatrix();
        
          // Finn's Right Ear
          fill(#e9e9e9);
          noStroke();
          pushMatrix();
          translate(940, 530);
          rotate(0.0);
          ellipse(0,0,50, 60);
          popMatrix();
        
          // Finn's Left Ear
          fill(#e9e9e9);
          noStroke();
          pushMatrix();
          translate(1125, 530);
          rotate(0.0);
          ellipse(0,0,50, 60);
          popMatrix();
          
          // Finn's Mouth
          fill(#1b1f1f);
          noStroke();
          pushMatrix();
          translate(1000, 690);
          beginShape();
          vertex(0.0, 0.0);
          vertex(40, 2);
          vertex(70, -20);
          vertex(37, -9);
          endShape(CLOSE);
          popMatrix();
          
        }
        
        void drawSkyandLand() {
          
          // Grass
          fill(#177c8e);
          noStroke();
          pushMatrix();
          translate(145, 845);
          rotate(-1.60);
          rect(-242, -242, 242, 1255);
          popMatrix();
          
          // Sky Layer 1
          // All vertex points were achieved through photoshop
          fill(#b58791);
          noStroke();
          pushMatrix();
          translate(0.88, 590);
          beginShape();
          vertex(0.0, 0.0);
          vertex(611, 21);
          vertex(1278, 0);
          vertex(1284, -91);
          vertex(793, -100);
          vertex(0, -105);
          endShape(CLOSE);
          popMatrix();
        
          // Sky Layer 2
          fill(#746c9f);
          noStroke();
          pushMatrix();
          translate(6, 500);
          beginShape();
          vertex(-20, 0);
          vertex(650, -10);
          vertex(1280, 22);
          vertex(1280, -85);
          vertex(-10, -120);
          endShape(CLOSE);
          popMatrix();
        
          // Sky Layer 3
          fill(#4853ac);
          noStroke();
          pushMatrix();
          translate(0, 400);
          beginShape();
          vertex(-20, 5);
          vertex(410, 0);
          vertex(810, 8);
          vertex(1280, 35);
          vertex(1280, -80);
          vertex(280, -85);
          vertex(0, -80);
          endShape(CLOSE);
          popMatrix();
        
          // Sky Layer 4
          fill(#3c529e);
          noStroke();
          pushMatrix();
          translate(0, 340);
          beginShape();
          vertex(0, 3);
          vertex(315, 20);
          vertex(1275, 0);
          vertex(1300, -85);
          vertex(865, -125);
          vertex(-15, -70);
          endShape(CLOSE);
          popMatrix();
        
          // Sky Layer 5
          fill(#2e4b8f);
          noStroke();
          pushMatrix();
          translate(0, 297);
          beginShape();
          vertex(-30, 0);
          vertex(715, -60);
          vertex(1020, -60);
          vertex(1290, -15);
          vertex(1290, -110);
          vertex(830, -160);
          vertex(560, -160);
          vertex(0, -110);
          endShape(CLOSE);
          popMatrix();
        
          // Sky Layer 6
          fill(#1f388c);
          noStroke();
          pushMatrix();
          translate(0, 200);
          beginShape();
          vertex(-15, 0);
          vertex(260, 0);
          vertex(560, -60);
          vertex(1190, -24);
          vertex(1290, 0);
          vertex(1290, -70);
          vertex(900, -130);
          vertex(530, -130);
          vertex(0, -45);
          endShape(CLOSE);
          popMatrix();
        
          // Sky Layer 7
          fill(#172e8e);
          noStroke();
          pushMatrix();
          translate(80, 160);
          beginShape();
          vertex(-100, 0.0);
          vertex(-90, -90);
          vertex(570, -145);
          vertex(1035, -140);
          vertex(1200, -90);
          vertex(1200, -15);
          vertex(610, -85);
          endShape(CLOSE);
          popMatrix();
        
          // Sky Layer 8
          fill(#10246e);
          noStroke();
          pushMatrix();
          translate(0, 100);
          beginShape();
          vertex(0.0, 0.0);
          vertex(200, -20);
          //vertex(520, -60);
          vertex(740, -75);
          vertex(1080, -60);
          vertex(1280, -25);
          vertex(1280, -105);
          vertex(0, -100);
          endShape(CLOSE);
          popMatrix();       
        }

void drawHealth() {
  pushMatrix();
  fill(#ff4200);
  rect(800, 80, 1250 + health, 20);
  popMatrix();
}

void finnRightArm(){
    // Finn's Right Arm
    fill(#177c8e);
    noStroke();
    pushMatrix();
    translate(900, 860);
    rotate(-1.4);
    rect(-78, -17, 17, 17);
    popMatrix();
}
