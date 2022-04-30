//
//  TableViewCell.swift
//  EmojiReader
//
//  Created by Dannek on 30.04.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var emojiLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func set(object: Emoji) {
        self.emojiLabel.text = object.emoji
        self.nameLabel.text = object.name
        self.descriptionLabel.text = object.description
    }

}
