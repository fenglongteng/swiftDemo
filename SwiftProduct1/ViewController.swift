//
//  ViewController.swift
//  SwiftProduct1
//
//  Created by fenglongteng on 16/5/10.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate, MyDelegate {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    var timeInt = 0
    var myTimer: NSTimer!
    var carshare: CarShare?
    @IBOutlet weak var delegateLabel: UILabel!
    
    let me: CarShare = CarShare.shareMe()
    var you: CarShare = CarShare.shareMe()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
         self.carshare = CarShare.shareMe()
          print("\(self.carshare?.me!) is self.carshare")
        self.title = "你大爷"
        self.automaticallyAdjustsScrollViewInsets = false
        self.myTimer = NSTimer.scheduledTimerWithTimeInterval(1, target:self , selector: Selector("setupView"), userInfo: nil, repeats: true)
        self.myTimer.fireDate = NSDate.distantPast()
        self.scrollView.contentSize = CGSizeMake(375, 2000)
        self.scrollView.bounces = false
        //消息循环机制  将nstimer添加到runloop中去
        NSRunLoop.mainRunLoop().addTimer(myTimer, forMode: NSRunLoopCommonModes)
        scrollView.delegate = self
        self.navigationController?.navigationBar.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        me.me = "youyou"
        
        print(me.me)
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    func setupView(){
        timeInt++
       let labelText = "\(timeInt)"
        timeLabel.text = labelText
        
        
    }
    func dolloc(){
        self.myTimer.invalidate()
        myTimer =  nil
    }
    
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if scrollView.contentOffset.y > 500 && scrollView.contentOffset.y < 700{
            //这里高度变化引起试图要变化  有边框闪烁现象 有bug
            scrollView.frame = CGRectMake(0, 20, 375, 700)
        }
        
            if scrollView.contentOffset.y > 20 {
                self.navigationController?.navigationBar.backgroundColor = UIColor.init(red:  (700.0 - scrollView.contentOffset.y) / 700, green: (700.0 - scrollView.contentOffset.y) / 700, blue: (700.0 - scrollView.contentOffset.y) / 700, alpha: (700.0 - scrollView.contentOffset.y) / 700)
                if scrollView.contentOffset.y >= 700{
                    self.navigationController?.navigationBar.hidden = true
                }else{
                    self.navigationController?.navigationBar.hidden = false
                }
        }
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let twoVC = segue.destinationViewController as! TwoViewController
           twoVC.myDelegate = self
        
    
}
    func wokao(str: String) {
        delegateLabel.text = str 
    }
}

