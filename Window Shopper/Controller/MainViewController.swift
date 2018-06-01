//
//  ViewController.swift
//  Window Shopper
//
//  Created by Conor Molloy on 30/05/2018.
//  Copyright © 2018 Conor Molloy. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageText: CurrencyTextField!
    @IBOutlet weak var priceText: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let calculationButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculationButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calculationButton.setTitle("Calculate", for: .normal)
        calculationButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calculationButton.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        wageText.inputAccessoryView = calculationButton
        priceText.inputAccessoryView = calculationButton
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }

    @objc func calculate() {
        if let wageTextLocal = wageText.text, let priceTextLocal = priceText.text {
            if let wage = Double(wageTextLocal), let price = Double(priceTextLocal) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        } else {
            
        }
    }

    @IBAction func clearCalculatorButtonPressed(_ sender: Any) {
        wageText.text = ""
        priceText.text = ""
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
}

