//
//  JHViewController.swift
//  JHWanComponets
//
//  Created by sqkj on 2022/8/16.
//

import UIKit

class JHViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let btn = UIButton()
        btn.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        btn.setTitle("PodBtn", for: .normal)
        btn.backgroundColor = .white
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(testBtnClick), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func testBtnClick() {
        BaseTools.testFunc()
    }
    

}
