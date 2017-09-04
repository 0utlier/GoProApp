//
//  ViewController.swift
//  GoPro
//
//  Created by JD Leonard on 8/18/17.
//  Copyright © 2017 JD Leonard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dao = DAO()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addButtonForPower()
        addButtonForShutter()
        createDAO()
//        dao.makeURLSession()
    }
    
    func createDAO() {
//        let dao = DAO()
        print("dao is made")
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    func addButtonForPower() {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.backgroundColor = .green
        button.setTitle("Power Button", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    func buttonAction(sender: UIButton!) {
        print("Button tapped - send HTML")
        dao.self.powerOn(device: 1)
    }
    
    
    
    func addButtonForShutter() {
    let button = UIButton(frame: CGRect(x: 200, y: 200, width: 100, height: 50))
    button.backgroundColor = .red
    button.setTitle("Shutter Button", for: .normal)
    button.addTarget(self, action: #selector(buttonActionS), for: .touchUpInside)
    
    self.view.addSubview(button)
    }

    func buttonActionS(sender: UIButton!) {
        print("Button tapped")
        dao.shutterPress(device: 2)
    
    }
    
}

