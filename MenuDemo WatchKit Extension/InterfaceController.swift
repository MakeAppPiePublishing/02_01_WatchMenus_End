//
//  InterfaceController.swift
//  MenuDemo WatchKit Extension
//
//  Created by Steven Lipton on 2/3/18.
//  Copyright © 2018 Steven Lipton. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var count = 0
    
    @IBOutlet var countLabel: WKInterfaceLabel!
    
    @IBAction func addButton() {
        count += 1
        displayCount()
    }
    
    @IBAction func subtractButton() {
        count -= 1
        if count < 0 {count = 0}
        displayCount()
    }
    
    @IBAction func gotoInfo() {
        presentController(withName: "Info", context: nil)
    }
    @IBAction func gotoPizza() {
        pushController(withName: "Pizza", context: count)
        
    }

    @IBAction func gotoBeverage() {
        pushController(withName: "Beverage", context: count)
        
    }
    
    @IBAction func clearCount(){
        count = 0
        displayCount()  
    }
    
    func displayCount(){
        let countString = String(format:"Count: %i",count)
        countLabel.setText(countString)
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
