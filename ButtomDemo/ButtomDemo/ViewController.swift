//
//  ViewController.swift
//  ButtomDemo
//
//  Created by chenqinqin on 16/11/4.
//  Copyright © 2016年 chenqinqin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let bt = UIButton(type: UIButtonType.System)
        bt.frame = CGRect(x: 20, y: 120, width: 280, height: 44)
        bt.setTitle("Question", forState: UIControlState())
        bt.addTarget(self, action: #selector(ViewController.showActionSheet), forControlEvents: UIControlEvents.TouchUpInside)
        bt.backgroundColor = UIColor.lightGrayColor()
        
        self.view.addSubview(bt)
    }
    
    func showActionSheet() {
        let alert = UIAlertController(title: "Information", message: "What's your favorite?", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let fishing = UIAlertAction(title: "Fishing", style: UIAlertActionStyle.Default,handler: {
            (alerts: UIAlertAction) -> Void in print("I like fishing")
        })
        
        let hunting = UIAlertAction(title: "Hunting", style: UIAlertActionStyle.Default, handler: {
            (alerts: UIAlertAction) -> Void in print("I like hunting")
        })
        
        let nothing = UIAlertAction(title: "Nothing", style: UIAlertActionStyle.Default, handler: {
            (alerts: UIAlertAction) -> Void in print("A life of nonsense")
        })
    
        alert.addAction(fishing)
        alert.addAction(hunting)
        alert.addAction(nothing)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

