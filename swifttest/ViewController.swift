//
//  ViewController.swift
//  swifttest
//
//  Created by KEVEN on 16/7/26.
//  Copyright © 2016年 KEVEN. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let view=UIView();
        view.backgroundColor=UIColor.redColor();
        self.view.addSubview(view);
        
        view.snp_makeConstraints { (make) in
          
//            make.width.equalTo(300);
//            make.height.equalTo(200);
            make.width.height.equalTo(CGSizeMake(300, 200));
            make.center.equalTo(self.view);
            
        };
        
        
        let greenview=UIView();
        greenview.backgroundColor=UIColor.greenColor();
        view.addSubview(greenview);
        
        greenview.snp_makeConstraints { (make) in
            /*
            make.left.equalTo(view).offset(10);
            make.right.equalTo(view).offset(-10);
            make.top.equalTo(view).offset(10);
            make.bottom.equalTo(view).offset(-10);
            */
            /*
            make.edges.equalTo(view).inset(EdgeInsetsMake(10, left: 10, bottom: 10, right: 10));
             */
            
            make.edges.equalTo(EdgeInsetsMake(10, left: 10, bottom: -10, right: -10));
            
        }
        
        let blueView = UIView();
        blueView.backgroundColor=UIColor.blueColor();
        
        let whitView=UIView();
        whitView.backgroundColor=UIColor.whiteColor();
        
        greenview.addSubview(blueView);
        greenview.addSubview(whitView);
        
        blueView.snp_makeConstraints { (make) in
            make.top.equalTo(greenview.snp_top).offset(10);
            make.left.equalTo(greenview.snp_left).offset(10);
            make.bottom.equalTo(greenview.snp_bottom).offset(-10);
            make.right.equalTo(whitView.snp_left).offset(-10);
            make.size.equalTo(whitView);
        }
        whitView.snp_makeConstraints { (make) in
            make.top.equalTo(greenview.snp_top).offset(10);
            make.bottom.equalTo(greenview.snp_bottom).offset(-10);
            make.right.equalTo(greenview.snp_right).offset(-10);
            make.left.equalTo(blueView.snp_right).offset(10);
            make.size.equalTo(blueView);
        }
        
        
        let  btn = UIButton();
        btn.setTitle("其他的操作", forState: UIControlState.Normal);
        btn.setTitleColor(UIColor.redColor(), forState: .Normal);
        btn.addTarget(self, action:#selector(ViewController.OtherClickEvent(_:)), forControlEvents: .TouchUpInside);
        self.view.addSubview(btn);
        btn.snp_makeConstraints { (make) in
            make.top.equalTo(64);
            make.left.equalTo(0);
        }
        
    }

    func OtherClickEvent(btn:UIButton) -> Void {
//        NSLog("asd \(btn)");
        self.navigationController?.pushViewController(TableViewVc(), animated: true);
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

