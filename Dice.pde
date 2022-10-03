void setup(){
  noLoop();
  size(750,750);
}
  
Die jeff;
void draw(){
  int counter = 0;
  background(255);
  for(int y = 50; y <= 650; y +=50){
    for(int x = 50; x <= 650; x += 50){
      jeff = new Die(x, y);
      jeff.show();
      if (jeff.num == 1){
        counter += 1;
      } else if (jeff.num == 2){
        counter += 2;
      } else if (jeff.num == 3){
        counter += 3;
      } else if (jeff.num == 4){
        counter += 4;
      } else if (jeff.num == 5){
        counter += 5;
      } else {
        counter += 6;
      }
    }
  }
  
  textAlign(CENTER);
  textSize(15);
  text("The sum of all the dice is " + counter, 375,725);
  textSize(25);
  text("My dice program", 375,25);
}
  
void mousePressed(){
  redraw();
}
  
class Die {
  
  int dX, dY, num;
  
  Die(int x, int y){
    dX = x;
    dY = y;
    roll();
  }
  void roll(){
    int dotNum = (int)(Math.random() * 6) + 1;
    if (dotNum == 1){
      num = 1;
    } else if (dotNum == 2){
      num = 2;
    } else if (dotNum == 3){
      num = 3;
    } else if (dotNum == 4){
      num = 4;
    } else if (dotNum == 5){
      num = 5;
    } else {
      num = 6;
    }
  }
  void show(){
    fill(255);
    rect(dX, dY, 50,50);
    fill(0);
    if (num == 1){
      ellipse(dX+25, dY+25, 5, 5);
    } else if (num == 2){
      ellipse(dX+10, dY+10, 5, 5);
      ellipse(dX+40, dY+40, 5, 5);
    } else if (num == 3){
      ellipse(dX+10, dY+10, 5, 5);
      ellipse(dX+40, dY+40, 5, 5);
      ellipse(dX+25, dY+25, 5, 5);
    } else if (num == 4){
      ellipse(dX+10, dY+10, 5, 5);
      ellipse(dX+40, dY+40, 5, 5);
      ellipse(dX+40, dY+10, 5, 5);
      ellipse(dX+10, dY+40, 5, 5);
    } else if (num == 5){
      ellipse(dX+10, dY+10, 5, 5);
      ellipse(dX+40, dY+40, 5, 5);
      ellipse(dX+40, dY+10, 5, 5);
      ellipse(dX+10, dY+40, 5, 5);
      ellipse(dX+25, dY+25, 5, 5);
    } else {
      ellipse(dX+10, dY+10, 5, 5);
      ellipse(dX+40, dY+40, 5, 5);
      ellipse(dX+40, dY+10, 5, 5);
      ellipse(dX+10, dY+40, 5, 5);
      ellipse(dX+10, dY+25, 5, 5);
      ellipse(dX+40, dY+25, 5, 5);
    }
  }
}
