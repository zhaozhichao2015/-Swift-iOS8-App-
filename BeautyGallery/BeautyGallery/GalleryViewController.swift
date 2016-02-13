//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by 赵志超 on 16/2/13.
//  Copyright © 2016年 zhaozhichao. All rights reserved.
//

import UIKit
import Social

class GarreryViewController: UIViewController {
    
    var imageName: String?
    @IBOutlet weak var beautyimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let name = imageName{
            beautyimage.image = UIImage(named: name)
            navigationItem.title = name
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(segue:UIStoryboardSegue){
        print("closed")
    }
    
    
    @IBAction func shareTapped(sender: AnyObject) {
        let controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter);
        controller.setInitialText("一起来玩女生画廊吧");
        controller.addImage(beautyimage.image);
        self.presentViewController(controller, animated: true, completion: nil);
    }
        
}

    