//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Владислав Павленко on 4/23/19.
//  Copyright © 2019 Владислав Павленко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.addTarget(self, action: #selector(buttonTouchDownRepeat(_:)), for: .touchDownRepeat)
    }
    
    // Button(UIButton) control. Tapped action.
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
    }
    
    // Button(UIButton) control. Touch down repeat action.
    @IBAction func buttonTouchDownRepeat(_ sender: UIButton) {
        print("Button was tapped out!")
    }
    
    // Switch(UISwitch) control. Toggle action.
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off!")
        }
    }
    
    // Slider(UISlider) control. Value change action.
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    // Text field(UITextField) control. End editing action.
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    // Text field(UITextField) control. Text change action.
    @IBAction func textChange(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    //Tap gesture(UITapGestureRecognozer) control. Tap gesture action.
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}
