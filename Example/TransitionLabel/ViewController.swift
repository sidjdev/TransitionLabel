//
//  ViewController.swift
//  TransitionLabel
//
//  Created by Sidharth J Dev on 04/21/2019.
//  Copyright (c) 2019 Sidharth J Dev. All rights reserved.
//

import UIKit
import TransitionLabel

class ViewController: UIViewController {

    @IBOutlet weak var transitionLabel: TransitionLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        transitionLabel.animationDuration = 1.0
        transitionLabel.labelValues = ["Hello", "World", "...", "GoodBye", "World"]
        
        var position = transitionLabel.center
        position.y += 50
        var size = transitionLabel.frame.size
        size.width += 100
        let secondTransitionLabel = TransitionLabel(frame: CGRect(origin: position, size: size), labelValues: ["Another", "Set", "Of", "Values"], animationDuration: 1.0, shouldLoop: false)
        self.view.addSubview(secondTransitionLabel)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

