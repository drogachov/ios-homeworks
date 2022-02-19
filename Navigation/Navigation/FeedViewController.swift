//
//  FeedViewController.swift
//  Navigation
//
//  Created by Danylo Drogachov on 17.02.22.
//

import UIKit

class FeedViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 120, y: 100, width: 100, height: 50))
        button.setTitle("click on me", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
        self.view.addSubview(button)
        // Do any additional setup after loading the view.
    }
    
    @objc func tap() {
        
        let vc = PostViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
        }

struct Post {
    
    var title: String
}

var News = Post(title: "Bitcoin sucks!")
