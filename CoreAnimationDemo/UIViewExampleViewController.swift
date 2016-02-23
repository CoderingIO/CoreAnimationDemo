//
//  UIViewExampleViewController.swift
//  CoreAnimationDemo
//
//  Created by Wayne Bangert on 2/22/16.
//  Copyright © 2016 Wayne Bangert. All rights reserved.
//

import UIKit

class UIViewExampleViewController: TapToDismissViewController {
    
    var aView:UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        aLayer.removeFromSuperlayer()
        
        aView = UIView(frame: CGRectMake(0, 0, 100, 100) )
        aView.backgroundColor = UIColor.orangeColor()
        aView.center = view.center
        view.addSubview(aView)

    }

    override func goTouched(sender: UIButton) {
        
        let newPosition = CGPoint(x: 50, y: 75)
        
        UIView.animateWithDuration(4.0) { () -> Void in
            self.aView.layer.opacity = 0.0
            
            let animation = CABasicAnimation(keyPath: "position")
            animation.fromValue = NSValue(CGPoint:self.aView.layer.position)
            animation.toValue = NSValue(CGPoint:newPosition)
            animation.duration = 4.0
            self.aView.layer.addAnimation(animation, forKey: "position")
        }
        
    }
}
