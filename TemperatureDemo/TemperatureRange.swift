//
//  TemperatureRange.swift
//  TemperatureDemo
//
//  Created by Maribel Montejano on 11/21/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class TemperatureRange: NSObject, UIPickerViewDataSource {
    var temps = [10, 12, 15, 18, 20, 21, 25, 26, 31, 32, 33, 34, 35, 36, 37, 38, 39]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temps.count
    }
}
