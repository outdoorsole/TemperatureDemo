//
//  ViewController.swift
//  TemperatureDemo
//
//  Created by Maribel Montejano on 11/21/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    var tempModel = TemperatureModel()
    
    @IBOutlet var tempRange: TemperatureRange!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tempPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // the default row will be halfway in between
        let defaultRow = tempRange.temps.count / 2
        
        tempPicker.selectRow(defaultRow, inComponent: 0, animated: false)
        
        tempLabel.text = ("\(tempModel.toFahrenheit(celsius: tempRange.temps[defaultRow])) °F")
        
        imageView.image = tempModel.chooseImage(celsius: tempRange.temps[defaultRow])
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(tempRange.temps[row]) + " °C"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let tempC = tempRange.temps[row]
        print("didSelectRow \(row) for temp \(tempRange.temps[row]) C, \(tempModel.toFahrenheit(celsius: tempRange.temps[row])) F")
        tempLabel.text = ("\(tempModel.toFahrenheit(celsius: tempC)) °F")
        
//        if tempC < 0 {
//            imageView.image = UIImage(named: "ice")
//        } else if tempC <= 100 {
//            imageView.image = UIImage(named: "water")
//        } else {
//            imageView.image = UIImage(named: "steam")
//        }
        
    }

}

