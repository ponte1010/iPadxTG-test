//
//  ViewController.swift
//  iPadxTG-test
//
//  Created by miwa on 2021/01/08.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var tapLocation: CGPoint = CGPoint()
    
    // AVSpeechSynthesizerのインスタンスを生成
    let synthesizer = AVSpeechSynthesizer()
    
    var strTapPoints: String = ""
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // タッチイベントを取得する
        let touch = touches.first
        // タップした座標を取得
        tapLocation = touch!.location(in: self.view)
        
        let xTap = tapLocation.x
        let yTap = tapLocation.y
        
        let intxTap:Int = Int(xTap)
        let intyTap:Int = Int(yTap)
        
        let strxTap:String = String(intxTap)
        let stryTap:String = String(intyTap)
        
        strTapPoints = "エックス" + strxTap + "ワイ" + stryTap
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(handleGesture(_:)))
        recognizer.numberOfTouchesRequired = 1
        recognizer.numberOfTapsRequired = 2
        view.addGestureRecognizer(recognizer)
    }
    
    @IBAction func handleGesture(_ gesture: UITapGestureRecognizer) {
        guard gesture.state == .ended else {
            return
        }
        // 確認用
        print(strTapPoints)
        
        let utterance = AVSpeechUtterance.init(string: strTapPoints)
        let voice = AVSpeechSynthesisVoice.init(language: "ja-JP")
        utterance.voice = voice
        synthesizer.speak(utterance)
    }
    
    
}

