//
//  LinkUpVC.swift
//  QuickLink
//
//  Created by Faizaan Chishtie on 2017-11-01.
//  Copyright © 2017 Faizaan Chishtie. All rights reserved.
//

import UIKit

class LinkUpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func LinkUpButtonTapped(_ sender: Any) {
        showActivityViewController()
    }
    
    func showActivityViewController(){
        let imageToShare = [#imageLiteral(resourceName: "IMG_4605")]
        let activityViewController = UIActivityViewController(activityItems: [imageToShare], applicationActivities: nil)
        present(activityViewController,animated: true, completion:nil)
        
    }

}
