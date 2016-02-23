//
//  SubLayerViewController.swift
//  CoreAnimationDemo
//
//  Created by Wayne Bangert on 2/22/16.
//  Copyright © 2016 Wayne Bangert. All rights reserved.
//

import UIKit

class SubLayerViewController: RotationViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layer = CALayer()
        layer.backgroundColor = UIColor.redColor().CGColor
        layer.frame = CGRectInset(aLayer.bounds, 10, 20)
        aLayer.addSublayer(layer)

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
