//
//  CustomTableViewCell.swift
//  CustomTableView
//
//  Created by 藤治仁 on 2023/09/17.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    /// UITableViewCellの識別子
    static let identifier = "CustomTableViewCell"
    /// xibをロードするための関数
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    /// UITableViewCellの高さ
    static let height: CGFloat = 60
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var logoTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(image: UIImage?, title: String) {
        logoImageView.image = image
        logoTitleLabel.text = title
    }
    
}
