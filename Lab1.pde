color bgColor = color(255,255,255); //sets bg to white
float size = 1;
float mouse;
color line = color (0,0,0);

void setup () {
  size(800,600, P2D); //P2D enables 2D GPU acceleration
  background(bgColor); 
}
void draw () {
  
  if (mousePressed && mouseButton == LEFT) 
  {
    stroke(line);
    line(mouseX,mouseY,pmouseX,pmouseY);
    strokeWeight(size);
  }
  
  if (size<=0)
   {
     size = 1; //negative numbers make line look dotted, weird.
   }
   println (size);
   
  if (keyPressed)
  {
   if (key == 'r')
   {
     line = color (255,0,0);
   }
   if (key == 'g')
   {
     line = color (0,255,0);
   }
   if (key == 'b')
   {
     line = color (0,0,255);
   } 
   if (key == 'w')
   {
     line = color (255,255,255);
   } 
   if (key == 'o')
   {
     line = color (0,0,0);
   } 
  }
  
  else if (mousePressed && mouseButton == RIGHT)
  {
    rectMode(CORNER);
    fill(bgColor);
    stroke(bgColor);
    rect(0,0,width,height);
  }
}

 void mouseWheel(MouseEvent event) {
    mouse = event.getCount();
    size = size + mouse;
 }
