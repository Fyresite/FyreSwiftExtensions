//
//  UIViewExtensions.swift
//  FyreSwiftExtensions
//
//  Created by Travis Delly on 4/22/19.
//

import UIKit

extension UIView {
    
    public func addShadow(width: CGFloat, height: CGFloat) {
        self.layer.shadowRadius = 8.0;
        self.layer.shadowOpacity = 0.15
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: width, height: height)
    }
    
    /// Adds a view as a subview and constrains it to the edges
    /// of its new containing view.
    ///
    /// - Parameter view: view to add as subview and constrain
    public func addEdgeConstrainedSubView(view: UIView) {
        addSubview(view)
        edgeConstrain(subView: view)
    }
    
    /// Constrains a given subview to all 4 sides
    /// of its containing view with a constant of 0.
    ///
    /// - Parameter subView: view to constrain to its container
    public func edgeConstrain(subView: UIView) {
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // Top
            NSLayoutConstraint(item: subView,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .top,
                               multiplier: 1.0,
                               constant: 0),
            // Bottom
            NSLayoutConstraint(item: subView,
                               attribute: .bottom,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .bottom,
                               multiplier: 1.0,
                               constant: 0),
            // Left
            NSLayoutConstraint(item: subView,
                               attribute: .left,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .left,
                               multiplier: 1.0,
                               constant: 0),
            // Right
            NSLayoutConstraint(item: subView,
                               attribute: .right,
                               relatedBy: .equal,
                               toItem: self,
                               attribute: .right,
                               multiplier: 1.0,
                               constant: 0)
            ])
    }
    
    public func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
//    func addActivityIndicator(width: CGFloat, height: CGFloat, type: NVActivityIndicatorType?, text: String?, color: UIColor?) {
//        if self.viewWithTag(6969) != nil {
//            return;
//        }
//
//        let activityIndicator = ActivityIndicator(on: self);
//        activityIndicator.tag = 6969;
//        activityIndicator.activityHeight = height;
//        activityIndicator.activityWidth = width;
//
//        if let type = type {
//            activityIndicator.loaderView.type = type;
//        }
//
//        if let text = text {
//            activityIndicator.loadingLabel.text = text;
//        }
//
//        if let color = color {
//            activityIndicator.loaderView.color = color;
//        }
//
//        activityIndicator.startAnimating();
//    }
//
//    func removeActivityIndicator() {
//        if let view = self.viewWithTag(6969) as? ActivityIndicator{
//            view.stopAnimating();
//        }
//    }
}

