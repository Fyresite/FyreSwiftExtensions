//
//  ActivityIndicator.swift
//  FyreSwiftExtensions
//
//  Created by Travis Delly on 4/22/19.
//

import UIKit
import NVActivityIndicatorView

public class ActivityIndicator: UIView, NibView {
    
    @IBOutlet private weak var activityIndicatorHeight: NSLayoutConstraint!
    @IBOutlet private weak var activityIndicatorWidth: NSLayoutConstraint!
    
    public var activityWidth:CGFloat = 80.0 {
        didSet {
            activityIndicatorWidth.constant = self.activityWidth;
            self.layoutIfNeeded();
        }
    }
    public var activityHeight:CGFloat = 80.0 {
        didSet {
            activityIndicatorHeight.constant = self.activityHeight;
            self.layoutIfNeeded();
        }
    }
    
    //    public var loader: NVActivityIndicatorView?;
    @IBOutlet weak var loaderView: NVActivityIndicatorView!
    @IBOutlet weak var loadingLabel: UILabel!
    
    public init(on view: UIView) {
        super.init(frame: CGRect.zero);
        self.setup();
        view.addEdgeConstrainedSubView(view: self);
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame);
        self.setup();
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func startAnimating() {
        loaderView.startAnimating();
    }
    
    public func stopAnimating() {
        loaderView.stopAnimating();
        self.removeFromSuperview();
    }
}

extension ActivityIndicator {
    public func setup() {
        self.xibSetup();
        self.loaderView.type = .ballClipRotatePulse;
        self.loaderView.color = .FyresiteOrange500;
        self.backgroundColor = UIColor.colorFromHex(rgb: 0x000000, alpha: 0.4);
    }
}

