//
//  ViewController.swift
//  test_pod_foundation
//
//  Created by acumenrev on 11/25/2022.
//  Copyright (c) 2022 acumenrev. All rights reserved.
//

import UIKit
import test_pod_foundation

class ViewController: UIViewController {

    @IBOutlet private weak var imgView : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let a = SampleTest.generateValue()
        let sumValue = SampleTest.sum(valueA: 1, valueB: 2)
        
        imgView.image = UIImage(named: "Basketball", in: Bundle(for: SampleViewController.self), compatibleWith: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    @IBAction private func openVC(_ sender : Any) {
        let vc = SampleViewController.init(nibName: "SampleViewController", bundle: Bundle(for: SampleViewController.self))
        present(vc, animated: true)
    }

}

