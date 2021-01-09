//
//  EventTableViewController.swift
//  FoodPin
//
//  Created by 林哲豪 on 2021/1/9.
//  Copyright © 2021 NDHU_CSIE. All rights reserved.
//

import UIKit

class EventTableViewController: UIViewController {
    
    
    var restaurantNames = ["臺北市孔廟 祭孔大典", "台北信義區耶誕城", "台北杜鵑花季", "新北耶誕城", "台北國際電玩展", "大稻埕情人節", "台北河岸音樂季", "陽明山花季", "台北國慶日活動 總統府光雕秀", "台北燈節", "士林官邸春節花卉展", "竹子湖海芋季 繡球花季"]
    
    
    @IBOutlet var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(  tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "datacell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = restaurantNames[indexPath.row]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myLabel.text = "My favorite sport is "+restaurantNames[indexPath.row]
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
