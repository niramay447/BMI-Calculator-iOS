import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight:Float){
        let bmiValue = weight / (height*height)
        
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
            
        } else if bmiValue<24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor.green)
            
        } else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String{
        let bmiFormatted = String(format: "%.f", bmi?.value ?? 0.0) //chaining optional
        return bmiFormatted
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.black
    }
}
