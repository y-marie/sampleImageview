//
//  ViewController.swift
//  sampleImageview
//
//  Created by 有希 on 2017/03/10.
//  Copyright © 2017年 Yuki Mitsudome. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myimageview: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //画像１ボタンが押された時
    @IBAction func tapimage1(_ sender: UIButton) {
        myimageview.image = UIImage(named: "omu.jpg")
    }
    
    //画像２ボタンが押された時
    //うどんの画像がどっかいった
//    @IBAction func tapimage2(_ sender: UIButton) {
//        myimageview.image = UIImage(named: "udon.jpg")
//    }
    
    //シェアするためのウィンドウを表示
    @IBAction func tapToShare(_ sender: UIButton) {
        
        //アクティビティービューを作成
        let controller = UIActivityViewController(activityItems: [myimageview.image], applicationActivities: nil)
        
        //作成したアクティビティービューを表示
        present(controller, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

