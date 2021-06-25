//
//  fake.swift
//  fake
//
//  Created by Jz D on 2021/6/25.
//  Copyright © 2021 swift. All rights reserved.
//

import Foundation




protocol WXApiDelegate{
    func onReq(_ req: BaseReq)
    
    
    func onResp(_ resp: BaseResp)
}


struct BaseReq{

    let type: Int
    let openID: String
}


class SendAuthResp: BaseResp{

    var code: Int? 
}

class BaseResp{

    let errCode: Int = 0
    
    let errStr: String = ""
    
    
    let type: Int = 1
    
}


enum UMSocialPlatformType{
    case QQ,  wechatSession, wechatTimeLine
    
    
}


protocol UMSocialManagerProxy {
    
    
}


extension UMSocialManagerProxy {
    
    
    
    static func `default`() -> UMSocialManager?{
        return nil
    }
    
    
    func setPlaform(_ platformType: UMSocialPlatformType, appKey: String, appSecret: String, redirectURL: String){}
    
    
}



struct UMSocialManager: UMSocialManagerProxy{
    
    
    func handleOpen(_ url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool{
        return false
    }
    
    
    func share(to platform: UMSocialPlatformType, messageObject: UMSocialMessageObject, currentViewController: UIViewController?, completion: ( (  Any?, Error? ) -> Void)){}
    
}





struct MobClick {
    
    
    static func event(_ eventId: String){}
    

    
}




struct UMConfigure {
    static func initWithAppkey(_ appKey: String, channel: String){}
}


class UMShareObject {
    var webpageUrl: String = ""
    
    
    
    var thumbImage: Any?
    var title: String?
    var descr: String?
    
    
    
    
}


class UMShareWebpageObject:  UMShareObject{
    
    
    
}



struct WXApi {
    static func isWXAppInstalled() -> Bool{
        return false
    }
    
    
    
    static func handleOpenUniversalLink(_ userActivity: NSUserActivity, delegate: WXApiDelegate) -> Bool{
        
        return false
    }
    
    
    static func registerApp(_ appid: String, universalLink: String){
    
    
    }
    
    
    
    static func handleOpen(_ url: URL, delegate: WXApiDelegate) -> Bool{
        return false
    }
    
    
}




class UMSocialMessageObject{
    
    
    var shareObject: UMShareObject?
    
}



enum UShareWXMiniProgramType{
    case release
}


class UMShareMiniProgramObject: UMShareObject{
    
    var hdImageData: Data?
    
    var userName: String?
    
    var path: String?
    
    
    var miniProgramType: UShareWXMiniProgramType?
    
    
}



// ......
