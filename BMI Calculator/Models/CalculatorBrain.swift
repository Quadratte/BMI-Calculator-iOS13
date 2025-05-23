import UIKit

struct CalculatorBrain {
  
  var bmi: BMI?
  var advice: String?
  
  func getBMIValue() -> String {
    let convertedBMI = bmi?.value ?? 0.0
    return String(format: "%.1f", convertedBMI)
  }
  
  mutating func getAdvice() -> String {
    bmi?.advice ?? "Some text should be here"
  }
  
  func getColor() -> UIColor {
    bmi?.color ?? UIColor.white
  }
  
  mutating func calculateBMI(height: Float, weight: Float) {
    let bmiValue = weight / (height * height)
    
    if bmiValue < 18.5 {
      bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .cyan)
    } else if bmiValue < 24.9 {
      bmi = BMI(value: bmiValue, advice: "Ok", color: .green)
    } else {
      bmi = BMI(value: bmiValue, advice: "Eat less snacks", color: .red)
    }
  }
  
}
