//
//  ViewController.swift
//  BMICalculator
//
//  Created by Binaya on 15/05/2021.
//

import UIKit

class BMICalculatorViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.minimumValue = 0
        heightSlider.maximumValue = 2.5
        heightSlider.value = 1.25
        weightSlider.minimumValue = 0
        weightSlider.maximumValue = 200
        weightSlider.value = 100
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmi = calculatorBrain.getBMIValue()
            resultVC.message = calculatorBrain.getAdviceMessage()
            resultVC.viewColor = calculatorBrain.getViewColor()
        }
    }
    
}

