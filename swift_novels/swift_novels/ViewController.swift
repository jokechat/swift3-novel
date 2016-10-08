//
//  ViewController.swift
//  swift_novels
//
//  Created by 张奎 on 2016/10/1.
//  Copyright © 2016年 jokechat. All rights reserved.
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

    @IBAction func show_booklist()
    {
        print("显示booklist")
        
        let util = TimeUtil()
        util.getFormatStingTime()
        
        let bookListView = BookListViewController()
        
        self.present(bookListView, animated: true)
        {
            print("点击按钮")
        }
    }

}

