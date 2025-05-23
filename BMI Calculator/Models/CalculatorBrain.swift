import UIKit

struct CalculatorBrain {
  
  var bmi: Float?
  
  func getBMIValue() -> String {
    let convertedBMI = bmi ?? 0.0
    return String(format: "%.1f", convertedBMI)
  }
  
  
  mutating func calculateBMI(height: Float, weight: Float) {
    bmi = weight / (height * height)
  }
  
}
