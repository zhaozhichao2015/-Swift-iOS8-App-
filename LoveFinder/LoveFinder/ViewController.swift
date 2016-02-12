//
//  ViewController.swift
//  LoveFinder
//
//  Created by 赵志超 on 16/2/11.
//  Copyright © 2016年 zhaozhichao. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.delegate = self
    }

    @IBOutlet weak var name: UITextField!
    
    
    @IBOutlet weak var gander: UISegmentedControl!
    
    
    @IBOutlet weak var birthday: UIDatePicker!
    
    
    @IBOutlet weak var heightNumber: UISlider!
    
    
    
    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var hasproperty: UISwitch!
    
    @IBOutlet weak var result: UITextView!
    
    
    
    
    @IBAction func sliderChanged(sender: AnyObject) {
        let slider = sender as! UISlider
        let i = Int(slider.value)
        slider.value = Float(i)
        height.text = "\(i)cm"

    }

    
    
    
    
    @IBAction func okTapped(sender: AnyObject) {
        let nameText = name!.text!
        
        let genderText = gander!.selectedSegmentIndex == 0 ? "高富帅":"白富美"
        
        let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        let now = NSDate()
        
        let components = gregorian?.components(NSCalendarUnit.Year, fromDate: birthday.date, toDate: now, options: NSCalendarOptions(rawValue: 0))
        
        let age = components!.year
        
        let haspropertyText = hasproperty.on ? "有房": "无房"
        
        result.text = "\(nameText),\(age)岁,\(genderText),身高\(height.text!),\(haspropertyText),求交往"
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        name.resignFirstResponder()
        return true
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

