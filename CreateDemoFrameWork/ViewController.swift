//
//  ViewController.swift
//  CreateDemoFrameWork
//
//  Created by Sierra on 8/13/18.
//  Copyright © 2018 NItinJha. All rights reserved.
//

import UIKit

public class ViewController: UIView {
    var contentView = UIView()
    let nibName = "ViewController"

    // Set Up View
    public override init(frame: CGRect) {
        // For use in code
        super.init(frame: frame)
        setUpView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        // For use in Interface Builder
        super.init(coder: aDecoder)
        setUpView()
    }
    
    private func setUpView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        self.contentView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(contentView)
        contentView.center = self.center
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true
    }
   
}
