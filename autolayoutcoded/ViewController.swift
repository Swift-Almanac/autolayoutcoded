//
//  ViewController.swift
//  autolayoutcoded
//
//  Created by Mark Hoath on 11/10/17.
//  Copyright © 2017 Mark Hoath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpConstraints()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func setUpConstraints() {       //   Each Object Requires 4 constraints.
        
        //   Red in Top Rights Corner
        
        //      Leading (16), Top(16), Height (50), Width (200)
        
        
        let redLeading = NSLayoutConstraint(item: redView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 16)
        let redTop = NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .topMargin, multiplier: 1.0, constant: 16)
        let redHeight = NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 50)
        let redWidth = NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 200)
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([redLeading, redTop,redWidth, redHeight])

        // Yellow in the Centre
        
        //        CentreX, CentreY, Height (50), Width (200)
        
        let yellowCentreX = NSLayoutConstraint(item: yellowView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let yellowCentreY = NSLayoutConstraint(item: yellowView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0)
        let yellowHeight = NSLayoutConstraint(item: yellowView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 50)
        let yellowWidth = NSLayoutConstraint(item: yellowView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 200)
        
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addConstraints([yellowCentreX, yellowCentreY,yellowHeight, yellowWidth])

        // Green 200 pixels below Yellow
        
         //       CentreX, Yellow.bottom (200), Height(50), Width(200)
        
        let greenCentreX = NSLayoutConstraint(item: greenView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        let greenTop = NSLayoutConstraint(item: greenView, attribute: .top, relatedBy: .equal, toItem: yellowView, attribute: .bottom, multiplier: 1.0, constant: 50)
        
        let greenHeight = NSLayoutConstraint(item: greenView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 50)
        let greenWidth = NSLayoutConstraint(item: greenView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 200)

        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addConstraints([greenCentreX, greenTop, greenHeight, greenWidth])
    }
    
}

