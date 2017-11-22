//
//  TemperatureModel.swift
//  TemperatureDemo
//
//  Created by Maribel Montejano on 11/21/17.
//  Copyright © 2017 Maribel Montejano. All rights reserved.
//

import UIKit

class TemperatureModel {
    
    func chooseImage(celsius: Int) -> UIImage? {
        if celsius < 0 {
            return UIImage(named: "ice")
        } else if celsius <= 100 {
            return UIImage(named: "water")
        } else {
            return UIImage(named: "steam")
        }
    }
    
    func toFahrenheit(celsius: Int) -> String {
        return String(Double(celsius) * 1.8 + 32)
    }
}
