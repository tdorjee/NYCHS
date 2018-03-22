//
//  ShimmerTableViewCell.swift
//  NYHS
//
//  Created by Thinley Dorjee on 2/4/18.
//  Copyright © 2018 thinleydeveloper.com. All rights reserved.
//

import UIKit
import SnapKit

class ShimmerTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addview()
        constraintConfig()
        
    }
    
    @objc func addview() {
        self.addSubview(labelContainer)
    }
    
    @objc func constraintConfig(){
        labelContainer.snp.makeConstraints { (container) in
            container.left.top.equalToSuperview().offset(8)
            container.bottom.equalToSuperview().inset(8)
            container.right.equalToSuperview().inset(16)
        }
    }
    
    internal lazy var labelContainer: UIView = {
        let container = UIView()
        return container
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
