//
//  ViewController.swift
//  CustomTableView
//
//  Created by 藤治仁 on 2023/09/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    private let catalogs: [Catalog] = [
        Catalog(image: "figure.run", name: "Running"),
        Catalog(image: "figure.archery", name: "Figure"),
        Catalog(image: "figure.badminton", name: "Badminton"),
        Catalog(image: "figure.pool.swim", name: "Swiming"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // TableViewにカスタムセルを登録する
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catalogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as? CustomTableViewCell else {
            fatalError("Empty Cell")
        }
        
        let catalog = catalogs[indexPath.row]
        cell.set(image: UIImage(systemName: catalog.image), title: catalog.name)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CustomTableViewCell.height
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(indexPath.row)
    }
}
