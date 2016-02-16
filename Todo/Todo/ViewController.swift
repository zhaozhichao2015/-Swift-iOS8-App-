//
//  ViewController.swift
//  Todo
//
//  Created by 赵志超 on 16/2/14.
//  Copyright © 2016年 zhaozhichao. All rights reserved.
//

import UIKit

var todos: [ToDoModel] = []

class ViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    func dateFromString(dateStr: String) -> NSDate? {
        let dateFrommatter = NSDateFormatter()
        dateFrommatter.dateFormat = "yyyy-MM-dd"
        let date = dateFrommatter.dateFromString(dateStr)
        return date
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        todos = [ToDoModel(id: "1", image: "child-selected", title: "1. 去游乐场", date: dateFromString("2014-10-20")!),
            ToDoModel(id: "2", image: "shopping-cart-selected", title: "2. 购物", date: dateFromString("2014-10-28")!),
            ToDoModel(id: "3", image: "phone-selected", title: "3. 打电话", date: dateFromString("2014-10-30")!),
            ToDoModel(id: "4", image: "travel-selected", title: "4. Travel to Europe", date: dateFromString("2014-10-31")!)]
        
        navigationItem.leftBarButtonItem = editButtonItem()
    }

    
    
    @IBAction func closed(segue:UIStoryboardSegue){
        print("closed")
        tableView.reloadData()
    }
    
    
    override func setEditing(editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        tableView.setEditing(editing, animated: animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "EditTodo"{
            let vc = segue.destinationViewController as! DetailViewController
            let indexPath = tableView.indexPathForSelectedRow
            if let index = indexPath{
               vc.todo = todos[index.row]
            }
        }
    }
    

}

