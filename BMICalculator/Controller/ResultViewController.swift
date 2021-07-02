//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Binaya on 17/05/2021.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    var bmi: String?
    var message: String?
    var viewColor: UIColor?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmi
        messageLabel.text = message
        view.backgroundColor = viewColor
    }

    @IBAction func reCalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
