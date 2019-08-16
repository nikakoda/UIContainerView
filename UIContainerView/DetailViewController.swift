//
//  DetailViewController.swift
//  UIContainerView
//
//  Created by Ника Перепелкина on 16/08/2019.
//  Copyright © 2019 Nika Perepelkina. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    
    let imageNameArray = [ "Персидская",
                           "Шотландская вислоухая",
                           "Бенгальская",
                           "Сфинкс"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // количество строк
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNameArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath) // получили ячейку
        
        cell.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        cell.textLabel?.text = imageNameArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
   // фиксировать строчку
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = parent as? ViewController {
            let catTitle = imageNameArray[indexPath.row]
            viewController.titleLabel.text = catTitle
            
            viewController.imageCover.image = UIImage(named: catTitle )
        }
    }
    

   

}
