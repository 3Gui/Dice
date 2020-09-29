void setup(){
 size(1920,1080);
}

public class Dice {
  private int dX;
  private int dY;
  private int diceNum =(int) (Math.random()*6 +1);
  private int dSize;
  
  Dice(int x, int y, int size){
   dX=x;
   dY=y;
   dSize= size;
  }
  
  void one(){
    fill(0);
    ellipse(dX+dSize/2,dY+dSize/2, dSize/5,dSize/5);
  }
  void 
  two(){
    fill(0);
    ellipse(dX+(4*dSize/5),dY+(4*dSize/5),dSize/5,dSize/5);
    ellipse(dX+(dSize/5),dY+(dSize/5),dSize/5,dSize/5);
  }
  void three(){
    fill(0);
    ellipse(dX+(dSize/5),dY+(4*dSize/5),dSize/5,dSize/5);
    ellipse(dX+(4*dSize/5),dY+(dSize/5),dSize/5,dSize/5);
    ellipse(dX+dSize/2,dY+dSize/2,dSize/5,dSize/5);
  }
  void four(){
    two();
    ellipse(dX+(dSize/5),dY+(4*dSize/5),dSize/5,dSize/5);
    ellipse(dX+(4*dSize/5),dY+(dSize/5),dSize/5,dSize/5);
  }
  void five(){
    two();
    three();
  }
  void six(){
    fill(0);
     ellipse(dX+dSize/2,dY+(dSize/5),dSize/5,dSize/5);
     ellipse(dX+dSize/2,dY+(4*dSize/5),dSize/5,dSize/5);
    four();
  }
  
  
  public int getX(){
   return dX; 
  }
  public int getY(){
   return dY; 
  }
  public int getdNum(){
    return diceNum;
  }
  void show(){
    fill(255);
    rect(dX,dY,dSize,dSize,dSize/5); 
    if (diceNum==1){
      one();
    }
    else if (diceNum==2){
      two();
    }
    else if (diceNum==3){
      three();
    }
    else if (diceNum==4){
      four();
    }
    else if (diceNum==5){
      five();
    }
    else{
      six();
      
    }
  }
  
 
  
}


 void draw(){
   //Dice tuf = new Dice(50,50);
   //tuf.show();
   
   
 }
 /*
 for (int y = 10; y<= 950; y+=55){
     for (int x = 10; x<= 950; x+=55){
       Dice tuf = new Dice(x,y,50);
       tuf.show();
     }
   
   }
 */
 void mousePressed(){
   int dieTotal = 0;
   int numTotal = 0;
   for (int y = 5; y<= 995; y+=25){
     for (int x = 5; x<= 995; x+=25){
       Dice tuf = new Dice(x,y,20);
       tuf.show();
       dieTotal++;
       numTotal += tuf.getdNum();;
     } 
   }
   System.out.println(dieTotal);
   System.out.println(numTotal);
 }
