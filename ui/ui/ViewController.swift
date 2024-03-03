import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tf: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btn(_ sender: Any) {

        let t = tf.text!
        lbl.text = t
        tf.text! = ""
    }
}

