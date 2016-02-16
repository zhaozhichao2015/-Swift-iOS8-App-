//
//  DetailViewController.swift
//  Todo
//
//  Created by 赵志超 on 16/2/15.
//  Copyright © 2016年 zhaozhichao. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITextFieldDelegate {
    
    var todo:ToDoModel?
    
    @IBOutlet weak var childButton: UIButton!
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var shoppingCartButton: UIButton!
    @IBOutlet weak var travelButton: UIButton!
    
    
    @IBOutlet weak var todoItem: UITextField!
    @IBOutlet weak var todoDate: UIDatePicker!
    
    
    func resetButton(){
        childButton.selected  = false
        phoneButton.selected = false
        shoppingCartButton.selected = false
        travelButton.selected = false
    }
    
    @IBAction func okTapped(sender: AnyObject) {
        var image = ""
        if childButton.selected {
            image = "child-selected"
        }else if phoneButton.selected{
           image = "phone-selected"
        }else if shoppingCartButton.selected{
            image = "shopping-cart-selected"
        }else if travelButton.selected{
           image = "travel-selected"
        }
        
        
        if todo == nil {
            let uuid = NSUUID().UUIDString
            let todo = ToDoModel(id:uuid, image: image, title: todoItem.text!, date: todoDate.date)
            todos.append(todo)
        }else{
            todo?.image = image
            todo?.title = todoItem.text!
            todo?.date = todoDate.date
        }
    }
    
    @IBAction func childTapped(sender: AnyObject) {
        resetButton()
        childButton.selected = true
    }
    
    @IBAction func travelTapped(sender: AnyObject) {
        resetButton()
        travelButton.selected = true
    }
    @IBAction func phoneTapped(sender: AnyObject) {
        resetButton()
        phoneButton.selected = true
    }
    @IBAction func shoppingCartTapped(sender: AnyObject) {
        resetButton()
        shoppingCartButton.selected = true
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        todoItem.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        todoItem.resignFirstResponder()
        return true
    }
    
    
    @IBAction func closed(segue:UIStoryboardSegue){
       print("closed")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.\
        
        todoItem.delegate = self
        
        if todo == nil {
            navigationItem.title = "新增todo"
        }
        else {
            navigationItem.title = "修改todo"
            let selectedImage = todo?.image
            switch selectedImage! {
                case "child-selected":
                    childButton.selected = true
                case "phone-selected":
                    phoneButton.selected = true
                case "travel-selected":
                    travelButton.selected = true
                case "shopping-cart-selected":
                    shoppingCartButton.selected = true
                default: break
            }
            
            todoItem.text = todo?.title
            todoDate.setDate((todo?.date)!, animated: false)
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}