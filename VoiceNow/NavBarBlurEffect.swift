//
//  NavBarBlurEffect.swift
//  VoiceNow
//
//  Created by James Stephens on 17/08/2017.
//  Copyright © 2017 VoiceNow. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    func navBarBlur() {
        
        let visualEffectView   = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        visualEffectView.frame =  (navigationController?.navigationBar.bounds.insetBy(dx: 0, dy: -10).offsetBy(dx: 0, dy: -10))!
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.addSubview(visualEffectView)
    }
}
