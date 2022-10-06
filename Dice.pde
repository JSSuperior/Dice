void setup()
{
  size(300,300);
  noLoop();
  textAlign(CENTER,CENTER);
}

void draw()
{
  
  background(200);
  for(int i = 0; i < 300; i+=100)
    {
      for(int k = 0; k < 300; k+=100)
      {
      DIE shtola = new DIE(50+k,50+i);
      shtola.show();
      
      }
    }
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
    ellipse(myX,myY,50,50);
    fill(0);
    text(faceNum,myX,myY);
  }
}
