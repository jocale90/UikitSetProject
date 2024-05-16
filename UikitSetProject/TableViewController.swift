//
//  TableViewController.swift
//  UikitSetProject
//
//  Created by Jose Pernia on 2024-05-16.
//

import UIKit

class TableViewController: UITableViewController {

    let items = ["Item 1", "Item 2", "Item 3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Table View"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Selected \(items[indexPath.row])")
    }
}
