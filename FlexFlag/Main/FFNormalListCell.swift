//
//  FFNormalListCell.swift
//  FlexFlag
//
//  Created by 张佳宏 on 2022/12/12.
//

import UIKit

class FFNormalListCell: UITableViewCell {

    lazy var titleLabel: UILabel = {
        let label = UILabel.init(frame: CGRect(x: 15, y: 10, width: self.bounds.width - 30, height: 35))
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return label
    }()
    
    lazy var subtitleLabel: UILabel = {
        let label = UILabel.init(frame: CGRect(x: 15, y: titleLabel.frame.maxY + 10, width: self.bounds.width - 30, height: 20))
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(subtitleLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
