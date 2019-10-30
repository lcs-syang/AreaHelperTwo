//
//  ViewController.swift
//  AreaHelperTwo
//
//  Created by Yang, Selena on 2019/10/25.
//  Copyright © 2019 Yang Selena. All rights reserved.
//

import UIKit

class TriangleViewController: UIViewController {
    
    // add outlets to the view controller, connect base, height, and result label
    @IBOutlet weak var baseInput: UITextField!
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var result: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // add outlet to the view controller, connect calculate button
    // use guard to protect from bad user input
    @IBAction func areaOfTriangle(_ sender: Any) {
        guard let base = baseInput.text else{
            result.text = "Plase enter a value for base"
            return
        }
        guard let height = heightInput.text else {
            result.text = "Please enter a value for height"
            return
        }
        guard let baseNumber = Double(base) else { return
        result.text = "Please enter a number for base"
        }
        guard let heightNumber = Double(height) else { return
            result.text = "Please enter a number for height"
        }
        
        // calculate area of triangle
        let area = baseNumber * heightNumber / 2
        let stringArea = String(area)
        // result and text
        let message = """
        The area of the Triangle is:
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

