//
//  ViewController.swift
//  firstSwift
//
//  Created by Terry on 2018/3/9.
//  Copyright © 2018年 Terry. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let label = UILabel()
    let myTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "第一个页面"
//        self.view .addSubview(self.addLable())
        
        /**
         
         
         */
        
        
        self.myTableView.frame = view.bounds;
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        view.addSubview(self.myTableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func addLable() -> UILabel {
            
        let rect:CGRect = CGRect(x: 100, y: 100, width: 100, height: 100)
        //        let label:UILabel=UILabel(frame:rect)
        
        label.frame = rect
        label.text = "alksdjf;"
        label.backgroundColor = .red
        label.textAlignment = .center
        label.text = "'dafad'"
        
        return label
    }
    
    //Section
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    //行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    //cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80;
    }
    
    //cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cell";
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
        
        cell.textLabel?.text = "第\(indexPath.row+1)行"
        cell.detailTextLabel?.text = "test\(indexPath.row)"
        return cell
    }
    
    
    //cell点击
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alertController = UIAlertController(title: "提示", message: "这是第\(indexPath.row+1)个cell", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "好的", style: .default, handler: nil)
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
}

