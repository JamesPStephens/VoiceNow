//
//  VoiceNowProfile.swift
//  VoiceNow
//
//  Created by James Stephens on 16/08/2017.
//  Copyright © 2017 VoiceNow. All rights reserved.
//

import Foundation
import UIKit

class VoiceNowProfile: UIViewController {
    
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
    let vnTitle: UILabel = {
        let title = UILabel()
        title.text = "James"
        title.textColor = UIColor.white
        title.backgroundColor = UIColor.clear
        title.textAlignment = .center
        title.font = UIFont(name: "Roboto-Thin", size: 50)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    let vnProfilePicture: UIImageView = {
        let picture = UIImageView()
        picture.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        picture.layer.cornerRadius = 100
        picture.layer.borderColor = UIColor.white.cgColor
        picture.layer.borderWidth = 1
        picture.translatesAutoresizingMaskIntoConstraints = false
        return picture
    }()
    let vnLogOut: UIButton = {
        let logout = UIButton()
        logout.setTitle("Logout", for: .normal)
        logout.backgroundColor = UIColor.clear
        logout.layer.cornerRadius = 10
        logout.setTitleColor(UIColor.white, for: .normal)
        logout.titleLabel!.font = UIFont(name: "Roboto-Thin", size: 35)
        logout.titleLabel!.lineBreakMode = .byWordWrapping
        logout.titleLabel!.textAlignment = .center
        logout.translatesAutoresizingMaskIntoConstraints = false
        logout.addTarget(self, action: #selector(logoutPresent), for: .touchUpInside)
        return logout
    }()
    
    func logoutPresent() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFade
        view.window!.layer.add(transition, forKey: kCATransition)
        present(Login(), animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        self.navigationItem.title = "Profile"
        self.navigationController?.navigationBar.isTranslucent = true
        
        view.addSubview(backgroundImage)
        view.addSubview(backgroundView)
        view.addSubview(vnTitle)
        view.addSubview(vnProfilePicture)
        view.addSubview(vnLogOut)
        
        backgroundImage.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        vnTitle.widthAnchor.constraint(equalToConstant: 219).isActive = true
        vnTitle.heightAnchor.constraint(equalToConstant: 58).isActive = true
        vnTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        
        vnProfilePicture.widthAnchor.constraint(equalToConstant: 200).isActive = true
        vnProfilePicture.heightAnchor.constraint(equalToConstant: 200).isActive = true
        vnProfilePicture.topAnchor.constraint(equalTo: vnTitle.bottomAnchor, constant: 25).isActive = true
        vnProfilePicture.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
        vnLogOut.widthAnchor.constraint(equalToConstant: 200).isActive = true
        vnLogOut.heightAnchor.constraint(equalToConstant: 50).isActive = true
        vnLogOut.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vnLogOut.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-150).isActive = true
}
}
