//
//  ViewControllerExtension.swift
//  Todo
//
//  Created by 赵志超 on 16/2/15.
//  Copyright © 2016年 zhaozhichao. All rights reserved.
//

import UIKit
extension ViewController: UITableViewDataSource,UITableViewDelegate{
 
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
            return todos.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("todocell")! as UITableViewCell
        let todo : ToDoModel
        todo = todos[indexPath.row] as ToDoModel
        
        
        let image = cell.viewWithTag(101) as! UIImageView
        let title = cell.viewWithTag(102)as! UILabel
        let date = cell.viewWithTag(103)as! UILabel
        
        image.image = UIImage(named: todo.image)
        title.text = todo.title
        // 本地化的数据格式显示
        let locale = NSLocale.currentLocale()
        let dateFormat = NSDateFormatter.dateFormatFromTemplate("yyyy-MM-dd", options: 0, locale: locale)
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = dateFormat
        date.text = dateFormatter.stringFromDate(todo.date)
        return cell
    }
    
    // MARK -- Editing
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if editingStyle == UITableViewCellEditingStyle.Delete{
            todos.removeAtIndex(indexPath.row)
               tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    
    // MARK -- Move
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool{
        return editing
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath){
        let todo = todos.removeAtIndex(sourceIndexPath.row)
        todos.insert(todo, atIndex: sourceIndexPath.row)
    }
    
    
    
}