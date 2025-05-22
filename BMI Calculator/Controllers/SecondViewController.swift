
import UIKit

class SecondViewController: UIViewController {
  
  var bmiValue = "0.0"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    
    let label = UILabel()
    label.textColor = .red
    label.text = bmiValue
    label.frame = CGRect(x: 0, y: 0, width: 50, height: 20)
    view.addSubview(label)
  }
}
