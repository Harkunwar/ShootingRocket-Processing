ArrayList<Float> velocity = new ArrayList<Float>();
ArrayList<Float> shootx = new ArrayList<Float>();
ArrayList<Float> shooty = new ArrayList<Float>();
void setup (){
  size(500,500);
  rectMode(CENTER);
}

void draw(){
  background(0);
  pushMatrix();
  fill(180,133);
  stroke(255);
  strokeWeight(0.5);
  triangle(0+mouseX,mouseY-30,mouseX-14,mouseY+15,mouseX+15,mouseY+15);//ship body
  fill(0,128,255,125);
  ellipse(mouseX+1,mouseY+2.5,15,22);//cockpit
  fill(255,139);
  rect(mouseX-17.5,mouseY+5,5,20);//gunL
  rect(mouseX+17.5,mouseY+5,5,20);//gunR
  translate(width/2,height/2);//center
  strokeWeight(2);
  stroke(33,153,255,186);//planet outline
  fill(35,13,252,70);//planet fill
  translate(100,100);
  ellipse(0,0,140,140);
  noFill();
  rotate(-PI/5-PI/2);
  arc(-3,-5,43,275,58*0.01,580*0.01);
  arc(-3,-1,31,233,67*0.01,564*0.01);
  popMatrix();
  //mousePressed();
  
  for(int i=0;i<shootx.size();i++) {
    stroke(255);
    strokeWeight(5);
    velocity.set(i,velocity.get(i)+5);
    line(shootx.get(i)-17.5,shooty.get(i)-10-velocity.get(i),shootx.get(i)-17.5,shooty.get(i)-20-velocity.get(i));
    line(shootx.get(i)+17.5,shooty.get(i)-10-velocity.get(i),shootx.get(i)+17.5,shooty.get(i)-20-velocity.get(i));
    
  }
}

void mousePressed() {
  velocity.add(velocity.size(),0.0);
  shootx.add(shootx.size(),(float)mouseX);
  shooty.add(shooty.size(),(float)mouseY);
}   