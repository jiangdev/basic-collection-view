//
//  PuppyViewController.swift
//  MyPictureCollectionView
//
//  Created by JIANG, DARREL [AG/1000] on 8/16/17.
//  Copyright © 2017 JIANG, DARREL [AG/1000]. All rights reserved.
//

import UIKit

class PuppyViewController: UIViewController {

    @IBOutlet weak var puppyImageView: UIImageView!
    @IBOutlet weak var puppyKindLabel: UILabel!
//    @IBOutlet weak var puppyDescriptionLabel: UILabel!
    @IBOutlet weak var puppyDescriptionBox: UITextView!
    
//    var puppyObject: PuppyObject = PuppyObject(type: "", image: "", description: "") {
//        didSet{
//            self.configureCell()
//        }
//    }
    
    var puppyObject: PuppyObject = PuppyObject(type: "", image: "", description: "")
    
    override func viewWillAppear(_ animated: Bool) {
        self.configureCell()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func configureCell() {
        puppyImageView.image = UIImage.init(named: puppyObject.image)
        puppyKindLabel.text = puppyObject.type
        puppyDescriptionBox.text = puppyObject.description
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
