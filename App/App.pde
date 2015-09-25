/**
 *
 * @author Rodas
 */
 
 WaterMolecule water;
 WaterMoleculeFactory waterFactory;

 void setup()
 {
   size(1024, 768);
   
   waterFactory = new WaterMoleculeFactory();
   
   frameRate(5);
 }
 void draw()
{
  background(165,186,226);
  water = (WaterMolecule) waterFactory.getMolecule();

//  line(mouseX,mouseY,random(width),random(height)); 
}

