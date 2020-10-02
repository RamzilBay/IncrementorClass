//
//  Incrementor.swift
//  SWEBasic
//
//  Created by Ramzil Bayguskarov on 29.08.2020.
//  Copyright © 2020 Ramzil Bayguskarov. All rights reserved.
//

import UIKit

/// Appends starting number 0 by 1, also have maxValue of number with possibility to set it.
    
class Incrementor {
    

    /// Declaring `number` and `maxValue` for it.
    
    var number : Int
    var maxValue : Int
    
    
    /// Setting staring `number` to `0` and `maxValue`  =  max `Int`
    
    init() {
        number = 0
        maxValue = Int.max
    }
    
    
    /// This function returns current `number` value.
    ///
    /// - Returns: Current `number` value.

    func getNumber() -> Int {
        return number
    }
    
    
    /// This function appends current value of `number` by 1.
    
    func incrementNumber() {
        if number == maxValue - 1 {
            number = 0
        } else {
            number += 1
        }
    }
    
    
    /// This function setting `maxValue`.
    ///
    /// - Warning: If `maxValue` less current `number`, sets `number` value  to 0.
    ///
    /// - Parameter maxValue: Can't be negative numer.
    
    func setMaxValue(maxValue: Int) {
        
        if maxValue < 0 {
            print("Please set max value > 0")
        } else {
                if number > maxValue {
                   number = 0
                } else {
                   self.maxValue = maxValue
                }
        }
    }
}



