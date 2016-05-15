//
//  ViewController.swift
//  UIImageViewWithWords
//
//  Created by Ridvan Kucuk on 02/09/2016.
//  Copyright (c) 2016 Ridvan Kucuk. All rights reserved.
//

import UIKit
import UIImageViewWithWords
class ViewController: UIViewController {

    @IBOutlet weak var imageVieww: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fontAttributes = [NSForegroundColorAttributeName : UIColor.blueColor(),
                              NSFontAttributeName : UIFont.systemFontOfSize(40)
                              ]
        self.imageVieww.imageWithString(word: "Ridvan Kucuk", color: UIColor.orangeColor(), circular: true, fontAttributes: fontAttributes)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

