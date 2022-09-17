int x = 100;
int y = 200;

void mousePressed() {
  loop();
}

void mouseReleased() {
  noLoop();
}

void setup() {
  size(500, 500);
  noLoop();
}

//dot decorations
boolean shift = true;
void draw() {
  background(234, 19, 62);
  stroke(227, 30, 48);
  fill(227, 156, 80);
  for(int r = 0; r < 250; r +=(int)(Math.random()*20)+10){
    for(int i = 0; i< 150; i+=(int)(Math.random()*20)+10){
      if (shift == true)
        ellipse(400+i, r, 5, 5);
      else
        ellipse(410+i, r, 5, 5);
    }
    if(shift == true)
      shift = false;
    else 
      shift = true;
  }
   for(int r = 0; r < 100; r +=(int)(Math.random()*20)+10){
    for(int i = 0; i< 150; i+=(int)(Math.random()*20)+10){
      if (shift == true)
        ellipse(i, r, 5, 5);
      else
        ellipse(10+i, r, 5, 5);
    }
    if(shift == true)
      shift = false;
    else 
      shift = true;
  }
  
  //bird pattern
   for(int r = 0; r < 250; r +=(int)(Math.random()*20)+10){
    for(int i = 0; i< 150; i+=(int)(Math.random()*20)+10){
      if (shift == true)
        ellipse(200+i, r+400, 5, 5);
      else
        ellipse(230+i, r+400, 5, 5);
    }
    if(shift == true)
      shift = false;
    else 
      shift = true;
  }
  rotate(7*PI/4);
  scale(0.8);
    for(int r = 0; r < 1500; r+= 200){
    for(int i = 0; i < 2000; i+=200){
      bird(600-i, r+100);
    }
  }
  scale(0.5);
  for(int r = 0; r < 1500; r+= 400){
    for(int i = 0; i < 2000; i+=400){
      bird(600-i, r);
    }
  }
}

void bird(int x, int y){
//wing colors
  if (Math.random() < .5)
    fill(232, 229, 220);
  else 
    fill(137, 130, 130);
  beginShape();
  noStroke();
  vertex(x, y-((int)190/2));
  bezierVertex(x+85, y-76, x+61, y+17, x+57, y-1); // top wing convex
  bezierVertex(x+61, y-17, x+69, y+76, x, y+((int)180/2)); //bottom wing convex
  bezierVertex(x+36, y+44, x+25, y+24, x+24, y+25); // bottom wing concave
  bezierVertex(x+39, y+26, x+43, y+5, x+39, y+8); // bottom quarter-circle 
  bezierVertex(x+58, y+8, x+77, y-4, x+39, y-11); // right quarter-circle
  bezierVertex(x+39, y-20, x+31, y-23, x+23, y-26); // top quarter-circle
  bezierVertex(x+31, y-44, x+25, y-60, x+3, y-93); //top wing concave
  endShape();
  
  //neck colors
  if (Math.random() < .5)
    fill(54,43, 7);
  else
    fill(64,64,64);
  beginShape();
  vertex( x, y+((int)180/2));
  bezierVertex(x+36, y+44, x+25, y+24, x+24, y+25); // bottom wing concave
  bezierVertex(x+39, y+26, x+43, y+5, x+39, y+8); // bottom quarter-circle 
  bezierVertex(x+58, y+8, x+77, y-4, x+39, y-11); // right quarter-circle
  bezierVertex(x+39, y-20, x+31, y-23, x+23, y-26); // top quarter-circle
  bezierVertex(x+19, y+12, x-75, y-18, x-68, y+4); //upper neck stroke
  bezierVertex(x-66, y+13, x-52, y+12, x-48, y+10); //lower neck stroke
  bezierVertex(x+40, y-8, x+40, y+42, x, y+(int)180/2); //lower wing concave
  endShape();
  
  stroke(222, 184, 58);
  strokeWeight(1.6);
  noFill();
  //wing line
  beginShape();
  vertex(x, y-((int)190/2));
  bezierVertex(x+35, y-95, x+36, y-30, x+30, y-23);
  endShape();
  bezier(x+13, y-((int)190/2)+4, x+45, y-95, x+46, y-30, x+40, y-12);
  bezier(x+33, y-((int)190/2)+15, x+50, y-80, x+56, y-30, x+45, y-10);
  bezier(x+46, y-((int)190/2)+26, x+60, y-56, x+63, y-30, x+55, y-8);
  bezier(x+59, y-((int)190/2)+54, x+68, y-32, x+63, y-3, x+59, y-1);
  // bottom wing
  bezier(x+2, y+((int)190/2)+-6, x+35, y+95, x+36, y+30, x+30, y+23);
  bezier(x+18, y+((int)190/2)-9, x+45, y+82, x+46, y+30, x+35, y+22);
  bezier(x+35, y+((int)190/2)-21, x+58, y+61, x+50, y+17, x+37, y+17);
  bezier(x+49, y+((int)190/2)-44, x+65, y+20, x+33, y+10, x+38, y+12);
  bezier(x+53, y+((int)190/2)-56, x+71, y+12, x+39, y+10, x+44, y+8);
  bezier(x+57, y+((int)190/2)-74, x+64, y+21, x+64, y+6, x+59, y+0);
  endShape();
  
  stroke(222, 184, 58);
  strokeWeight(1.6);
  noFill();
  //strokes for the drawing
  beginShape();
  vertex(x, y-((int)190/2));
  bezierVertex(x+40, y-40, x+40, y-3, x-40, y-4); //uppper wing concave
  bezierVertex(x-45, y-6, x-68, y-8, x-70, y+4); //upper neck stroke
  bezierVertex(x-65, y+12, x-52, y+12, x-48, y+10); //lower neck stroke
  bezierVertex(x+40, y-8, x+40, y+44, x, y+(int)180/2); //lower wing concave
  arc(x+24, y-8, 30, 36, 3*PI/2, 2*PI);
  arc(x+40, y, 40, 20, 3*PI/2, PI+(3*PI/2));
  arc(x+24, y+8, 30, 36, 0, PI/2);
  line(x-55, y+4, x-60+random(5), y+4); // eye
  line(x-70, y+4, x-80, y+4); //beak
  line(x+60, y-2, x+115, y-2); // upper leg
  line(x+60, y+4, x+115, y+4); // lower leg
  endShape();
}
