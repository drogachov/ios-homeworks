//
//  PostViewController.swift
//  Navigation
//
//  Created by Danylo Drogachov on 17.02.22.
//

import UIKit

class PostViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = News.title
        self.view.backgroundColor = .orange
        
        let infoButton = UIButton(type: .infoLight)
        infoButton.addTarget(self, action: #selector(tap), for: .touchUpInside)
        let barItem = UIBarButtonItem(customView: infoButton)
        self.navigationItem.rightBarButtonItem = barItem
        
        // Do any additional setup after loading the view.
    }
    
    @objc func tap() {
        let vc = InfoViewController()
        self.present(vc, animated: true, completion: nil)
    }
        
        

}
