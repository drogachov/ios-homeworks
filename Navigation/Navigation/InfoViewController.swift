//
//  InfoViewController.swift
//  Navigation
//
//  Created by Danylo Drogachov on 20.02.22.
//

import UIKit

class InfoViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .purple
        let button = UIButton(frame: CGRect(x: 120, y: 300, width: 200, height: 50))
        button.setTitle("Don‘t click on me!", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(click), for: .touchUpInside)
        
        self.view.addSubview(button)

        // Do any additional setup after loading the view.
    }
    
    @objc func click() {
        let alertVC = UIAlertController(title: "Warning!", message: "Call your mom", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "Call", style: .default, handler: { action in print("Call worked")})
        let action2 = UIAlertAction(title: "Remind me", style: .destructive, handler: { action in print("Remind me worked")})
        alertVC.addAction(action1)
        alertVC.addAction(action2)
        
        self.present(alertVC, animated: true, completion: nil)
        
    }

}

