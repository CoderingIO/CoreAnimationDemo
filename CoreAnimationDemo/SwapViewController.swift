//
//  SwapViewController.swift
//  CoreAnimationDemo
//
//  Created by Wayne Bangert on 2/22/16.
//  Copyright © 2016 Wayne Bangert. All rights reserved.
//

import UIKit

class SwapViewController: TapToDismissViewController {
    
    override func goTouched(sender: UIButton) {
        
        let layer = CALayer()
        layer.backgroundColor = UIColor.redColor().CGColor
        layer.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        layer.setIdealCornerRadius()
        layer.position = aLayer.position
        layer.hidden = true
        view.layer.addSublayer(layer)
        
        let transition = CATransition()
        transition.startProgress = 0
        transition.endProgress = 1
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        transition.duration = 0.25
        
        aLayer.addAnimation(transition, forKey: "transition")
        layer.addAnimation(transition, forKey: "transition")
        
        aLayer.hidden = true
        layer.hidden = false
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
