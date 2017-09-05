//
//  Constants.swift
//  RCloudMessage
//
//  Created by 王华敏 on 17/8/25.
//  Copyright © 2017年 Vortex. All rights reserved.
//

import Foundation


//product
let APPKEY = "pkfcgjstp0lk8"
let APPSECRET = "Oz7PEiPtCx9MbB"
//managerment
let CLOUD_SERVER = "http://116.62.100.64:18089"
//人员
let RYGL_SERVER = "http://101.37.91.92:18092"
//File
let FILE_SERVER = "http://116.62.100.64:18084"
//APP
let APP_SERVER = "http://116.62.100.64:18099"

// key
let POSTKEY_JSON = "json"
let POSTKEY_PARAMETERS = "parameters"
let TENANTID = "966250266da5408eaa468f7359bf62db"
let TENANTCODE = "shja"

//文件
let FILE_URL = FILE_SERVER + "/cloudFile/common/downloadFile?id="

let SYNC_STAFF_URL = CLOUD_SERVER + "/cloud/management/rest/np/staff/syncStaffByPage.read"
let SYNC_DEPT_URL = CLOUD_SERVER + "/cloud/management/rest/np/department/syncDeptByPage.read"
let LOGIN_URL = CLOUD_SERVER + "/cloud/management/rest/np/user/login.read"
//同步群组
let GET_GROUP_LIST = RYGL_SERVER + "/cloud/rygl/api/np/v2/rongCloudGroup/getList.smvc"


//注册token
let REGISTER_TOKEN = APP_SERVER + "/cloud/app/api/np/v1/iMConfig/getToken"
//更新token
let UPDATE_TOKEN = CLOUD_SERVER + "/cloud/management/rest/np/user/updateImToken.read"
