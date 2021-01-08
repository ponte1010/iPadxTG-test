//
//  ViewController.swift
//  iPadxTG-test
//
//  Created by miwa on 2021/01/08.
//

import UIKit

class ViewController: UIViewController {
    
    var tapLocation: CGPoint = CGPoint()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // タッチイベントを取得する
        let touch = touches.first
        // タップした座標を取得し、print
        tapLocation = touch!.location(in: self.view)
        print(tapLocation)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

