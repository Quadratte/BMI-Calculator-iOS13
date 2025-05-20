import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var heightSlider: UISlider!
  @IBOutlet var weightSlider: UISlider!
  @IBOutlet var heightLabel: UILabel!
  @IBOutlet var weightLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  @IBAction func adjustHeight(_ sender: UISlider) {
    let height = String(format: "%.2f", sender.value)
    heightLabel.text = "\(height)m"
  }
  
  @IBAction func adjustWeight(_ sender: UISlider) {
    
    let weight = String(format: "%.1f", sender.value)
    weightLabel.text = "\(weight)kg"
    
  }
  
}
