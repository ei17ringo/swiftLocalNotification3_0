//
//  ViewController.swift
//  samplePushNotification
//
//  Created by Eriko Ichinohe on 2016/02/23.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapBtn(_ sender: UIButton) {
        print("押されました")
        
        // ローカル通知の設定
        let notification : UILocalNotification = UILocalNotification()
        
        // タイトル
        notification.alertTitle = "Fire"
        
        // 通知メッセージ
        notification.alertBody = "ファイヤー！！！"
        
        // Timezoneの設定
        notification.timeZone = TimeZone.current
        
        // 10秒後に通知を設定
        notification.fireDate = Date(timeIntervalSinceNow: 10)
        
        // Notificationを表示する
        UIApplication.shared.scheduleLocalNotification(notification)
        
    }

}

