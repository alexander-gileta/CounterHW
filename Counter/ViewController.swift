//
//  ViewController.swift
//  Counter
//
//  Created by Alexander on 12.11.2025.
//

import UIKit


class ViewController: UIViewController {
    
    let dateFormatter = DateFormatter()
    
    private var counter = 0
    
    @IBOutlet weak var counterButton: UIButton!
    @IBOutlet weak var counterView: UILabel!
    @IBOutlet weak var counterHistoryView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        dateFormatter.dateFormat = "dd.MM.yy в HH:mm:ss"
    }
    
    @IBAction func buttonPlusDidTap() {
        if counter < Int.max {
            counter+=1
            counterHistoryView.text.append("\n\(dateFormatter.string(from: Date())): значение изменено на +1")
        }
        counterView.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction func buttinMinusDidTap() {
        if counter > 0 {
            counter-=1
            counterHistoryView.text.append("\n\(dateFormatter.string(from: Date())): значение изменено на -1")
        } else {
            counterHistoryView.text.append("\n\(dateFormatter.string(from: Date())): попытка уменьшить значение счётчика ниже 0")
        }
        counterView.text = "Значение счётчика: \(counter)"
    }

    @IBAction func buttonResetDidTap() {
        counter = 0
        counterHistoryView.text.append("\n\(dateFormatter.string(from: Date())): значение сброшено")
        counterView.text = "Значение счётчика: \(counter)"
    }
}

