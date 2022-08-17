//
//  ViewController.swift
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//

import UIKit
import JHWanComponets

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = UIButton()
        btn.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        btn.setTitle("DemoBtn", for: .normal)
        btn.backgroundColor = .white
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(testBtnClick), for: .touchUpInside)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func testBtnClick(){
//        TestDemo.shared.showInfo()
        BaseTools.shared.showInfo()
//        JHWanComponets.shared.showInfo()
        
//        let tool =
//        JHWanComponets.shared.showInfo()
//        tool.showInfo()
//         let vc = JHViewController()
        
//        JHWanComponets.testVC()
//        JHComponets.testVC()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
