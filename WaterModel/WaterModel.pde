WaterMolecule water;

void setup (){
  size(1024,720);
  water = new WaterMolecule();
  
}
void draw(){
  background(100,150,160);
  
  water.display(100,100);
}

