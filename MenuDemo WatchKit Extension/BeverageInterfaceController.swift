//
//  BeverageInterfaceController.swift
//  MenuDemo WatchKit Extension
//
//  Created by Steven Lipton on 2/3/18.
//  Copyright © 2018 Steven Lipton. All rights reserved.
//

import WatchKit
import Foundation


class BeverageInterfaceController: WKInterfaceController {

    @IBOutlet var quantityLabel: WKInterfaceLabel!
    
    @IBAction func doneButton() {
        pop()
    }
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
        if let count = context as? Int{
            quantityLabel.setText(String(format:"%i Beverages",count))
        }
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
