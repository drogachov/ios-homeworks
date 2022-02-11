//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Danylo Drogachov on 10.02.22.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let profileViewName = String(describing: ProfileView.self)
        
        if let profileView = Bundle.main.loadNibNamed(profileViewName, owner: nil, options: nil)?.first as? ProfileView {
            profileView.frame = CGRect(x: 15, y: 100, width: view.bounds.width - 30, height: view.bounds.height - 20)
            view.addSubview(profileView)
        }
        
    }
    


}
