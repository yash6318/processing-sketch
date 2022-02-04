float radius;
float center;
PVector c,r,c1;

void setup(){
  size(500,500,P3D);
  c=new PVector(50,250);
  r=new PVector(20,0);
  frameRate(8);
  smooth(10);
  colorMode(HSB);
  c1=new PVector(50,250);
  ellipseMode(CENTER);
}


void draw(){
  background(15);
  float amplitude=random(80,160);
  for(int i=1;i<=20;i++){
    strokeWeight(random(1,4));
  stroke(i*10,255,255,random(255));
  noFill();
  radius=map(noise(c1.x,c1.y),0,1,30,amplitude);
  ellipse(c.x,c.y,r.x,radius);
  c.add(r);
  c1.add(r);
  }
  c.x=50;
}