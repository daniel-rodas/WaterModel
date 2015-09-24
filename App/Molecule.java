import processing.core.PApplet;
import java.util.ArrayList;

public class Molecule implements PAppletInterface {

    /**
     * 
     */
    public MoleculePApplet pApplt; 
    protected ArrayList<ArrayList<AtomInterface>>  atoms;
    
    Molecule (){
      pApplt = new MoleculePApplet();
    }
    
   public PApplet getPApplet()
  {
    return (PApplet) pApplt;
  }
}
