//
//  ProDelegetTest.swift
//  swifttest
//
//  Created by KEVEN on 16/8/2.
//  Copyright © 2016年 KEVEN. All rights reserved.
//

import UIKit

protocol ProtoclTest {
    func funDeleget(_: NSInteger, helo:String)
}

typealias CallBackGeneralBlock=(String,String)->Void

class ProDelegetTest: UIViewController {

    var Deleget:ProtoclTest?;
    var object:AnyObject?;
    
    var CallbackBlock:CallBackGeneralBlock?;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let  btn = UIButton.init(frame: CGRectMake(0, 60, 80, 60));
        btn.setTitle("返回调用", forState: .Normal);
        btn.setTitleColor(UIColor.blueColor(), forState: .Normal);
        btn.addTarget(self, action: #selector(self.backFunc), forControlEvents: .TouchUpInside)
        self.view.addSubview(btn);
    }
    
       
    var prodeleVc:ProtoclDelegatVc?;
    
    init(vc:ProtoclDelegatVc){
        super.init(nibName: nil, bundle: nil);
        
        self.prodeleVc=vc;
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    deinit{
        debugPrint("ProDelegetTest 释放掉了");
    }
    func backFunc() -> Void {
        self.Deleget?.funDeleget(1,helo: "nice deleget 回调了");
        if (self.CallbackBlock != nil) {
            self.CallbackBlock!("nice Block","回调了");
        }
        
        self.navigationController?.popViewControllerAnimated(true);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
