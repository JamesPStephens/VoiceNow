//
//  VoiceRecorder.swift
//  VoiceNow
//
//  Created by James Stephens on 16/08/2017.
//  Copyright © 2017 VoiceNow. All rights reserved.
//

import Foundation
import UIKit

class VoiceRecorder: UIViewController {
    
    let backgroundImage: UIImageView = {
        let bg = UIImageView()
        bg.image = UIImage(named: "VNBackgroundImage")
        bg.translatesAutoresizingMaskIntoConstraints = false
        bg.contentMode = .scaleAspectFit
        bg.addBlurEffect()
        return bg
    }()
    let backgroundView: UIView = {
        let bgv = UIView()
        bgv.translatesAutoresizingMaskIntoConstraints = false
        bgv.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        return bgv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        self.navigationItem.title = "Recorder"
        self.navigationController?.navigationBar.isTranslucent = true
        
        view.addSubview(backgroundImage)
        view.addSubview(backgroundView)
        
        backgroundImage.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
}
