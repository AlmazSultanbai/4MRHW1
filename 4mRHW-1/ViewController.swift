//
//  ViewController.swift
//  4mRHW-1
//
//  Created by Sultanbai Almaz on 31/8/23.
//

import UIKit

class ViewController: UIViewController {
    
    
private let tableView = UITableView()
    private var contacts: [Contact] = []
    
 private let cellID = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initUI()
        initData()
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
    }
    private func initUI(){
        
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.center = view.center
//        let height = UIScreen.main.bounds.height
//        let width = UIScreen.main.bounds.width
//        tableView.heightAnchor.constraint(equalToConstant: height - 40).isActive = true
//        tableView.widthAnchor.constraint(equalToConstant: width ).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//
    }
    private func initData() {
        contacts = [Contact(image: "star", name: "Almaz", num: "+99670535345"),
                    Contact(image: "star", name: "Asel", num: "+99670535345"),
                    Contact(image: "star", name: "Nurlan", num: "+99670535345"),
                    Contact(image: "star", name: "Arsen", num: "+99670535345"),
                    Contact(image: "star", name: "Jamal", num: "+99670535345")]
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.imageView?.image = UIImage(systemName: contacts[indexPath.row].image)
        return cell
    }
}

//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: .value2, reuseIdentifier: "cell")
//        cell.textLabel?.text = "It is cell: \(indexPath.row)"
//        cell.imageView?.image = UIImage(systemName: "star")
//        cell.detailTextLabel?.text = " It is detailText: \(indexPath.row)"
//
//        return cell
//
struct Contact {
    
    var image: String
    var name:String
    var num: String
    
}
