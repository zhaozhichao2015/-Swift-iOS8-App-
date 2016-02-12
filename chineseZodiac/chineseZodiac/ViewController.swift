//
//  ViewController.swift
//  chineseZodiac
//
//  Created by 赵志超 on 16/2/11.
//  Copyright © 2016年 zhaozhichao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }
    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    var offset = 4
    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        if let year = Int(yearOfBirth.text!){
           let imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
        }else{
            // input error
        }
    }
}

