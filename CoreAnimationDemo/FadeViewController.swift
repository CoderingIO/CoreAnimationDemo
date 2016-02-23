//
//  FadeViewController.swift
//  CoreAnimationDemo
//
//  Created by Wayne Bangert on 2/22/16.
//  Copyright © 2016 Wayne Bangert. All rights reserved.
//

import UIKit

class FadeViewController: TapToDismissViewController {
    
    var flipFlop = true
    
    override func goTouched(sender: UIButton) {
        goButton.enabled = false
        var waitTime = 1.0
        
        if flipFlop {
            aLayer.opacity = 0
        } else {
            let fadeAnimation = CABasicAnimation(keyPath: "opacity")
            fadeAnimation.fromValue = 1
            fadeAnimation.toValue = 0
            fadeAnimation.duration = 3
            waitTime = 3.5
            aLayer.addAnimation(fadeAnimation, forKey: "opacity")
            aLayer.opacity = 0
        }
        
        flipFlop = !flipFlop
        
        delay(waitTime) {
            self.aLayer.opacity = 1
            self.goButton.enabled = true
        }
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
