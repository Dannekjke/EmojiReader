//
//  NewTableViewController.swift
//  EmojiReader
//
//  Created by Dannek on 30.04.2022.
//

import UIKit

class NewTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavorite: false)
    
    @IBOutlet var emojiTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var descriptionTextField: UITextField!
    @IBOutlet var saveButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSaveButtonState()
        updateUI()
    }
    
    private func updateSaveButtonState() {
        let emojiText = emojiTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    private func updateUI() {
        emojiTextField.text = emoji.emoji
        nameTextField.text = emoji.name
        descriptionTextField.text = emoji.description
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        let emoji = emojiTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFavorite: self.emoji.isFavorite)
    }
}
