//
//  ViewController.swift
//  ContinuousValuesGeneratorDemo
//
//  Created by Augus on 7/17/16.
//  Copyright © 2016 iAugus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var `switch`: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func higherButtonDidTap(_ sender: AnyObject) {
        execute(`switch`.isOn, end: 1)
    }

    @IBAction func lowerButtonDidTap(_ sender: AnyObject) {
        execute(`switch`.isOn, end: 0)
    }
    
    private func execute(_ isSwitchOn: Bool, end: CGFloat) {
        let start = UIScreen.main().brightness
        
        if isSwitchOn {
            ContinuousValuesGeneratorWithDuration(3, startValue: start, endValue: end, offsetPerTime: 0.01, generatedValue: {
                UIScreen.main().brightness = $0
                }, completion: nil)
            
        } else {
            ContinuousValuesGenerator(startValue: start, endValue: end, offsetPerTime: 0.01, generatedValue: {
                UIScreen.main().brightness = $0
                }, completion: nil)
        }
    }
}

