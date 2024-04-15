PrintWriter output;
import g4p_controls.*;
color[] colors = new color[2];  // Creating two color's
int currentColour;              // Declaring Current Color
int timer;                      // Timer
int lvl = 0;

GCustomSlider sdr1;

ArrayList < Bullet > bullets;
int bulletWidth = 20;
int bulletRadius = 10;

// Enemy Variables
float enemyX = 0;
float randomY = random(100, 900);

// Enemy2 Variables
float enemyX2 = 0;
float randomY2 = random(100, 900);

// Stop basic enemies
boolean stopgrunts = false;

// counter used for boss mouth logic
int counter = 0;

// Other Boss Variables
float bossX1 = 0;
float bossY1 = random(100, 900);

float bossX2 = 0;
float bossY2 = random(100, 900);
int initcount = 1;
int fish2health = 1;
int bossFishLeft = 3;

// Score Tracking Variables
int health = 0;
int healthTotal = 450;
int readOutHealth;
int playerScore = 0;

// Image of Jake
PImage Jake;

// These Are used for the command to wave finn's arm
WaveArm arm;
boolean armTool = false;

// Data for player summoning walls
ArrayList<Wall> walls;
long nowpress, lastpress, cooldown= 5000;
long timeUpdater;
float displayerNum;
float roundedNum;

void setup(){
   size(1280, 904);
   
   sdr1 = new GCustomSlider(this, 20, 20, 260, 50, null);
   sdr1.setShowDecor(false,true,true,true);
   sdr1.setNbrTicks(5);
   sdr1.setLimits(1,0,20);
   
  noStroke();
  smooth();
  
  // Setting the Colors for finn's eyes
  colors[0] = color(255,255,0); 
  colors[1] = color(0,255,255); 
  
  // Creating an empty ArrayList with bullets
  bullets = new ArrayList<Bullet>();
  
  // Loading Jake
  Jake = loadImage("Jake.png");

  // Instanciating Arm Object
  arm = new WaveArm(width/2, height/2, 0.01);
  
  //Create a new file in the sketch directory
  output = createWriter("playerscore.txt");
  
  // Instantiation of wall objects
  walls = new ArrayList<Wall>();
}

void draw(){ 
  
  /* Main Menu Below */
  
  if (lvl == 0) {///////////////////////////////////////////////////////////////////////////////////
    background(0, 155, 194); 
    if (mouseX >= 426 && mouseX <= 850 && mouseY >= 380 && mouseY <= 520) {
      fill(50, 205, 244);
      rect(500, 400, 250, 100);
      if (mousePressed) {lvl = 1;}}
    fill(0);
    textSize(20);
    text("Play", 600, 450);
    textSize(50);
    text("Adventure Time: Defence", 350, 150);
    textSize(20);
    text("Instructions: Right Click to send out psychic bullets to defend Jake", 280, 600);
    textSize(20);
    text("Press 'r' to reset the game to default", 430, 650);
    textSize(20);
    text("Press 'w' to make Finn place a defensive wall (Walls have cooldowns which is visible in HUD)", 180, 700);
    textSize(20);
    text("Press 't' to make Finn wave", 470, 750);
    
  }/////////////////////////////////////////////////////////////////////////////////////////////////
  
  /* Main Game Below */
  
  if (lvl == 1){///////////////////////////////////////////////////////////////////////////////////
    
    // Drawing Most of the Background
    drawSkyandLand();
    drawFinn();
    drawMountains();
    finnEyes();
    
    // Wall Stuff
    timeUpdater = millis();
    displayerNum = (((float)cooldown) - ((float)timeUpdater));
    roundedNum = displayerNum / 1000.0;
  
  //HUD
  textSize(30);
  text("Player Score:" + playerScore, 330, 60);
  text("Health: ", 690, 60);
  drawHealth();
  displayWallCount();
  
  // Drawing Picture of Jake
  image(Jake, 1100, 700, 200, 200);
  
  // Setting up Jakes Waving Scripts
  if (armTool) {
    arm.updateAngle();
    arm.displayArm();
  }
  
  // Adding Screen Indicator For Very Low Health
  if (health < -400) {
    filter(GRAY);
  }
  
  // Sending Player to Death Screen If There Health Hits Max
  if (health == -healthTotal){
    lvl = 2;
  }
  
  if (playerScore == -1){
    playerScore++;
  }
  
  // Starting Base Enemies
  if (playerScore > -1 && playerScore < 41){
    // Spawning Enemy Scripts
    mover();
    spawner();
    
  }
  
  // Starting Advanced Enemies
  if (playerScore > 10 && playerScore < 41){
    mover2();
    spawner2();
  }
  
  // Starting Boss Enemy
  if (playerScore > 40) {
    // New Art
    drawSkyandLand2();
    drawFinn();
    drawMountains();
    finnEyes();

    textSize(30);
    text("Remaining Boss Fish:" + bossFishLeft, 330, 60);
    text("Health: ", 690, 70);
    drawHealth();
    displayWallCount();
    
    stopgrunts();
    drawboss(200, 200);
    
    drawSilverfish(bossX1, bossY1);
    fishMover1();
    
    drawSilverfish2(bossX2, bossY2);
    fishMover2();
    
    if (bossFishLeft == 0){
      lvl = 3;
    }
    
  }
 
     // Making Sure that Finn's arm area is cleared while he is waving
    if (armTool){
      finnRightArm();
    }

    // Finn's Eye Color Will Change every second
    if (millis() - timer > 1000) {
      currentColour++;
      timer = millis();
    }
    
    // Bullet
    for (int i = bullets.size()-1; i >= 0; i--) { 
        Bullet bullet = bullets.get(i);
        bullet.move();
        bullet.display();
        
    }
    
   // Walls
   for (int i = walls.size()-1; i >= 0; i--) { 
    Wall wall = walls.get(i);
    wall.display2();
    if (wall.finished2()) {
      walls.remove(i);
    }
  }  
    
  }//////////////////////////////////////////////////////////////////////////////////////////////////
  
  /* Lose Screen Level */
  
  if (lvl == 2) {////////////////////////////////////////////////////////////////////////////////////
     background(#8d001f);
     
     fill(255);
     textSize(50);
     text("You Lose..", 550, 150);
     
     if (mouseX >= 426 && mouseX <= 850 && mouseY >= 380 && mouseY <= 520) {
      fill(#c90732);
      rect(426, 380, 850, 520);
      if (mousePressed) {lvl = 1; resetGameValues();}}
    fill(0);
    textSize(20);
    text("Play Again", 600, 450);
    
    output.println("Lost");
    output.println("Player Score: " + playerScore);
    output.println("Boss Killed: No");
    output.flush();
    output.close();
     
     
  }//////////////////////////////////////////////////////////////////////////////////////////////////
  
  /* Win Screen Level */
  
  if (lvl == 3) {////////////////////////////////////////////////////////////////////////////////////
    background(#ffac01);
     
     fill(255);
     textSize(50);
     text("You Win!", 550, 150);
     
     if (mouseX >= 426 && mouseX <= 850 && mouseY >= 380 && mouseY <= 520) {
      fill(#b27904);
      rect(426, 380, 850, 520);
      if (mousePressed) {lvl = 1; resetGameValues();}}
    fill(0);
    textSize(20);
    text("Play Again", 600, 450);
    
    output.println("Won");
    output.println("Player Score: " + playerScore);
    readOutHealth = healthTotal + health;
    output.println("Health " + readOutHealth + " / 450");
    output.println("Boss Killed: No");
    
    output.flush();
    output.close();
  }//////////////////////////////////////////////////////////////////////////////////////////////////
  
  
}

void mousePressed(){
  
  if (lvl == 1){
    
    finnEyes();
    
    // Casting Bullet
    bullets.add(new Bullet(mouseX, mouseY, bulletWidth+sdr1.getValueI()));
  }
}

void resetGameValues(){
  health = 0;
  playerScore = -1;
  bossFishLeft = 3;
}

void displayWallCount() {
  //HUD
  textSize(30);
  text("Cooldown: " + roundedNum, 330, 90);
}


void keyPressed(){
  if (key == 'r'){
    resetGameValues();
    lvl = 2;
  }
  
  if (key == 't'){
    armTool = !armTool;
  }
}

void keyReleased() {
  if ( key == 'w' ) {
    nowpress = millis();
    if (nowpress > ( lastpress + cooldown )) {
      walls.add(new Wall(mouseX, mouseY));
      lastpress = nowpress;
    } else {
      println("not now");
    }
  }
}

class Wave {
  float x, y, speed;
  float angle = 0.0;
  
  Wave(float xpos, float ypos, float s) {
    x = xpos;
    y = ypos;
    speed = s;
  }
  void updateAngle() {
    angle += .01;
  }
}

class WaveArm extends Wave {
  
  WaveArm(float x, float y, float s) {
    super(x, y, s);
  }
  
  void displayArm() {
    fill(#e9c5b7);
    noStroke();
    pushMatrix();
    translate(900, 850);
    rectMode(CORNERS);
    rotate(map(mouseX, 0, width, -PI+.3, PI-4));
    rect(-19, -19, 140, 19);
    popMatrix();
  }
}
