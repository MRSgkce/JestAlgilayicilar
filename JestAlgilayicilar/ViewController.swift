//
//  ViewController.swift
//  JestAlgilayicilar
//
//  Created by Mürşide Gökçe on 12.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var ankara = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled=true
        
        let gestureRecognizer=UITapGestureRecognizer(target:self,action: #selector(gorseldegistir))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
        
        
        
      
    }
    @objc func gorseldegistir( ){

        if ankara == false {
            imageView.image = UIImage(named: "ankara")
            label.text="ankara"
            ankara=true
        } else {
            imageView.image=UIImage(named: "istanbul")
            label.text="istanbul"
            ankara=false
        }
    }


}

