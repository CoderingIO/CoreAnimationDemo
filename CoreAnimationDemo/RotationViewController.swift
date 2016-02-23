//
//  RotationViewController.swift
//  CoreAnimationDemo
//
//  Created by Wayne Bangert on 2/22/16.
//  Copyright © 2016 Wayne Bangert. All rights reserved.
//

import UIKit

class RotationViewController: TapToDismissViewController {
    
    override func goTouched(sender: UIButton) {
        
        let rotateAnimation = CABasicAnimation(keyPath: "transfrorm.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI * 0.15)
        rotateAnimation.duration = 1.0
        rotateAnimation.repeatCount = 2
        
        // set these two this way to get rotation to stick
        rotateAnimation.removedOnCompletion = false
        rotateAnimation.fillMode = kCAFillModeForwards
        
        aLayer.addAnimation(rotateAnimation, forKey: "transform.rotation")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
