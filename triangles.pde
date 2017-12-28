//triangle circling around
//developed by soumyadeep das
//coordinate for middle line..230,300 to 370,300

PVector align,dot;
float a=PI;
float r=90;
float da=0.1;
float over=0.01;
float x,y,x1;




void setup(){
  
  size(600,600);
  dot=new PVector(0,0);
  align=new PVector(300,300);
  x=230;
  y=300;
  x1=370;
  frameRate(10);
  smooth();
  background(0);
  colorMode(RGB);
}

void draw(){
 // background(0);
  dot.x=align.x+r*cos(a);
  dot.y=align.y+r*sin(a);
  stroke(a*20);
  
  line(x,y,x1,y);
  line(dot.x,dot.y,x,y);
  line(dot.x,dot.y,x1,y);
  //x++;
  //x1++;
 
  a+=da;
  if(a>(TWO_PI-over) || a<(PI)){
    da=-da;
    r+=30;
    
  }
}
