//
//  userProfile.swift
//  DrinkMate
//
//  Created by Djurre Hoeksema on 2/12/18.
//  Copyright © 2018 Maryville App Development. All rights reserved.
//

import UIKit

class userProfile: UIViewController {

        // Textfield allows name input and thus induvauation of the user profile.
    
    @IBOutlet weak var nameTextFieldOutlet: UITextField!
    
    @IBOutlet weak var ageStepperOutlet: UIStepper!
    
    @IBOutlet weak var weightStepperOutlet: UIStepper!
    // Gender buttons outlets allow gender to be specified by user. Are named as buttons are showed.
    
    @IBOutlet weak var genderMaleButtonOutlet: UIButton!
    @IBOutlet weak var genderFemaleButtonOutlet: UIButton!
    
        // Activity buttons outlets allow Activity level of user to be specified by user. Notice that Activity is shorten to active.
    
    @IBOutlet weak var acitveSedentaryButtonOutlet: UIButton!
    @IBOutlet weak var acitveLightButtonOutlet: UIButton!
    @IBOutlet weak var acitveModeratelyButtonOutlet: UIButton!
    @IBOutlet weak var acitveVeryButtonOutlet: UIButton!
    
        // Weather buttons outlets allow the user to specify the climate they live in. Named as buttons are showed.
    
    @IBOutlet weak var weatherTropicalButtonOutlet: UIButton!
    @IBOutlet weak var weatherModerateButtonOutlet: UIButton!
    @IBOutlet weak var weatherContinatalButtonOutlet: UIButton!
    @IBOutlet weak var weatherDryButtonOutlet: UIButton!
    
    @IBOutlet weak var ageLabelOutlet: UILabel!
    
    @IBOutlet weak var weightLabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var name = nameTextFieldOutlet.text
        updateLiquidIntake()
        // Do any additional setup after loading the view.
    }
    
        // Variables
    
    var requiredLiquidIntake:Int = 54
    var ageLiquidIntake = 0
    var weightLiquidIntake = 0
    
        // Textfield actions
    @IBAction func nameTextFieldAction(_ sender: UITextField) {
    }
    
        // Age stepper, defines nessesary  liquid intake basend on the age of the user.
    
    @IBAction func ageStepperAction(_ sender: UIStepper) {
        if Int(sender.value) < 18 {
            ageLiquidIntake = 0
        } else if Int(sender.value) >= 18 || Int(sender.value) <= 65 {
            ageLiquidIntake = 5
        } else { requiredLiquidIntake = 0}
        ageLabelOutlet.text = String(Int(sender.value))
        updateLiquidIntake()
        
    }
        // weight Stepper, defines nessesary liquid intake based on the weight of the user.
    @IBAction func weightStepperAction(_ sender: UIStepper) {
        weightLiquidIntake = Int(sender.value) / 2/2
        weightLabelOutlet.text = String(Int(sender.value))
        updateLiquidIntake()
    }
    
        // Gender Liquid var
    
    var maleLiquid = 0
    var femaleLiquid = 0
    
        // Gender Button actions
    
    @IBAction func maleButtonAction(_ sender: UIButton) {
        maleLiquid = 4
        femaleLiquid = 0
        updateLiquidIntake()
    }
    
    @IBAction func femaleButtonAction(_ sender: UIButton) {
        maleLiquid = 0
        femaleLiquid = 2
        updateLiquidIntake()
    }
    
        // Activity level var
    
    var sedentaryLiquid = 0
    var lightLiquid = 0
    var moderatelyLiquid = 0
    var veryLiquid = 0
    
        // Activity level Button Actions
    @IBAction func SedentaryButtonAction(_ sender: UIButton) {
        sedentaryLiquid = -2
        lightLiquid = 0
        moderatelyLiquid = 0
        veryLiquid = 0
        updateLiquidIntake()

    }
    
    @IBAction func lightButtonAction(_ sender: UIButton) {
        sedentaryLiquid = 0
        lightLiquid = 1
        moderatelyLiquid = 0
        veryLiquid = 0
        updateLiquidIntake()

    }
    
    @IBAction func moderatelyButtonAction(_ sender: UIButton) {
        sedentaryLiquid = 0
        lightLiquid = 0
        moderatelyLiquid = 3
        veryLiquid = 0
        updateLiquidIntake()

    }
    
    @IBAction func veryButtonAction(_ sender: UIButton) {
        sedentaryLiquid = 0
        lightLiquid = 0
        moderatelyLiquid = 0
        veryLiquid = 5
        updateLiquidIntake()

    }
    
        // weather variables
    
    var tropicalIntake = 0
    var moderateIntake = 0
    var continatalIntake = 0
    var dryIntake = 0
    
        // weather Button actions
    
    
    @IBAction func tropicalButtonAction(_ sender: UIButton) {
        tropicalIntake = 12
        moderateIntake = 0
        continatalIntake = 0
        dryIntake = 0
        updateLiquidIntake()
    }
    
    @IBAction func moderateButtonAction(_ sender: UIButton) {
        tropicalIntake = 0
        moderateIntake = 4
        continatalIntake = 0
        dryIntake = 0
        updateLiquidIntake()
    }
    
    @IBAction func continantalButtonAction(_ sender: UIButton) {
        tropicalIntake = 0
        moderateIntake = 0
        continatalIntake = 0
        dryIntake = 0
        updateLiquidIntake()
    }
    
    @IBAction func dryButtonAction(_ sender: UIButton) {
        tropicalIntake = 0
        moderateIntake = 0
        continatalIntake = 0
        dryIntake = 8
        updateLiquidIntake()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   
    
        }
  
    
    @IBOutlet weak var tets: UILabel!
    
    func updateLiquidIntake() {
        tets.text = String(requiredLiquidIntake + ageLiquidIntake + weightLiquidIntake + maleLiquid + femaleLiquid + sedentaryLiquid + lightLiquid + moderatelyLiquid + veryLiquid + tropicalIntake + moderateIntake + continatalIntake + dryIntake)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let ViewController = segue.destination as? ViewController {
            updateLiquidIntake()
            ViewController.requiredFluidIntake = Int(tets.text!)!
            
        }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
