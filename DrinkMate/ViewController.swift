//
//  ViewController.swift
//  DrinkMate
//
//  Created by Djurre Hoeksema on 1/29/18.
//  Copyright © 2018 Maryville App Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var twoOzButton: UIButton!
    @IBOutlet weak var fourOzButton: UIButton!
    @IBOutlet weak var eightOzButton: UIButton!
    @IBOutlet weak var twelfOZButton: UIButton!
    @IBOutlet weak var sixteenOzButton: UIButton!
    @IBOutlet weak var thirtyTwoOzButton: UIButton!
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    var userName: String = "" 
    var requiredFluidIntake = 120
    var fluidToken = 0
    
    // Button pressed actions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       updateIntakeLabel()
        }
    
    func updateIntakeLabel() {
        labelOutlet.text = String(requiredFluidIntake)
        if String(requiredFluidIntake) <= String(0) {
            labelOutlet.text = "You reached your goal"
            
        }
    }

    @IBAction func twoOzButttonPressed(_ sender: UIButton) {
            requiredFluidIntake -= 2
        updateIntakeLabel()
    }
    
    @IBAction func fourOZButtonPressed(_ sender: UIButton) {
            requiredFluidIntake -= 4
        updateIntakeLabel()
    }
    
    @IBAction func eightOzButtonPressed(_ sender: UIButton) {
            requiredFluidIntake -= 8
        updateIntakeLabel()
    }
    
    @IBAction func twelfOzButttonPressed(_ sender: UIButton) {
            requiredFluidIntake -= 12
        updateIntakeLabel()
    }
    
    @IBAction func sixsteenOzButtonPressed(_ sender: UIButton) {
            requiredFluidIntake -= 16
        updateIntakeLabel()
    }
    
    @IBAction func thirdyTwoOzButtonPressed(_ sender: UIButton) {
            requiredFluidIntake -= 32
        updateIntakeLabel()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

