//
//  ViewController.swift
//  IncrementorClass
//
//  Created by Ramzil Bayguskarov on 01.10.2020.
//  Copyright © 2020 Ramzil Bayguskarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let number = Incrementor()
        
        number.setMaxValue(maxValue: 2)
        print(number.getNumber())
        number.incrementNumber()
        print(number.getNumber())
        number.incrementNumber()
        print(number.getNumber())
    }


}

