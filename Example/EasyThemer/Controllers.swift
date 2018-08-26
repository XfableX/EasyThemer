//
//  ViewController.swift
//  EasyThemer
//
//  Created by William Taylor on 08/25/2018.
//  Copyright (c) 2018 William Taylor. All rights reserved.
//

import UIKit
import EasyThemer

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func theme2(_ sender: Any) {
        ThemeEngine.standard.setTheme(theme: PrimaryTheme())
    }
    @IBAction func theme1(_ sender: Any) {
        ThemeEngine.standard.setTheme(theme: DarkTheme())
    }
}
class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

