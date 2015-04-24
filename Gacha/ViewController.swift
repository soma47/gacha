//
//  ViewController.swift
//  Gacha
//
//  Created by Soma on 2015/04/24.
//  Copyright (c) 2015年 Soma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getRandomNumber(){
        number = Int(arc4random_uniform(10))
        NSLog("発生した乱数は...%dです", number)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var resultViewController = segue.destinationViewController as ResultViewController
        resultViewController.number = self.number
        
    }

}

