//
//  TapToDismissViewController.swift
//  CoreAnimationDemo
//
//  Created by Wayne Bangert on 2/22/16.
//  Copyright © 2016 Wayne Bangert. All rights reserved.
//

import UIKit

class TapToDismissViewController: UIViewController {
    
    var aLayer:CALayer!
    var goButton:UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // assi
        let tap = UITapGestureRecognizer(target: self, action: "onTap")
        view.addGestureRecognizer(tap)
        view.backgroundColor = .whiteColor()
        // contstrcutor with frame after added to view
        let buttonOne = UIButton(frame: CGRect(x: 5, y: 5, width: 75, height: 42))
        buttonOne.layer.setIdealCornerRadius()
        buttonOne.setTitle("Go", forState: .Normal)
        //
        buttonOne.addTarget("self", action: "goTouched:", forControlEvents: .TouchUpInside)
        buttonOne.backgroundColor = UIColor.greenColor()
        self.view.addSubview(buttonOne)
        
        goButton = buttonOne
        
        aLayer = CALayer()
        aLayer.backgroundColor = UIColor.purpleColor().CGColor
        aLayer.frame = CGRect(x: 10, y: 10, width: 80, height: 80)
        aLayer.position = CGPointMake(CGRectGetMidX(view.bounds), CGRectGetMidY(view.bounds))
        view.layer.addSublayer(aLayer)
        
    }
    
    func goTouched(sender:UIButton) {
        
    }
    
    func onTap() {
        
        dismissViewControllerAnimated(true, completion: nil)
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

func delay(delay:Double, closure: ()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}

extension CALayer {
    func setIdealCornerRadius(){
        self.cornerRadius = (10/57) * min(self.frame.size.height, self.frame.size.width)
    }
}
