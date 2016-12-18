//
//  ViewController.swift
//  Tipper
//
//  Created by Thuan Nguyen on 12/16/16.
//  Copyright © 2016 Thuan Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSegment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func tipChange(_ sender: Any) {
        calculate(0)
    }
    @IBAction func calculate(_ sender: Any) {
        let tipPercent = [0.15,0.18,0.21]
        let bill = (Double)(billLabel.text!) ?? 0
        let tip = bill*tipPercent[tipSegment.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip )
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    

}

