//
//  VoiceNowTabBarController.swift
//  VoiceNow
//
//  Created by James Stephens on 16/08/2017.
//  Copyright © 2017 VoiceNow. All rights reserved.
//

import Foundation
import UIKit
import ESTabBarController_swift

class VoiceNowTabController: UITabBarController {
    override func viewDidLoad() {
         super.viewDidLoad()
         tabBarViews()
//       getImageBlur()
        
    }
    
    func getImageBlur(){
        let bounds = self.navigationController?.navigationBar.bounds as CGRect!
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        visualEffectView.frame = bounds!
        self.navigationController?.navigationBar.addSubview(visualEffectView)
    }
    
    
        func tabBarViews() {
    
            let voiceList = VoiceList()
            let voiceRecorder = VoiceRecorder()
            let voiceNowProfile = VoiceNowProfile()
            
            let voiceListView = UINavigationController(rootViewController: voiceList)
            let voiceListIcon = UITabBarItem(title: "Dictations", image: nil, tag: 1)
            voiceListView.tabBarItem = voiceListIcon
            
            let voiceRecorderView = UINavigationController(rootViewController: voiceRecorder)
            let voiceRecorderIcon = UITabBarItem(title: "Recorder", image: nil, tag: 2)
            voiceRecorderView.tabBarItem = voiceRecorderIcon
            
            let voiceNowProfileView = UINavigationController(rootViewController: voiceNowProfile)
            let voiceNowProfileIcon = UITabBarItem(title: "Profile", image: nil, tag: 3)
            voiceNowProfileView.tabBarItem = voiceNowProfileIcon
            
            viewControllers = [voiceListView, voiceRecorderView, voiceNowProfileView]
    }
}
