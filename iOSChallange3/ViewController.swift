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
    
    let imageurls = ["https://img1.daumcdn.net/thumb/C300x430/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fdae69d91dee05da54a630cb63c10109366ccac90","https://img.hankyung.com/photo/202205/AA.30080001.1.jpg","https://www.kukinews.com/data/kuk/image/2022/06/10/kuk202206100269.680x.0.jpg","https://newsimg.hankookilbo.com/cms/articlerelease/2021/06/07/86fa68b8-4fdf-43f9-8f44-966b1bde0a97.jpg","https://file2.nocutnews.co.kr/newsroom/image/2022/08/27/202208271436351479_0.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
        
    }
    
    func makeUI() {
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

