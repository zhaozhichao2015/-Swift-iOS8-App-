//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by 赵志超 on 16/2/13.
//  Copyright © 2016年 zhaozhichao. All rights reserved.
//

import UIKit
class GarreryViewController: UIViewController {
    
    var imageName: String?
    @IBOutlet weak var beautyimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if imageName != nil{
            beautyimage.image = UIImage(named: imageName!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(segue:UIStoryboardSegue){
        print("closed")
    }
    
    
        
}

    