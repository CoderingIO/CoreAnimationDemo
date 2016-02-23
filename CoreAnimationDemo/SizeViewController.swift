//
//  SizeViewController.swift
//  CoreAnimationDemo
//
//  Created by Wayne Bangert on 2/22/16.
//  Copyright © 2016 Wayne Bangert. All rights reserved.
//

import UIKit

class SizeViewController: TapToDismissViewController {
    
    
    override func goTouched(sender: UIButton) {
        let animation = CABasicAnimation(keyPath: "bounds.size.width")
        animation.fromValue = aLayer.frame.size.width
        animation.toValue = 0
        animation.repeatCount = 50
        animation.duration = 1.5
        animation.autoreverses = true
        aLayer.addAnimation(animation, forKey: "bounds.size.width")
        
        
        let animation2 = CABasicAnimation(keyPath: "bounds.size.height")
        animation2.fromValue = aLayer.frame.size.height
        animation2.toValue = 0
        animation2.repeatCount = 50
        animation2.duration = 3
        animation2.autoreverses = true
        aLayer.addAnimation(animation2, forKey: "bounds.size.height")
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
