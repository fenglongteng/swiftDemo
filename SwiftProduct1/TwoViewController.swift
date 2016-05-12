//
//  TwoViewController.swift
//  SwiftProduct1
//
//  Created by fenglongteng on 16/5/10.
//  Copyright © 2016年 fenglongteng. All rights reserved.
//

import UIKit

protocol MyDelegate: class {
    func  wokao(str: String);
}

class TwoViewController: UIViewController {
    @IBOutlet weak var returnButtonAction: UIButton!
    @IBOutlet weak var myTextFeild: UITextField!
    weak var myDelegate: MyDelegate?
   
    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        returnButtonAction.addTarget(self, action: Selector("popVC"), forControlEvents: UIControlEvents.TouchUpInside)
       
        
        
        // Do any additional setup after loading the view.
      }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    override func encodeRestorableStateWithCoder(coder: NSCoder) {
        super.encodeRestorableStateWithCoder(coder)
        coder.encodeObject(self.myTextFeild.text, forKey: "myTextFeil")
        
    }
    override func decodeRestorableStateWithCoder(coder: NSCoder) {
        super.decodeRestorableStateWithCoder(coder)
       myTextFeild.text = coder.decodeObjectForKey("myTextFeil")! as? String
    }
    func popVC(){
        myDelegate?.wokao("dsfj")
        self.navigationController?.popViewControllerAnimated(true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
