class Wall {
  
  float x2;
  float y2;
  float w2;
  float life2 = 255;

  Wall(float tempX2, float tempY2) {
    x2 = tempX2;
    y2 = tempY2;
  }
  
  boolean finished2() {
    life2--;
    if (life2 < 0) {
      return true;
    } else {
      return false;
    }
  }
  
  void display2() {
    pushMatrix();
    fill(0,255);
    rect(x2 ,y2,x2-40,y2-200);
    popMatrix();
    
   // Collision Detection Built into the movement
   if ((x2 >= (enemyX - 20) && x2 <= (enemyX + 20)) && (y2 >= (randomY - 20) && y2 <= (randomY + 200))){
      playerScore += 1;
      enemyX = 0;
      randomY = random(100, 900 );
      spawner();
   }
   
   // Collision Detection Built into the movement for second enemy
   if ((x2 >= (enemyX2 - 20) && x2 <= (enemyX2 + 20)) && (y2 >= (randomY2 - 20) && y2 <= (randomY2 + 200))){
      playerScore += 1;
      enemyX2 = 0;
      randomY2 = random(100, 900 );
      spawner();
   }
   
   // Collision Detection Built into the movement for boss silverfish1
   if ((x2 >= (bossX1 - 40) && x2 <= (bossX1 + 40)) && (y2 >= (bossY1 - 40) && y2 <= (bossY1 + 200))){
      
      bossX1 = 0;
      bossY1 = random(100, 900 );
      drawSilverfish(bossX1, bossY1);
   }
   
   // Collision Detection Built into the movement for boss silverfish2
   if ((x2 >= (bossX2 - 40) && x2 <= (bossX2 + 40)) && (y2 >= (bossY2 - 40) && y2 <= (bossY2 + 200))){
     
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
  
}
