//
//  MainViewController.swift
//  YourLibr
//
//  Created by user166683 on 5/26/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //for segue
    /*
    func temp(){
        performSegue(withIdentifier: .showList, sender: nil)
    }*/
}



extension MainViewController: SegueHandler {
    
    enum SegueIdentifier: String {
        case showList
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segueIdentifier(for: segue) {
        case .showList:
            //TODO: insert logic
            print("showList")

        }
    }
}
