//
//  SampleViewController.swift
//  test_pod_foundation
//
//  Created by Tri Vo on 25/11/2022.
//

import UIKit
extension UIViewController {

    class func loadController() -> Self {
         return Self(nibName: String(describing: self), bundle: nil)
         //Or You can use this as well
         //Self.init(nibName: String(describing: self), bundle: nil)
    }
}

public class SampleViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public static func loadVC() -> SampleViewController {
        let vc = SampleViewController.init(nibName: "SampleViewController", bundle: Bundle.init(identifier: "test_pod_foundation"))
        return vc
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
