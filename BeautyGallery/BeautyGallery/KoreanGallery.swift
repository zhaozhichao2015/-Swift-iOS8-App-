//
//  KoreanGallery.swift
//  BeautyGallery
//
//  Created by 赵志超 on 16/2/14.
//  Copyright © 2016年 zhaozhichao. All rights reserved.
//

import UIKit
import Social

class KoreanGallery: UIViewController {
    
    @IBOutlet weak var beautyimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func facebookTapped(sender: AnyObject) {
        let controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook );
        controller.setInitialText("一起来玩女生画廊吧");
        controller.addImage(beautyimage.image);
        self.presentViewController(controller, animated: true, completion: nil);
    }
    
    @IBAction func tiitterTapped(sender: AnyObject) {
        let controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter);
        controller.setInitialText("一起来玩女生画廊吧");
        controller.addImage(beautyimage.image);
        self.presentViewController(controller, animated: true, completion: nil);
    }
    
    @IBAction func weiboTapped(sender: AnyObject) {
        let controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo);
        controller.setInitialText("一起来玩女生画廊吧");
        controller.addImage(beautyimage.image);
        self.presentViewController(controller, animated: true, completion: nil);
    }
    
    
    
    
}