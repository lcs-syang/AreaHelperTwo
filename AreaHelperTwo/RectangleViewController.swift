//
//  ViewController.swift
//  AreaHelperTwo
//
//  Created by Yang, Selena on 2019/10/25.
//  Copyright © 2019 Yang Selena. All rights reserved.
//

import UIKit

class RectangleViewController: UIViewController {
    
    // add outlet to the view controller, connect length, width and result label
    @IBOutlet weak var lengthInput: UITextField!
    @IBOutlet weak var widthInput: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // add outlet to the view controller, connect calculate button
    // use guard to protect bad user input
    @IBAction func areaOfRectangle(_ sender: Any) {
        guard let length = lengthInput.text else {
            result.text = "Please enter a value for length"
            return
        }
        guard let width = widthInput.text else {
            result.text = "Please enter a value for width"
            return
        }
        guard let lengthNumber = Double(length) else { return
            result.text = "Please enter a number for length"
        }
        guard let widthNumber = Double(width) else { return
            result.text = "Please enter a number for width"
        }
        
        // calculate area of rectangle
        let area = widthNumber * lengthNumber
        let stringArea = String(area)
        // result and text
        let message = """
        The area of the rectangle is:
        \(stringArea)
        Square units
        """
        result.text = message

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)    
}

}
