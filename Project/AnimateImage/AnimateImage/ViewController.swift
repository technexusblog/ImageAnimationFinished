//
//  ViewController.swift
//  AnimateImage
//
//  Created by AUGMENTe TechSTudio Pvt Ltd on 12/02/16.
//  Copyright © 2016 TechNexus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    @IBOutlet weak var animationView: UIImageView!
    
    let imageWidth: CGFloat = 108
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        setUpAnimation()
    }
    func setUpAnimation(){
        
        
        animationView.alpha = 0
        widthConstraint.constant = 0
        
        leftConstraint.constant = self.view.bounds.size.width / 2 - (imageWidth / 2.0)
        
        self.view.layoutIfNeeded()
    }
    
    func animateTick(){
        
        animationView.alpha = 1

        widthConstraint.constant = imageWidth
        
        UIView.animateWithDuration(0.5) { () -> Void in
            
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func animateAction(){
        
        animateTick()
    }


}

