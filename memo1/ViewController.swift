//
//  ViewController.swift
//  memo1
//
//  Created by nowall on 2016/10/29.
//  Copyright © 2016年 nonwall-hachimantai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var memoTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //textのconnecting範囲
    override func viewWillAppear(_ animated: Bool) {
        
        //textの反映
        let box = memoTextView.text
        print(box)
        
        //Userdefaultの定義
        let ud = UserDefaults.standard
        
        //Stringとしてlogで表示
        if (ud.object(forKey:"id") != nil){
            
            memoTextView.text = ud.object(forKey: "id") as! String!
        }
    
        
    }
    
    //保存ボタン反映範囲
    @IBAction func saveButton(_ sender: AnyObject) {
        
        //textとUserdefaultの定義
        let box = memoTextView.text
        let ud = UserDefaults.standard
        
        //udと保存されたtextの反映
        print(ud)
        print(memoTextView.text)
        
        //保存
        ud.set(box, forKey: "id")
        
        //保存したtextの反映
        print(box)
        
        
    }

    @IBAction func deleteButton(_ sender: AnyObject) {
        
        //Userdefaultの定義
        let ud = UserDefaults.standard
        
        //textを空にする定義
        memoTextView.text = nil
        
        //deleteの定義
        ud.removeObject(forKey: "id")
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

