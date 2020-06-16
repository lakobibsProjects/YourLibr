//
//  ShowGroupBookView.swift
//  YourLibr
//
//  Created by user166683 on 5/27/20.
//  Copyright © 2020 Lakobib. All rights reserved.
//

import UIKit

class ShowGroupBookView: UIView {
    
    var contentView: UIView?

    private func setup() {
        guard let view = loadViewFromNib() else { return }
        
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        contentView = view
    }
    
    private func loadViewFromNib() -> UIView? {
        let nibName = String(describing: type(of: self))
        let nib = UINib(nibName: nibName, bundle: Bundle(for: ShowGroupBookView.self))
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
}
