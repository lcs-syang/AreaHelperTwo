//
//  ViewController.swift
//  AreaHelperTwo
//
//  Created by Yang, Selena on 2019/10/25.
//  Copyright © 2019 Yang Selena. All rights reserved.
//

import UIKit

class RectangleViewController: UIViewController {
    
    @IBOutlet weak var lengthInput: UITextField!
    @IBOutlet weak var widthInput: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
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
        
        let area = widthNumber * lengthNumber
        let stringArea = String(area)
        result.text = stringArea
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)    
}

}
