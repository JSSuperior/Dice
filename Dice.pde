

void setup()
{
  size(299,300);
  noLoop();
  textAlign(CENTER,CENTER);
}

void draw()
{
  
  int sum = 0;
  
  background(200);
  for(int i = 0; i < 250; i+=50)
    {
      for(int k = 0; k < 300; k+=50)
      {
      DIE shtola = new DIE(k+24,i+24);
      shtola.show();
      sum = sum + shtola.faceNum;
      }
    }
  strokeWeight(5);
  stroke(255,0,0);
  noFill();
  ellipse(150,275,70,40);
  text("Total: " +sum,150,275);
  stroke(0);
}

void mousePressed()
{
  redraw();
}

class DIE 
{
  int faceNum, myX, myY;
  DIE(int x, int y)
  {
    faceNum = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
  
  void show()
  {
    fill(255);
    strokeWeight(5);
    rect(myX-25,myY-25,50,50);
    strokeWeight(3);
    fill(0);
    
    if(faceNum == 1){
      ellipse(myX,myY,5,5);
    }
    if(faceNum == 2){
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX-5,myY-5,5,5);
    }
    if(faceNum == 3){
      ellipse(myX,myY,5,5);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX-10,myY-10,5,5);
    }
    if(faceNum == 4){
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX-10,myY-10,5,5);
      ellipse(myX+10,myY-10,5,5);
      ellipse(myX-10,myY+10,5,5);
    }
    if(faceNum == 5){
      ellipse(myX,myY,5,5);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX-10,myY-10,5,5);
      ellipse(myX+10,myY-10,5,5);
      ellipse(myX-10,myY+10,5,5);
    }
    if(faceNum == 6){
      ellipse(myX-10,myY,5,5);
      ellipse(myX+10,myY,5,5);
      ellipse(myX+10,myY+10,5,5);
      ellipse(myX-10,myY-10,5,5);
      ellipse(myX+10,myY-10,5,5);
      ellipse(myX-10,myY+10,5,5);
    }
    //text(faceNum,myX,myY);
  }
}
