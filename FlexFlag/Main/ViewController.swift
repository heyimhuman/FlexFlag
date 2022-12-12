//
//  ViewController.swift
//  FlexFlag
//
//  Created by 张佳宏 on 2022/12/12.
//

import UIKit

class ViewController: FFViewController {

    lazy var tableView: UITableView = {
        let tv = UITableView.init(frame: view.bounds, style: .grouped)
        tv.frame = view.bounds
        tv.delegate = self
        tv.dataSource = self
        tv.register(FFNormalListCell.self, forCellReuseIdentifier: "FFNormalListCell")
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ff_hideNavigationBar = true
        view.addSubview(tableView)
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FFNormalListCell") as! FFNormalListCell
        cell.titleLabel.text = "Title"
        cell.subtitleLabel.text = "SubTitle"
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section Title"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100;
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50;
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = FFCheckingViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
