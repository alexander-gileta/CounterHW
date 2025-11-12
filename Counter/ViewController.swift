//
//  ViewController.swift
//  Counter
//
//  Created by Alexander on 12.11.2025.
//

import UIKit


class ViewController: UIViewController {
    
    private let dateFormatter = DateFormatter()
    
    private var counter = 0
    
    @IBOutlet private weak var counterButton: UIButton!
    @IBOutlet private weak var counterView: UILabel!
    @IBOutlet private weak var counterHistoryView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        dateFormatter.dateFormat = "dd.MM.yy в HH:mm:ss"
    }
    
    @IBAction private func buttonPlusDidTap() {
        if counter < Int.max {
            counter+=1
            counterHistoryView.text.append("\n\(dateFormatter.string(from: Date())): значение изменено на +1")
        }
        counterView.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction private func buttonMinusDidTap() {
        if counter > 0 {
            counter-=1
            counterHistoryView.text.append("\n\(dateFormatter.string(from: Date())): значение изменено на -1")
        } else {
            counterHistoryView.text.append("\n\(dateFormatter.string(from: Date())): попытка уменьшить значение счётчика ниже 0")
        }
        counterView.text = "Значение счётчика: \(counter)"
    }

    @IBAction private func buttonResetDidTap() {
        counter = 0
        counterHistoryView.text.append("\n\(dateFormatter.string(from: Date())): значение сброшено")
        counterView.text = "Значение счётчика: \(counter)"
    }
}

