//
//  ViewController.swift
//  swift_novels
//
//  Created by 张奎 on 2016/10/1.
//  Copyright © 2016年 jokechat. All rights reserved.
//

import UIKit
import SnapKit
import Log

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
//        
//        let util = TimeUtil()
//        util.getFormatStingTime()
        
        let Log = Logger()
        
        Log.trace("Called!!!")
        Log.debug("Who is self:", self)

        
//        let bookListView = BookListViewController()
//        
//         self.show(bookListView, sender: nil)
        
//        self.present(bookListView, animated: true)
//        {
//
//            print("点击按钮")
//        }
        
        
        let listViewController = self.storyboard?.instantiateViewController(withIdentifier: "BookListViewController")
        
//        self.present(listViewController!, animated: true) {
////            code
//        }
        
        self.show(listViewController!, sender: nil)

        
    
        
    }

}

