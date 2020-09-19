
	/***********  SOUND ***************
	 * Some computers are unable to play sounds. 
	 * If you cannot play sound on this computer, set canPlaySounds to false.
	 * If you are not sure, ask your teacher 
	 * *****************/
boolean canPlaySounds = true;

void setup() {
  
  //Find a Where's Waldo picture and drop it into this sketch.     
  PImage waldo = loadImage("waldo.jpg"); // Change this to match your file name.
  PImage waldo2 = loadImage("waldo2.png");
  size(900, 900); 
  // Resize your waldo picture to the same size as the sketch
  waldo.resize(900,900);
  waldo2.resize(100,100);
  background(waldo);
 fill(#000000);
  rect(0,0,150,150);
  image(waldo2,25,25);
  // Make the waldo image your sketch background

}

void draw() {

      // If the user presses the mouse .......
  if(mousePressed){
  println("X: " + mouseX + " Y: " + mouseY); 
  }
          // Use this print statement to help you find the location of Waldo to use in the code below
          // println("X: " + mouseX + " Y: " + mouseY); 
    
          // Check if the location of the mouse is anywhere on the image of Waldo.
          // If it is, print “Waldo found!”  Use the text() command to write it on the sketch.
          if(mouseX>260&&mouseX<289&&mouseY>173&&mouseY<234&&mousePressed){
          
                if (canPlaySounds) {
                    // Use the playWoohoo() method below. You can change the sound if you want 
                   fill(#000000);
                    text("Waldo found!",mouseX,mouseY);
                    playWoohoo();
                    delay(3000);
                    exit();
                } 
          }
          // However, if the mouse is not on Waldo, print "Not here!" 
          // Use the text() command to write it on the sketch. 
        else if(mousePressed){
                if (canPlaySounds) {
                    // Use the playDoh() method below. You can change the sound if you want 
                    text("Not here!",mouseX,mouseY);
                   fill(#000000);
                    playDoh();
                }       
          }
}

/*********************  This code is needed to play sounds. ********************
              Remove the comment markers below, but DON'T CHANGE THE CODE */
              


import ddf.minim.*;
Minim minim = new Minim(this); 

AudioSample woohoo;
void playWoohoo() {
     if (woohoo == null) 
         woohoo = minim.loadSample("homer-woohoo.wav");
     woohoo.stop();
     woohoo.trigger();
}

AudioSample doh;
void playDoh() {
     if (doh == null)
         doh = minim.loadSample("homer-doh.wav"); 
     doh.stop();
     doh.trigger();
}
