////
////  LeaderBoard.swift
////  slider
////
////  Created by Shawn on 11/8/17.
////  Copyright © 2017 TeamWe. All rights reserved.
////
//
//import UIKit
//
//class LeaderBoard: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    //var store = DataStore.sharedInstnce
//
//
//    @IBOutlet weak var tableView: UITableView!
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.store.shoppingItems.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        cell.textLabel?.text = self.store.shoppingItems[indexPath.row].name
//        return cell
//    }
//
//    /*
//     // MARK: - Navigation
//
//     // In a storyboard-based application, you will often want to do a little preparation before navigation
//     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//     // Get the new view controller using segue.destinationViewController.
//     // Pass the selected object to the new view controller.
//     }
//     */
//
//}
//
