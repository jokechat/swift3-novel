//
//  TimeUtil.swift
//  novel
//
//  Created by 张奎 on 2016/9/28.
//  Copyright © 2016年 jokechat. All rights reserved.
//

import Foundation

class TimeUtil
{
    /*h获取格式化时间 Y-M-d H:m:s*/
    func getFormatStingTime() -> String
    {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.locale = Locale.current // 设置时区
        dateFormatter.dateFormat = "Y-M-d H:m:s"// 格式化时间
        let stringDate = dateFormatter.string(from: currentDate)
        return stringDate
    }
    
    //获取格式化时间 2016929
    func getStingTimeDay() ->String
    {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.locale = Locale.current // 设置时区
        dateFormatter.dateFormat = "YMd"// 格式化时间
        let stringDate = dateFormatter.string(from: currentDate)
        return stringDate
    }
    
    
    //获取格式化时间戳 2016929155423
    func getStingTimeStamp() ->String
    {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.locale = Locale.current // 设置时区
        dateFormatter.dateFormat = "YMdHms"// 格式化时间
        let stringDate = dateFormatter.string(from: currentDate)
        return stringDate
    }
}

