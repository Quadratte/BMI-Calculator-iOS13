
import UIKit

class CalculateViewController: UIViewController {
  
  @IBOutlet var heightSlider: UISlider!
  @IBOutlet var weightSlider: UISlider!
  @IBOutlet var heightLabel: UILabel!
  @IBOutlet var weightLabel: UILabel!
  var bmi = ""
  
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
  
  @IBAction func calculateButtonTapped(_ sender: UIButton) {
    bmi = String(weightSlider.value / pow(heightSlider.value, heightSlider.value))
    self.performSegue(withIdentifier: "goToResult", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let destinationVC = segue.destination as! ResultViewController 
      destinationVC.bmiValue = bmi
    }
  }
}
