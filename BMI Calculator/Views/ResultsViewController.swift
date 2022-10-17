import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    var advice : String?
    var color : UIColor?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePresssed(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    
}
