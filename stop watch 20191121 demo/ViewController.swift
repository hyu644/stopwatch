//
//  ViewController.swift
//  stop watch 20191121 demo
//
//  Created by hyu on 11/21/1 R.
//  Copyright © 1 Reiwa hyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var minDisplay: UILabel!
    
    @IBOutlet weak var secDisplay: UILabel!
    
    @IBOutlet weak var miliDisplay: UILabel!
    
    @IBOutlet weak var bt01: UIButton!
    
    @IBOutlet weak var bt02: UIButton!
    
    var mincount = 0
    var seccount = 0
    var milicount = 0
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @objc func timeStamp(){
        milicount = milicount + 1
        if(milicount > 99){
            seccount = seccount + 1
            milicount = 0
        }
        miliDisplay.text = String(format:"%02d", milicount)
        
        if(seccount > 59){
               mincount = mincount + 1
                seccount = 0
        }
        secDisplay.text = String(format:"%02d", seccount)
        if(mincount > 59){
               milicount = 0
               seccount = 0
               mincount = 0
    }
        minDisplay.text = String(format:"%02d", mincount)
    }
    
    
    
    
    @IBAction func bt01Action(_ sender: UIButton) {
        var omoteura = 0
        
        if(omoteura == 0){
         timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timeStamp), userInfo: nil, repeats: true)
             omoteura = 1
        }else{
            timer.invalidate() //buren boloogu 
            omoteura = 0
        }
    }
    @IBAction func bt02Action(_ sender: UIButton) {
        
         mincount = 0
         seccount = 0
         milicount = 0
        
        miliDisplay.text = String(format: "%02d", milicount)
        secDisplay.text = String(format: "%02d", seccount)
        secDisplay.text = String(format: "%02d", mincount)
     
 }
}
