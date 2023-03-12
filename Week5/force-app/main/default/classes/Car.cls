public class Car Extends Vehicle{
    private Integer SteeringRotation{private get;private set{
        if(SteeringRotation<=-1440)
        {SteeringRotation = -1440;}
        else if(SteeringRotation>=1440)
        {SteeringRotation = 1440;}
        else{SteeringRotation = SteeringRotation;}
    }}
    public Integer TireRotation{get; private set{
        if(TireRotation<=-90){
            TireRotation = -90;
        }else if(TireRotation>=90){
            TireRotation = 90;
        }else{TireRotation = TireRotation;}}}
    public Integer Gear{get;private set;}
    
    public Car(){
        super();
        TireRotation = 0;
        SteeringRotation = 0;
        Media.add(Medium.LAND);
    }
    public Car(Integer Speed, Integer Occupants, String Name){
        super(Speed, Occupants, Name);
         
    }
    public override void Turn(){
        Integer degrees = 15;
        SteeringRotation+=degrees;
        TireRotation+=Math.round(degrees*.0625);
        
    }
    public override void Accelerate(){
        super.Accelerate();
        Gear=(Integer)Math.ceil(0.4444 * (Math.sqrt(Speed)));
    }
    
    
}