//
//  ViewController.swift
//  iOSChallange3
//
//  Created by 황인호 on 2023/03/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    @IBOutlet weak var load1: UIButton!
    @IBOutlet weak var load2: UIButton!
    @IBOutlet weak var load3: UIButton!
    @IBOutlet weak var load4: UIButton!
    @IBOutlet weak var load5: UIButton!
    @IBOutlet weak var loadAllImages: UIButton!
    
    
    let imageurls = ["https://images.unsplash.com/photo-1677727990864-2e519807eeb6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        "https://images.unsplash.com/photo-1677725284091-505971561e6d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
        "https://images.unsplash.com/photo-1677461404789-1faafbd934e5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
        "https://images.unsplash.com/photo-1677690092396-e1efd8a3bc01?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
        "https://images.unsplash.com/photo-1677688010633-138cea460828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0MHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60"]
    
    var isButtonSelected = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
        
    }
    
    func makeUI() {
        load1.layer.cornerRadius = 8
        load2.layer.cornerRadius = 8
        load3.layer.cornerRadius = 8
        load4.layer.cornerRadius = 8
        load5.layer.cornerRadius = 8
        loadAllImages.layer.cornerRadius = 8
    }
    @IBAction func loadButtonTapped1(_ sender: UIButton) {
        let url = URL(string: imageurls[0])
        imageView1.load(url: url!)
    }
    @IBAction func loadButtonTapped2(_ sender: UIButton) {
        let url = URL(string: imageurls[1])
        imageView2.load(url: url!)
    }
    @IBAction func loadButtonTapped3(_ sender: UIButton) {
        let url = URL(string: imageurls[2])
        imageView3.load(url: url!)
    }
    @IBAction func loadButtonTapped4(_ sender: UIButton) {
        let url = URL(string: imageurls[3])
        imageView4.load(url: url!)
    }
    @IBAction func loadButtonTapped5(_ sender: UIButton) {
        let url = URL(string: imageurls[4])
        imageView5.load(url: url!)
    }
    
    @IBAction func loadAllImagesTapped(_ sender: UIButton) {
        let url1 = URL(string: imageurls[0])
        imageView1.load(url: url1!)
        let url2 = URL(string: imageurls[1])
        imageView2.load(url: url2!)
        let url3 = URL(string: imageurls[2])
        imageView3.load(url: url3!)
        let url4 = URL(string: imageurls[3])
        imageView4.load(url: url4!)
        let url5 = URL(string: imageurls[4])
        imageView5.load(url: url5!)
    }
}
extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

