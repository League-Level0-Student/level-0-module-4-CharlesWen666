PImage face;
void setup() {
  
  face = loadImage("face.jpeg");
  size(800,800);
    face.resize(800,800);
    
}

void draw() {
  fill(#FFFFFF);
  background(face);
  ellipse(320,300,160,160);
  ellipse(500,300,160,160);
 if(mouseX<250){
 mouseX=250;
 }
 if(mouseX>370){
 mouseX=370;
 }
 if(mouseY<260){
 mouseY=260;
 }
 if(mouseY>360){
 mouseY=360;
 }
  
  fill(#000000);
 ellipse(mouseX, mouseY, 50, 50);
  ellipse(mouseX+180, mouseY, 50, 50);

  
}
