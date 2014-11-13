float x,y,sz;
//movement of ball
float xspeed=2;
float yspeed=4;
//pplaey 1 score
int score1= 0;
//player 2 score
int score2= 0;
//width of paddle
int w = 30;
//height of paddle
int h = 80;
int dw = 10;
int space = 20;
int rect2y;

void setup(){
  size(1000,700);
  x=width/2;
  y=height/2; 
  sz=25;
 
}


void draw(){
  
  int leftX = width-w-space;
  background (0);

//fill line gray
  fill(255,40);
  //division line
  rect(width/2-dw/2, 0, dw, height);
  fill(255);
  //fill paddle blue
fill(0,0,255);
//move right paddle
  rect(leftX, mouseY, w, h);
  if (mouseY > height-h){
    rect(leftX, height-h,w,h);
  }

  //fill ball white
  fill(255);
//draw ball
  ellipse(x,y,sz,sz);
  
//move ball
  x+= xspeed;
  y+= yspeed;
  
//bounce ball off top and bottom
  if(y+ sz/2 > height || y -sz/2 < 0){
    yspeed*=-1;
  }
 


  

 
 
//bounce ball off right paddle
  //side
  if (y > mouseY && y < mouseY + h && x + sz/2 > leftX){
    //ellipse(x,y,sz,sz);
    xspeed*=-1;
    yspeed*=-1;
   }
   //top
     
     //fill paddle red
  fill(255,0,0);
  //make left paddle
  rect(space,rect2y,w,h);
  
  //control paddle with keys
if(keyPressed){
  if(key=='w'){
  rect2y-=7;
}
if(key=='s'){
  rect2y+=7;
}
}
if(rect2y>=height-h){
  rect(space, height-h,w,h);
}
if(rect2y<=0){
  rect(space,0,w,h);
}
//make ball recognize left paddle
if( y >= rect2y && y<= rect2y + h && x-sz/2<= space +w){
  xspeed*=-1;
  yspeed*=-1;
}
   
    //top and bottom
    //if (y - sz/2 == mouseY && x + sz/2 >= leftX && x + sz/2 <= space){
    // xspeed*=-1;
    //  yspeed*=-1;
    // }
   
   
//revive ball
  if (x +sz/2 > width){
   ellipse(x,y,sz,sz);
   xspeed*=-1;
   yspeed*=-1;
   //change score
   x=width/2;
   y=random(25, height-25);
   score1++;
   }
   
   if (x - sz/2 < 0){
   ellipse(x,y,sz,sz);
   xspeed*=-1;
   yspeed*=-1;
   x=width/2;
   y=random(25, height-25);
   score2++;
   }
   
   
//player 1
  textSize(30);
  //fill text red
  fill(255,0,0);
  //player 2
  text("Player 1", 50,60);
  //fill text blue
  fill(0,0,255);
  text("Player 2", width-170, 60);
  
//fill text white
fill(255);
//scoreboard
  textSize(70);
  text(score1, width/2-105, 70);
  text(score2, width/2+60, 70);

//player 1 win
//fill text red
fill(255,0,0);
  if(score1 == 10){
    textSize(50);
    stroke(random(255),random(255),random(255));
    text("Player 1 WINS", width/2-150, height/2);
    noLoop();
  }
  
//player 2 win
//fill text blue
fill(0,0,255);
  if(score2 == 10){
    textSize(50);
    stroke(random(255),random(255),random(255));
    text("Player 2 WINS", width/2-150, height/2);
    noLoop();
  }

}




