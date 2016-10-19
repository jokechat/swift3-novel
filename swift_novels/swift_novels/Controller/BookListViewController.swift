//
//  BookListViewController.swift
//  swift_novels
//
//  Created by 张奎 on 2016/10/13.
//  Copyright © 2016年 jokechat. All rights reserved.
//

import UIKit

class BookListViewController: UITableViewController {

    let myData  = ["水浒传","三国演义","西游记","红楼梦","本草纲目","中华上下五千年"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        print("hello")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func back()
    {
        print("点击了返回按钮")
        
        let listViewController = self.storyboard?.instantiateViewController(withIdentifier: "manView")
        self.show(listViewController!, sender: nil)
        
        
    }

    // table view 节点数量
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 动态table view 中单元格数量
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    // tableview 中单元格填充数据
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "reuseIdentifier")
        
        let index   = ((indexPath as NSIndexPath).row)
        
        cell.imageView?.image = UIImage(named:"hhh.png")
        cell.textLabel?.text = "\(myData[index])"
        cell.detailTextLabel?.text = "详情lab"
        return cell
    }
    
    // tableview 选取行
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cellView = tableView.cellForRow(at: indexPath)
        // 单元格文本数据
//        cellView?.textLabel?.text
        
        let listViewController = self.storyboard?.instantiateViewController(withIdentifier: "manView")
        self.show(listViewController!, sender: nil)
    }
    
}
