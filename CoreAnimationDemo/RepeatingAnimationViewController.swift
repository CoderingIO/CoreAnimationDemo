//
//  RepeatingAnimationViewController.swift
//  CoreAnimationDemo
//
//  Created by Wayne Bangert on 2/22/16.
//  Copyright © 2016 Wayne Bangert. All rights reserved.
//

import UIKit

class RepeatingAnimationViewController: TapToDismissViewController {
    
    override func goTouched(sender: UIButton) {
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.fromValue = aLayer.cornerRadius
        animation.toValue = 50.0
        animation.repeatCount = 50
        animation.duration = 1.5
        animation.autoreverses = true
        
        aLayer.addAnimation(animation, forKey: "CornerRadius")
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
