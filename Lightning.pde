int startX = (int)(Math.random()*275);
int startY = 20;
int endX = 150;
int endY = startX;
int t = 0;
void setup()
{
  size(300,300);
  background(0);
  strokeWeight(5);
  frameRate(250);
  
}
void draw()
{
//lightning bolt
stroke(243,247,35);
endY = startY + (int)(Math.random()*10);
endX = startX + ((int)(Math.random()*20) - 10);
line(startX, startY, endX, endY);
startX = endX;
startY = endY;
stroke(0,0,0,10);
fill(0,0,0,10);
rect(0,0,300,300);

//clouds
noStroke();
fill(95,95,86);
ellipse(275,0,150,45);
ellipse(225,0,90,55);
ellipse(150,10,100,45);
ellipse(100,0,100,45);
ellipse(75,10,75,35);
ellipse(0,0,150,45);

//stars
fill(255);
while (t < 20){
star((int)(Math.random()*275),(int)(Math.random()*275)+20,2,6,5);
t+=1;
}
}


void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
void mousePressed()
{
background(0);
startX = (int)(Math.random()*275);
startY = 20;
endX = startX;
endY = 20;
t = 0;
}
