//
//  ViewController.swift
//  azora
//
//  Created by Luis Tavares on 12/04/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView: UITableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.configureTableView()
    }
    
    private func configureTableView(){
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.separatorInset = .zero
        self.tableView.separatorStyle = .singleLine
        self.tableView.separatorColor = .darkGray
        //self.tableView.separatorEffect = .some(UIVisualEffect()) //*****WORK THIS OUT*****// 
        self.view.addSubview(self.tableView)
    }
}

extension ViewController: UITableViewDelegate{
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

}

