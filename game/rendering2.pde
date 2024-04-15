void drawSkyandLand2() {
          
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
          fill(#edd5e2);
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
          fill(#e8bed5);
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
          fill(#dba4c2);
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
          fill(#d991b8);
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
          fill(#d47fad);
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
          fill(#d46aa3);
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
          fill(#cf5998);
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
          fill(#c74289);
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
