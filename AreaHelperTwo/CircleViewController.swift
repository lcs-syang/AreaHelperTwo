//
//  ViewController.swift
//  AreaHelperTwo
//
//  Created by Yang, Selena on 2019/10/25.
//  Copyright © 2019 Yang Selena. All rights reserved.
//

import UIKit

class CircleViewController: UIViewController {
    
   // connect outlet to the view controller, radius and result label
    @IBOutlet weak var radiusInput: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // connect outlet to view controller, calculate button
    // use guard to protect bad user input
    @IBAction func areaOfCircle(_ sender: Any) {
        guard let radius = radiusInput.text else {
            result.text = "Please enter a value for radius"
            return
        }
        guard let radiusNumber = Double(radius) else { return
            result.text = "Please enter a number for radius"
        }
        
        // calculate circle area
        let pi = 3.1415926535
        let area = pi * radiusNumber * radiusNumber
        let stringArea = String(area)
        result.text = stringArea
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
}

}
