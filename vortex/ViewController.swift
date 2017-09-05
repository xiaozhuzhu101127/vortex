//
//  ViewController.swift
//  test
//
//  Created by 王华敏 on 17/9/5.
//  Copyright © 2017年 com.vortex. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

open class ViewController: BaseViewController {
    var userName: String!
    var psd: String!
    var userId: String!
    var photoId: String!
    var name: String!
    override open func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        doLogin()
    }
    func doLogin(){
        userName = "admin_1"
        psd = "123456"
        if userName.isEmpty{
            showToast("用户名不能为空")
            return
        }
        if psd.isEmpty{
            
            showToast("密码不能为空")
            return
        }
        showProgress("")
        let dict: JSON = ["tenantCode":TENANTCODE,"userName":userName,"password":psd]
        var params = Dictionary<String,JSON>()
        params.updateValue(dict, forKey: POSTKEY_PARAMETERS)
        let url:URL = URL(string: LOGIN_URL)!
        Alamofire.request(url, method: .post, parameters: params).responseJSON{
            response in
            self.hideProgress()
            switch response.result{
            case .success(let value):
                let json: JSON = JSON(value)
                let result = json["result"].intValue
                if (result == 0) {
                    self.showToast("登录成功")
                }else{
                    if let msg = json["msg"].string{
                        self.showToast(msg)
                    }
                }
            case .failure(let error):
                print("login erro==\(error)")
            }
        }
        
        
    }
    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

