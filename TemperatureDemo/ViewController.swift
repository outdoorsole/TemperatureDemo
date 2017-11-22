//
//  ViewController.swift
//  TemperatureDemo
//
//  Created by Maribel Montejano on 11/21/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var tempModel = TemperatureModel()
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tempLabel.text = ("\(tempModel.toFahrenheit(celsius: tempRange.temps[0])) °F")
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(temps[row]) + " °C"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let tempC = temps[row]
        print("didSelectRow \(row) for temp \(temps[row]) C, \(toFahrenheit(celsius: temps[row])) F")
        tempLabel.text = ("\(toFahrenheit(celsius: tempC)) °F")
        
//        if tempC < 0 {
//            imageView.image = UIImage(named: "ice")
//        } else if tempC <= 100 {
//            imageView.image = UIImage(named: "water")
//        } else {
//            imageView.image = UIImage(named: "steam")
//        }
        
    }

}

