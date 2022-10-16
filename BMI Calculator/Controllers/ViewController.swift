
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format:"%.2f", sender.value)
        heightLabel.text = height
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format:"%.0f", sender.value)
        weightLabel.text = weight
    }
    @IBAction func calculatePresses(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        var bmi = weight / pow(height, 2)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", bmi)
        self.present(secondVC, animated: true,completion: nil)
    }
}

