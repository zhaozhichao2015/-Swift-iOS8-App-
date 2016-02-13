//
//  ViewController.swift
//  BeautyGallery
//
//  Created by 赵志超 on 16/2/13.
//  Copyright © 2016年 zhaozhichao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.delegate = self
        beautyPicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var imageName : String?
        if segue.identifier == "GoToGallery" {
            
        let index = beautyPicker.selectedRowInComponent(0)
            
            
            switch index{
                case 0 : imageName = "范冰冰"
                case 1 : imageName = "李冰冰"
                case 2 : imageName = "王菲"
                case 3 : imageName = "杨幂"
                case 4 : imageName = "周迅"
                default : imageName = nil
            }
        
            
        let vc = segue.destinationViewController as! GarreryViewController
        
        vc.imageName = imageName
        }
        
    }
    
    @IBAction func close(segue:UIStoryboardSegue){
       print("closed")
    }
    
    


}

