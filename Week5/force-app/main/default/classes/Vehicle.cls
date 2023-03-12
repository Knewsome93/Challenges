public abstract class Vehicle {
    
    public enum Medium {LAND, AIR, WATER}
    public Integer Speed{get; set{
        if(Speed<0){
            Speed = 0;
        }
   }}
    public String Name{get; private set;}
    public Integer Occupants{get;set{if(Occupants<0){Occupants=0;}}}
    public Final Integer Capacity = 1;
    protected List<Medium> Media = new List<Medium>();
    
    public Vehicle(){
        this( 0, 4,'Sedan');
           }
    public Vehicle(Integer Speed, Integer Occupants, String Name){
        this.Speed = Speed;
        this.Occupants= Occupants;
        this.Name = Name;
    }
    
    public virtual void Accelerate(){
        Speed = Speed + 15;
    }
    
   public abstract void Turn();
    
    public override String toString(){
        return 'Current Speed: '+ Speed + '. Media includes: '+ Media +'. Name: ' + Name + '. Occupants: ' + Occupants;
    }
                        
        

}