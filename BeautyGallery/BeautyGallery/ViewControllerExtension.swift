//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by 赵志超 on 16/2/13.
//  Copyright © 2016年 zhaozhichao. All rights reserved.
//

import UIKit

extension ViewController:UIPickerViewDataSource,UIPickerViewDelegate {
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return beauties.count
        
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return beauties[row]
    }


}
