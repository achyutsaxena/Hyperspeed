int[] x = new int[500];
int[] y = new int[500];
int[] x_add = new int[500];
int[] y_add = new int[500];
color w = color(255);
color transparent = color(0,0,0,0);
int centerx = (int)1920/2;
int centery = (int)1080/2;
  int x1 = 20;
  int y1 = 540;
  int x2 = 50;
  int y2 = 540;
  

void setup() {

  size(1920, 1080);
  frameRate(120);
  background(w);
  for (int i = 0; i < 500; i++)
  {
   x[i] = (int)random(1, 1920);
    y[i] = (int)random(1, 1080);
  }
  
  for (int i = 0; i < 500; i++)
  {
    x_add[i] = x[i] - centerx;
    y_add[i] = y[i] - centery;
  }
  
}

void draw() {
  background(0);
  fill(transparent);
  stroke(transparent);
  circle(960,540,200);
  drawLines();
  
}

void drawStars()
{
    for(int i = 0; i < 500; i++)
  {
    fill(w);
    circle(x[i],y[i],2);
  }
}

void drawLines()
{
  stroke(w);
  for(int i = 0; i < 500; i++)
  {
    
    line(x[i],y[i],x[i]+x_add[i],y[i]+y_add[i]);
  }
}
