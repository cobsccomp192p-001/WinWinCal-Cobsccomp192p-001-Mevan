

import UIKit

class ViewController: UIViewController {
    
    var screenNumber:Double? = 0;
    var previousNumber:Double? = 0;
    var isOperation=false;
    var operation = 0;
    
    @IBOutlet weak var lblNum: UILabel?
    @IBAction func numbers(_ sender: UIButton)
    {
        
        if let label=lblNum
        {
            if isOperation==true
            {
                label.text=String(sender.tag-1)
                screenNumber=Double(label.text!)
                isOperation=false
            }
            else
            {
                label.text=label.text! + String(sender.tag-1)
                screenNumber = Double(label.text!)
            }

        }
       
    }
    
    @IBAction func opButtons(_ sender: UIButton)
    {
        if let label=lblNum
        {
            if label.text != "" && sender.tag != 11 && sender.tag != 16
            {
            
            
                previousNumber = Double(label.text!)
                
                if sender.tag == 12 //divide
                {
                    label.text = "/"
                }
                else if sender.tag == 13 //multiply
                {
                    label.text = "*"
                }
                else if sender.tag == 14 //substract
                {
                    label.text = "-"
                }
                else if sender.tag == 15 //add
                {
                    label.text = "+"
                }
                operation=sender.tag
                isOperation=true
            }
            else if sender.tag==16
            {
                if operation==12
                {
                    
                }
                if operation==13
                {
                    
                }
                if operation==14
                {
                    
                }
                if operation==15
                {
                    label.text = String(screenNumber!+(previousNumber ?? 0))
                }
            }
        }
        }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

