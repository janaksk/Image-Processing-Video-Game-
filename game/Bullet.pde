class Bullet {
  
  float x;
  float y;
  float speed;
  float gravity;
  float w;
  
  Bullet(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
    gravity = 0.1;
  }
  
  void move() {
    speed = speed + gravity;
    // Subtracting speed to X axis to make them accelerate to the left of screen
    x = x - speed;
    
   // Collision Detection Built into the movement
   if ((x >= (enemyX - 20) && x <= (enemyX + 20)) && (y >= (randomY - 20) && y <= (randomY + 20))){
      playerScore += 1;
      enemyX = 0;
      randomY = random(100, 900 );
      spawner();
   }
   
   // Collision Detection Built into the movement for second enemy
   if ((x >= (enemyX2 - 20) && x <= (enemyX2 + 20)) && (y >= (randomY2 - 20) && y <= (randomY2 + 20))){
      playerScore += 1;
      enemyX2 = 0;
      randomY2 = random(100, 900 );
      spawner();
   }
   
   // Collision Detection Built into the movement for boss silverfish1
   if ((x >= (bossX1 - 40) && x <= (bossX1 + 40)) && (y >= (bossY1 - 40) && y <= (bossY1 + 40))){
      
      bossX1 = 0;
      bossY1 = random(100, 900 );
      drawSilverfish(bossX1, bossY1);
   }
   
   // Collision Detection Built into the movement for boss silverfish2
   if ((x >= (bossX2 - 40) && x <= (bossX2 + 40)) && (y >= (bossY2 - 40) && y <= (bossY2 + 40))){
     
     fish2health= fish2health + 1;

     if (fish2health > 160){
        bossX2 = 0;
        bossY2 = random(200, 850 );
        initcount = 1;
        fish2health = 1;
        bossFishLeft--;
        drawSilverfish2(bossX2, bossY2);
     }
   }
    
  }
  
  
  void display() {
    fill(0, 255);
    ellipse(x,y,w,w);
  }
}  
