// Basic Enemies

  void spawner() {
    if (stopgrunts == false){
     fill(#7d132c);
     ellipse(enemyX, randomY, 60, 20);
    }
    else{
    return;
    }
  }

  void mover() {
     enemyX = enemyX + 10;
     if (enemyX == 1280){
        randomY =  random(100, 900 );
        enemyX = 0;
        health -= 45;
        if (stopgrunts == false){
        spawner();
        }
        else{
          return;
        }
     }
  } 

// Alternative Enemies

   void spawner2() {
    if (stopgrunts == false){
     fill(#947829);
     ellipse(enemyX2, randomY2, 60, 40);
    }
    else{
      return;
    }
   }
    
  void mover2() {
     enemyX2 = enemyX2 + 3;
     if (enemyX2 == 1280){
        randomY2 =  random(100, 900 );
        enemyX2 = 0;
        health -= 45;
        if (stopgrunts == false){
        spawner2();
        }
        else{
          return;
        }
     }
   } 

  void stopgrunts(){
    stopgrunts = !stopgrunts;
  }

// Boss Silverfish Logic

void fishMover1(){
  bossX1 = bossX1 + 2;
  
  if (bossX1 >= 1280){
        bossY1 =  random(100, 900 );
        bossX1 = 0;
        health -= 45;
        drawSilverfish(bossX1, bossY1);
  }
}

void fishMover2(){
  
  bossX2 = bossX2 + 1;
  
  if (initcount == 1){
    bossY2 = bossY2 + 10;
  }
  else if (initcount == 2){
    bossY2= bossY2 - 10;
  }
  
  if (bossY2 < 200){
    initcount = 1;
  }
  else if (bossY2 > 850){
    initcount = 2;
  }

  if (bossX2 >= 1280){
        bossY2 =  random(200, 850 );
        bossX2 = 0;
        health -= 45;
        drawSilverfish2(bossX2, bossY2);
  }
}
