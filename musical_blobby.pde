float x,y,a;

float x1,y1,x2,y2;
float r;
float r2;
boolean isBlue=true;
float h;
float amp;
float center;
void setup(){
  smooth();
  size(400,400);
  colorMode(RGB);
  a=0;
  amp=12;
  center=width/2;
  frameRate(8);

}



void draw(){
 //background(8,20,40);
 background(0,0,10); 
  
  strokeWeight(5);

  
  r2=random(100,130);
  for(a=0;a<TWO_PI;a+=0.1){
    r=random(amp);
    if(isBlue){
    stroke(random(255),30,160,150);
      isBlue=false;
    }else{
      isBlue=true;
    stroke(random(255), 30, 160,150);
    }
    
    ellipse(center+60*cos(a),center+60*sin(a),4,4);  
      ellipse(center,center,100*cos(a),100*sin(a));
    x=center+r2*cos(a);
    y=center+r2*sin(a);
    x1=center+(r2+r)*cos(a);
    y1=center+(r2+r)*sin(a);
    x2=center+(r2-r)*cos(a);
    y2=center+(r2-r)*sin(a);
    line(x,y,x1,y1);
    line(x,y,x2,y2);
    
  
    } 
  

}