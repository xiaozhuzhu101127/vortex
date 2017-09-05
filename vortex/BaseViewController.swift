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
open class BaseViewController: UIViewController {
    var presentWindow : UIWindow?
    override open func viewDidLoad() {
        super.viewDidLoad()
        UIView.hr_setToastThemeColor(color: UIColor.gray)
        presentWindow = UIApplication.shared.keyWindow
    }
    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    open func showToast(_ msg: String){
        view.makeToast(message: msg, duration: 2, position: HRToastPositionCenter as AnyObject, title: "提示")
    }
    open func showProgress(_ msg: String){
        if(msg.isEmpty){
            presentWindow!.makeToastActivity()
        }else{
            presentWindow!.makeToastActivity(message: msg)
        }
    }
    
    open func hideProgress() {
        presentWindow!.hideToastActivity()
    }
}
