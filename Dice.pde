
void setup(){
 size(1000,1000);
 frameRate(10);
}

public class Dice {
  private int dX;
  private int dY;
  private int diceNum =(int) (Math.random()*6 +1);
  private int dSize;
  private int[] dColor = new int[3];
  
  Dice(int x, int y, int size,int[] col){
   dX=x;
   dY=y;
   dSize= size;
   dColor = col;
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
    fill(dColor[0],dColor[1],dColor[2]);
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
   background(200);
   int dieTotal = 0;
   int numTotal = 0;
   int[] col = new int[3];
   col[0] = (int)(Math.random()*155+70);
   col[1] = (int)(Math.random()*155+85);
   col[2] = (int)(Math.random()*155+100);
   int rChange = (255 - col[0])/50;
   int gChange = (255 - col[1])/40;
   int bChange = (255 - col[2])/20;
   boolean dswitch = false;
   double d = 0.5;
   int xChange=390;
   for (int y = 25; y<= 1000; y+=22){
     for (int x = 75+xChange; x<= 870-xChange; x+=22){
       Dice tuf = new Dice(x,y,20,col);
       tuf.show();
       dieTotal++;
       numTotal += tuf.getdNum();;
     } 
     if (xChange <=0){
       dswitch  = true;
       d = 0.3;
     }
     if (dswitch){
      xChange+=(30-d);
      d+=-.1;
     } else{
     xChange-=(30-d);
     d+=1.5;
     }
     col[0] += rChange;
     col[1] += gChange;
     col[2] += bChange;
   }
   dswitch = false;
   fill(50,100,175);
   textSize(20);
   text("Total Dice = " + dieTotal, 700,900);
   text("Sum of Dice = " + numTotal, 100,900);
   System.out.println((float)numTotal/dieTotal);
   
   noLoop();
    
   
   
 }
 /*
 for (int y = 10; y<= 950; y+=55){
     for (int x = 10; x<= 950; x+=55){
       Dice tuf = new Dice(x,y,50);
       tuf.show();
     }
   
   }
 */
 void keyPressed(){
   if(keyCode == UP){
   redraw();
   }
   
 }
 void mousePressed(){
  redraw();
   
 }
