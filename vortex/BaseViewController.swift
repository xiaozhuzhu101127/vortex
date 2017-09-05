//
//  BaseViewController.swift
//  dgcc
//
//  Created by 王华敏 on 17/3/28.
//  Copyright © 2017年 vortex. All rights reserved.
//
import UIKit
import Foundation

var ud: UserDefaults = UserDefaults.standard
class BaseViewController: UIViewController {
    var presentWindow : UIWindow?
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.hr_setToastThemeColor(color: UIColor.gray)
        presentWindow = UIApplication.shared.keyWindow
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func showToast(_ msg: String){
        view.makeToast(message: msg, duration: 2, position: HRToastPositionCenter as AnyObject, title: "提示")
    }
    func showProgress(_ msg: String){
        if(msg.isEmpty){
            presentWindow!.makeToastActivity()
        }else{
            presentWindow!.makeToastActivity(message: msg)
        }
    }
    
    func hideProgress() {
        presentWindow!.hideToastActivity()
    }
}
