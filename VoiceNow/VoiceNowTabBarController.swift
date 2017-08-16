//
//  VoiceNowTabBarController.swift
//  VoiceNow
//
//  Created by James Stephens on 16/08/2017.
//  Copyright © 2017 VoiceNow. All rights reserved.
//

import Foundation
import UIKit

class VoiceNowTabController: UITabBarController {
    override func viewDidLoad() {
         super.viewDidLoad()
         self.navigationController?.navigationBar.isTranslucent = false
         navigationController?.navigationBar.tintColor = UIColor.white
        
        let voiceList = VoiceList()
        let voiceRecorder = VoiceRecorder()
        let voiceNowProfile = VoiceNowProfile()
        
        func tabBarViews() {
            let voiceListView = UINavigationController(rootViewController: voiceList)
            let voiceListIcon = UITabBarItem(title: "Dictations", image: nil, tag: 1)
            voiceListView.tabBarItem = voiceListIcon
            voiceListIcon.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
            
            let voiceRecorderView = UINavigationController(rootViewController: voiceRecorder)
            let voiceRecorderIcon = UITabBarItem(title: "Recorder", image: nil, tag: 2)
            voiceRecorderView.tabBarItem = voiceRecorderIcon
            voiceRecorderIcon.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
            
            let voiceNowProfileView = UINavigationController(rootViewController: voiceNowProfile)
            let voiceNowProfileIcon = UITabBarItem(title: "Profile", image: nil, tag: 3)
            voiceNowProfileView.tabBarItem = voiceNowProfileIcon
            voiceNowProfileIcon.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
            
            viewControllers = [voiceListView, voiceRecorderView, voiceNowProfileView]
        }
        
    }
}
