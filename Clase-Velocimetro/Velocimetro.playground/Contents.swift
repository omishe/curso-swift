//: Playground - Velocimetro

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 150
    
    
    
    init( velocidadInicial : Velocidades){
        
        self = velocidadInicial
        
    }
    
}


class Auto {
    
    var velocidad : Velocidades
    
    init(){
        
        self.velocidad =  Velocidades(velocidadInicial: .Apagado)
        
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        
        let  velocidadActual : Int
        let  velocidadCadena : String
        
        
        switch velocidad {
            
        case .Apagado:
            
            velocidad = .VelocidadBaja
            velocidadActual  = 0
            velocidadCadena = "Apagado"
            
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            velocidadActual = 20
            velocidadCadena = "Velocidad Baja"
            
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            velocidadActual = 50
            velocidadCadena = "Velocidad Media"
            
        case .VelocidadAlta :
            velocidad = .VelocidadMedia
            velocidadActual = 150
            velocidadCadena = "Velocidad Alta"
            
        default :
            
            velocidadActual  = 0
            velocidadCadena = "Apagado"
            
            
        }
        
        
        
        
        let resultado = ( velocidadActual, velocidadCadena )
        
        return resultado
        
    }
    
}

let auto = Auto()




var rango = 1...20

for i in rango{
    
    var miVelocidad = auto.cambioDeVelocidad();
    
    print("\(i)- Mi velocidad número: \(miVelocidad.actual), mi velocidad cadena: \(miVelocidad.velocidadEnCadena)")
    
}


