//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var fireworkX = 10;
var textX = 20
var speechX = 45
var textSizeX = 10

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  fill(250,0,0);
  ellipse(fireworkX, 200, 60, 30);
  noStroke();
  fill(255,255,0)
  quad(fireworkX,195,fireworkX,205,fireworkX-10,210,fireworkX-10,200);
  quad(fireworkX-10,210,fireworkX-10,200,fireworkX-20,195,fireworkX-20,205);
  quad(fireworkX-20,195,fireworkX-20,205,fireworkX-30,208,fireworkX-30,201);
  quad(fireworkX-30,208,fireworkX-30,201,fireworkX-40,198,fireworkX-40,203);
  quad(fireworkX-40,198,fireworkX-40,203,fireworkX-50,208,fireworkX-50,205);
  quad(fireworkX-50,208,fireworkX-50,205,fireworkX-70,198,fireworkX-70,198)
  quad(fireworkX,195,fireworkX,205,fireworkX+10,210,fireworkX+10,200);
  quad(fireworkX+10,210,fireworkX+10,200,fireworkX+20,198,fireworkX+20,212);
  quad(fireworkX+20,198,fireworkX+20,212,fireworkX+25,210,fireworkX+25,200);
  fill(0,0,0);
   ellipse(fireworkX-15,210,15,13);
  ellipse(fireworkX+15,210,15,13);
  fill(250,0,0);
  triangle(fireworkX-50,185,fireworkX-15,190,fireworkX-40,200);
  
  fill(255,255,255);
  ellipse(speechX+3,165,80,40);
  
  fill(250,0,0);
  textSize(textSizeX);
  text("KACHOW!",textX-10,170);
  
  
  speechX +=2.5
  textX +=2.5
  textSizeX +=0.3
  fireworkX +=4;

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
