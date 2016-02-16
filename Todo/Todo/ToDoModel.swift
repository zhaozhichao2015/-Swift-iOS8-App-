//
//  ToDoModel.swift
//  Todo
//
//  Created by 赵志超 on 16/2/14.
//  Copyright © 2016年 zhaozhichao. All rights reserved.
//

import UIKit

class ToDoModel: NSObject {
    var id:String
    var image:String
    var title:String
    var date:NSDate

    init(id:String, image:String, title:String, date:NSDate) {
        self.id = id
        self.title = title
        self.image = image
        self.date = date
    }
    
}
