//
//  HomeViewController.swift
//  AnimationDemo
//
//  Created by lieon on 2019/10/10.
//  Copyright © 2019 lieon. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    fileprivate lazy var items: [ListItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(UITableViewCell.self, for: indexPath)
        cell.textLabel?.text = items[indexPath.row].name
        return cell
    }
}

extension HomeViewController {
    
    fileprivate func setupUI() {
        title = "动画列表"
        tableView.registerClassWithCell(UITableViewCell.self)
        let item = ListItem("CASpringAnimation-Demo") {[weak self] in
            let vcc = CASpringViewController()
            self?.navigationController?.pushViewController(vcc, animated: true)
        }
        items.append(item)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let handler = items[indexPath.row].handler
         handler?()
    }
}

class ListItem {
    var name: String
    var handler: (() -> Void)?
    
    init(_ name: String, handler: (() -> Void)?) {
        self.name = name
        self.handler = handler
    }
}
