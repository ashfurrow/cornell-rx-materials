//
//  ViewController.swift
//  Sequences
//
//  Created by Ash Furrow on 2015-10-08.
//  Copyright © 2015 Artsy. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        textField.rx_text.skip(1).subscribeNext { (value) -> Void in
            print("Text is is \(value)")
        }.addDisposableTo(disposeBag)

        // The following two blocks of code produce identical behaviour.

//        textField.rx_text.map { (value) -> Bool in
//            return value.characters.contains("@")
//        }.map { (validEmail) -> UIColor in
//            return validEmail ? .greenColor() : .redColor()
//        }.subscribeNext { [weak self] color in
//            self?.view.backgroundColor = color
//        }.addDisposableTo(disposeBag)


//        textField.rx_text.map { (value) -> Bool in
//            return value.characters.contains("@")
//        }.map { (validEmail) -> UIColor in
//            return validEmail ? .greenColor() : .redColor()
//        }.bindTo(self.backgroundColor)
//        .addDisposableTo(disposeBag)
    }
}

