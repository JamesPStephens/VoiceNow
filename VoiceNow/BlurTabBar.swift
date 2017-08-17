//
//  BlurTabBar.swift
//  VoiceNow
//
//  Created by James Stephens on 17/08/2017.
//  Copyright © 2017 VoiceNow. All rights reserved.
//

import Foundation
import UIKit

class  BlurTabBar: UITabBar {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let blur = UIBlurEffect(style: UIBlurEffectStyle.light)
        blur.frame = bounds
        blur.autoresizingMask = .flexibleWidth
        insertSubview(blur, at: 0)
    }
}
