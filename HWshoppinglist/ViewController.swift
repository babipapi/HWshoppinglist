//
//  ViewController.swift
//  HWshoppinglist
//
//  Created by Daniel on 2019/4/27.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var firstStepper: UIStepper!
    @IBOutlet weak var secondStepper: UIStepper!
    @IBOutlet weak var thirdStepper: UIStepper!
    
    var totalprice1 = 0
    var totalprice2 = 0
    var totalprice3 = 0
    var totalprice = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       totalLabel.text = "0"
    }
    @IBAction func first(_ sender: UIStepper) {
        let firstcount = Int(firstStepper.value)
        
        firstLabel.text = "\(firstcount)"
        let firsttotal = "\(firstcount * 3490)"
        totalprice1 = Int(firsttotal)!
        totalprice = totalprice1 + totalprice2 + totalprice3
        totalLabel.text = String(totalprice)
    }
    
    @IBAction func second(_ sender: UIStepper) {
        let secondcount = Int(secondStepper.value)
        
        secondLabel.text = "\(secondcount)"
        let secondtotal = "\(secondcount * 599)"
        totalprice2 = Int(secondtotal)!
        totalprice = totalprice1 + totalprice2 + totalprice3
        totalLabel.text = String(totalprice)
        
    }
    
    @IBAction func third(_ sender: UIStepper) {
        let thirdcount = Int(thirdStepper.value)
        
        thirdLabel.text = "\(thirdcount)"
        let thirdtotal = "\(thirdcount * 749)"
      totalprice3 = Int(thirdtotal)!
        totalprice = totalprice1 + totalprice2 + totalprice3
        totalLabel.text = String(totalprice)
    }
    
    
    @IBAction func restart(_ sender: UIButton) {
        firstStepper.value = 0
        firstLabel.text = nil
        secondStepper.value = 0
        secondLabel.text = nil
        thirdStepper.value = 0
        thirdLabel.text = nil
        totalprice1 = 0
        totalprice2 = 0
        totalprice3 = 0
        totalprice = 0
        totalLabel.text = "0"
        
    }
}

