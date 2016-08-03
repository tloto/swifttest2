//
//  ProtoclDelegatVc.swift
//  swifttest
//
//  Created by KEVEN on 16/8/1.
//  Copyright © 2016年 KEVEN. All rights reserved.
//

import UIKit



class ProtoclDelegatVc: UIViewController ,ProtoclTest{

    
    var asdfadf:String?;
    
    
    deinit{
    
        debugPrint("ProtoclDelegatVc 释放了");
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title="代理协议";

        let  btn = UIButton.init(frame: CGRectMake(0, 60, 80, 60));
        btn.setTitle("Next", forState: .Normal);
        btn.setTitleColor(UIColor.blueColor(), forState: .Normal);
        btn.addTarget(self, action: #selector(self.backFunc), forControlEvents: .TouchUpInside)
        self.view.addSubview(btn);
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func backFunc() -> Void {
        let VC = ProDelegetTest.init(vc: self);
        VC.Deleget=self;
        VC.CallbackBlock={(str1,str2) in
            self.asdfadf=str1+str2;
            debugPrint(self.asdfadf);
        }
        self.navigationController?.pushViewController(VC, animated: true);
    }
    

    func funDeleget(num: NSInteger, helo:String){
    
        debugPrint("num = \(num); helo: \(helo)");
    
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
