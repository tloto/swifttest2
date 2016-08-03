//
//  LazyLoadVc.swift
//  swifttest
//
//  Created by KEVEN on 16/8/1.
//  Copyright © 2016年 KEVEN. All rights reserved.
//

import UIKit

class LazyLoadVc: UIViewController {
    //    懒加载按钮 btn2  自动判断是是否存在，本类只创建一次，用过及时销毁
    private lazy var btn2:UIButton={
        let  btn = UIButton();
        return btn;
    }();

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title="懒加载";
        
        
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
