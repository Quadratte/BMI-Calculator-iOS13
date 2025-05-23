import UIKit

class CalculateViewController: UIViewController {
  
  var calculatorBrain = CalculatorBrain()
  
  @IBOutlet var heightSlider: UISlider!
  @IBOutlet var weightSlider: UISlider!
  @IBOutlet var heightLabel: UILabel!
  @IBOutlet var weightLabel: UILabel!
  
  
  @IBAction func adjustHeight(_ sender: UISlider) {
    let height = String(format: "%.2f", sender.value)
    heightLabel.text = "\(height)m"
  }
  
  @IBAction func adjustWeight(_ sender: UISlider) {
    let weight = String(format: "%.1f", sender.value)
    weightLabel.text = "\(weight)kg"
    
  }
  
  @IBAction func calculateButtonTapped(_ sender: UIButton) {
    
    calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
    
    self.performSegue(withIdentifier: "goToResult", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let destinationVC = segue.destination as? ResultViewController
      destinationVC?.bmiValue = calculatorBrain.getBMIValue()
      destinationVC?.advice = calculatorBrain.getAdvice()
      destinationVC?.color = calculatorBrain.getColor()
    }
  }
}
