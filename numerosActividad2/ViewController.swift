//
//  ViewController.swift
//  numerosActividad2
//
//  Created by omishe on 10/29/15.
//  Copyright © 2015 omishe. All rights reserved.

/* imprimir los números del 0 al 100 bajo las siguientes condiciones:


1- Divisible entre 5           Número + #Bingo

2- Número par                  Número + #Par

3- Impar                       Número + #Impar

4- Rango 30...40               Número + #Viva Swift


*/
//

import UIKit



class ViewController: UIViewController {
// Nuevo
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
       let rangoNum = 0...100
        
        for numActual in rangoNum{
        
            
            
            
            if (numActual % 5) == 0  {
                
                print("\(numActual) #Bingo \t")
                
            }
            
            if (numActual % 2) == 0 {
                
                print("\(numActual ) #Par \t")
                
            }
            
            if(numActual % 2) != 0 {
                
                print("\(numActual ) #Impar \t")
                
            }
            
            if numActual >= 30 && numActual <= 40 {
                
                print("\(numActual) #Viva Swift")
                
            }
            
            
            
        
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

