//
//  ViewController.swift
//  MyPictureCollectionView
//
//  Created by JIANG, DARREL [AG/1000] on 8/16/17.
//  Copyright © 2017 JIANG, DARREL [AG/1000]. All rights reserved.
//

import UIKit

class PuppyCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!

    let puppy1 = PuppyObject(type: "Puppy 1", image: "puppy1.jpg", description: "Puppy 1 description")
    let puppy2 = PuppyObject(type: "Puppy 2", image: "puppy2.jpg", description: "Puppy 2 description")
    let puppy3 = PuppyObject(type: "Puppy 3", image: "puppy3.jpg", description: "Puppy 3 description")
    let puppy4 = PuppyObject(type: "Puppy 4", image: "puppy4.jpg", description: "Puppy 4 description")
    let puppy5 = PuppyObject(type: "Puppy 5", image: "puppy5.jpg", description: "Puppy 5 description")
    let puppy6 = PuppyObject(type: "Puppy 6", image: "puppy6.jpg", description: "Puppy 6 description")
    let puppy7 = PuppyObject(type: "Doge/Chihuahua Mix", image: "puppy7.jpg", description: "Loves long naps, barking at squirrels, eating your food. Hates STORMS.")
    let puppy8 = PuppyObject(type: "Puppy 8", image: "puppy8.jpg", description: "Puppy 8 description")
    let puppy9 = PuppyObject(type: "Dachshund", image: "puppy9.jpg", description: "Sleeps all day...all night. Pretty much just a log that barks sometimes.")
    let puppy10 = PuppyObject(type: "Puppy 10", image: "puppy10.jpg", description: "Puppy 10 description")
    let puppy11 = PuppyObject(type: "Puppy 11", image: "puppy11.jpg", description: "Puppy 11 description")
    let puppy12 = PuppyObject(type: "Puppy 12", image: "puppy12.jpg", description: "Puppy 12 description")
    var puppyArray: Array<PuppyObject> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemSize = UIScreen.main.bounds.width/2 - 2
        
        puppyArray = [puppy1, puppy2, puppy3, puppy4, puppy5, puppy6, puppy7, puppy8, puppy9, puppy10, puppy11, puppy12]
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
        layout.minimumInteritemSpacing = 2
        layout.minimumLineSpacing = 2
        
        collectionView.collectionViewLayout = layout
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.puppyArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Photo Cell", for: indexPath) as! PuppyCollectionViewCell
        cell.myImageView.image = UIImage.init(named: self.puppyArray[indexPath.row].image)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Puppy Segue",
            let destination = segue.destination as? PuppyViewController,
            let routeIndex = self.collectionView.indexPath(for: sender as! PuppyCollectionViewCell)
        {
            destination.puppyObject = puppyArray[routeIndex.row]
        }
    }
}

struct PuppyObject {
    let type: String
    let image: String
    let description: String
}



