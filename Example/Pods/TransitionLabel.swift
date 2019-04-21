//
//  TransitionLabel.swift
//  TransitionLabel
//
//  Created by Sidharth J Dev on 18/04/19.
//  Copyright © 2019 Sidharth J Dev. All rights reserved.
//

import UIKit

public class TransitionLabel: UILabel {

    private var _labelValues: [String?] = []
    public var labelValues: [String?] {
        set {
            _labelValues = newValue
            startAssingning()
            
        } get {
            return _labelValues
        }
    }
    
    override public var text: String? {
        set {
            labelValues = [newValue]
            startAssingning()
        }
        get {
            if labelValues.count > 0 {
                return labelValues[0]
            } else {
                return nil
            }
        }
    }
    
    public var animationDuration: Double = 3.0
    public var shouldLoop: Bool = true
    
    public convenience init(frame: CGRect, labelValues: [String?], animationDuration: Double = 3.0, shouldLoop: Bool = true) {
        self.init(frame: frame)
        self.labelValues = labelValues
        self.animationDuration = animationDuration
        self.shouldLoop = shouldLoop
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

    }
    
    private var position = 0
    private func startAssingning() {
        super.text = labelValues[0]
        _ = Timer.scheduledTimer(timeInterval: animationDuration, target: self, selector: #selector(assignValues), userInfo: nil, repeats: true)
    }
    
    @objc private func assignValues() {
        if position >= (labelValues.count-1) && shouldLoop{
            position = 0
        } else if position < (labelValues.count - 1) {
            position += 1
        }
        UIView.transition(with: self, duration: 0.5, options: .transitionCrossDissolve, animations: {
            super.text = self.labelValues[self.position]
        }, completion: nil)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
