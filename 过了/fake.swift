//
//  fake.swift
//  fake
//
//  Created by Jz D on 2021/6/25.
//  Copyright © 2021 swift. All rights reserved.
//

import Foundation

import UIKit


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


// ......


enum TextInput_Abdominal{
    static let hundred = "已经达到 140 的字数限制"
    static let hundredTri = "已经达到 130 的字数限制"
    static let ten = "已经达到 20 的字数限制"
    
    static let forTeenty = "已经达到 40 的字数限制"
    static let vertebrates = "已经达到 30 的字数限制"
}



func getWindow() -> UIView?{
    return nil
}


class ProgressHUD{
    
    
    
}

class ProgressCop{
    
    
    
}

extension ProgressHUD{
    
    
    
    
    static func show(in vew: UIView) -> ProgressHUD?{
        return nil
    }
    
    
    func show(in vew: UIView){
        
    }
    

    static func show() -> ProgressHUD?{
        return nil
    }
    
    
    func show(){

    }
    
    
    static func show_pronator() -> ProgressHUD? {
      
        return nil
    }
    
    
    static func debug(_ message: String){
    
        
    }
    
    
    @discardableResult
    static func show(_ message: String) -> ProgressHUD?{

        return nil
    }
    
    
    static func show(long message: String){
        

        
    }
    
    static func show(reel message: String){
        
   
        
    }
    
    static func showKeyboard(ophthalmic message: String){
        

    }
    
    
    
    
    static func show(in view: UIView, _ message: String){
        
    
    }
    
    
    static func show(down view: UIView, _ message: String){

    }
    
    static func show(up view: UIView, _ message: String){

    }
    
    
    func hide(){
 
    }
    
}






extension ProgressCop{
    
    
    @discardableResult
    static func appear(for interval: TimeInterval = 1) -> ProgressCop?{
   
        return nil
        
    }
    
    
    func show(){
  
    }
    
    func hide(){
 
    }
}





// ......


// ......



private var AssociatedObjectHandle_fd_prefersNavigationBarHidden: UInt8 = 0

private var AssociatedObjectHandle_fd_interactivePopDisabled: UInt8 = 1


extension UIViewController{
    
    var fd_prefersNavigationBarHidden: Bool{
        get {
            return objc_getAssociatedObject(self, &AssociatedObjectHandle_fd_prefersNavigationBarHidden) as! Bool
        }
        set {
            objc_setAssociatedObject(self, &AssociatedObjectHandle_fd_prefersNavigationBarHidden, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    
    
    var fd_interactivePopDisabled: Bool{
        get {
            return objc_getAssociatedObject(self, &AssociatedObjectHandle_fd_interactivePopDisabled) as! Bool
        }
        set {
            objc_setAssociatedObject(self, &AssociatedObjectHandle_fd_interactivePopDisabled, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
}

