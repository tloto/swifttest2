//
//  BlockVc.swift
//  swifttest
//
//  Created by KEVEN on 16/8/1.
//  Copyright © 2016年 KEVEN. All rights reserved.
//

import UIKit
typealias  generalBlock = (NSInteger)->Void

class BlockVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title="闭包";
        
        
        
        let MyfirstBlock = {(firstVg:NSInteger, secVg:String) -> NSInteger in
            return firstVg + NSInteger(secVg)!;
        };
        
        debugPrint("myFirstBlock \(MyfirstBlock(1,"2"))");
        
        BlockChuanzhi { (num2) in
            debugPrint("hello2 \(num2)");
        };
        
        
        let defineBlock:generalBlock={(num4)->Void in
        
            debugPrint("myFouthBlock :\(num4)");
        
        }
        
        defineBlock(666);
        
        
        let CircleSelfBlock = {[unowned self]()->Void in
        
//            debugPrint("循环引用[unowned self]方法的使用 \(self.title)");
            self.xunhuan();
        
        }
        
        CircleSelfBlock();
        
    }

    
    func BlockChuanzhi(firstSg:((NSInteger)->Void)) -> Void {

        debugPrint("hello1");
        firstSg(333);
    }
    
    func xunhuan() -> Void {
        debugPrint("循环引用[unowned self]方法的使用");
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
