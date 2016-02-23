//
//  ShadowViewController.swift
//  CoreAnimationDemo
//
//  Created by Wayne Bangert on 2/22/16.
//  Copyright © 2016 Wayne Bangert. All rights reserved.
//

import UIKit

class ShadowViewController: TapToDismissViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        aLayer.setIdealCornerRadius()
        
        aLayer.borderColor = UIColor.blackColor().CGColor
        aLayer.borderWidth = 3.0
        
        aLayer.shadowOpacity = 0.5
        aLayer.shadowOffset = CGSize(width: 5, height: 5)
    }


    
    override func goTouched(sender: UIButton) {
        aLayer.shadowColor = UIColor.orangeColor().CGColor
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
