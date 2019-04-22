//
//  ViewController.swift
//  FyreSwiftExtensions
//
//  Created by dellybro@gmail.com on 04/22/2019.
//  Copyright (c) 2019 dellybro@gmail.com. All rights reserved.
//

import UIKit
import FyreSwiftExtensions

class ViewController: UIViewController {

    @IBOutlet weak var activityImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let string = "0"
        
        print(string.doubleValue);
        
        
//
        let dictionary = ["string": ["key": ["path": "final-key"]]];
        let finalKey = dictionary[keyPath: "string.key.path"] as? String;
        print(finalKey ?? "");
    }
    
    @IBAction func activityIndicatorClicked(_ sender: Any) {
        if self.activityImage.showingActivityIndicator() {
            self.activityImage.removeActivityIndicator();
        }
        else {
            self.activityImage.addActivityIndicator(width: 80, height: 80, type: nil, text: nil, color: nil);
        }
    }
    
}

