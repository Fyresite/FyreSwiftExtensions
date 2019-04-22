//
//  FyrePainter.swift
//  FyreSwiftExtensions
//
//  Created by Travis Delly on 4/22/19.
//

import Foundation

public class FyrePainter {
    
    public class func setGradientTopCornerToBottomCorner(_ view: UIView?) {
        let gradient = CAGradientLayer()
        gradient.frame = view?.bounds ?? CGRect.zero
        gradient.colors = [UIColor.FyresiteOrange300.cgColor, UIColor.FyresiteOrange700.cgColor]
        gradient.startPoint = CGPoint.zero
        gradient.endPoint = CGPoint(x: 1, y: 1)
        view?.layer.insertSublayer(gradient, at: 0)
    }
    
    public class func setBackgroundColorGradient(_ view: UIView?, withColors colors: [Any]?, start startPoint: CGPoint, end endPoint: CGPoint) {
        let gradient = CAGradientLayer()
        gradient.frame = view?.bounds ?? CGRect.zero
        
        if colors != nil {
            gradient.colors = colors
        } else {
            gradient.colors = [UIColor.FyresiteOrange300.cgColor, UIColor.FyresiteOrange700.cgColor]
        }
        
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        
        UIGraphicsBeginImageContext(view?.bounds.size ?? CGSize(width: 0.0, height: 0.0));
        if let context = UIGraphicsGetCurrentContext() {
            gradient.render(in: context)
        }
        let image: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext() // Delegates
        if let image = image {
            view?.backgroundColor = UIColor(patternImage: image)
        }
    }
    
    public class func setGradientLeftToRight(_ view: UIView?) {
        
        let gradient = CAGradientLayer()
        gradient.frame = view?.bounds ?? CGRect.zero
        gradient.colors = [UIColor.FyresiteOrange300.cgColor, UIColor.FyresiteOrange700.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 0.5)
        view?.layer.insertSublayer(gradient, at: 0)
    }
    
    public class func setGradientTopToBottom(_ view: UIView?) {
        
        let gradient = CAGradientLayer()
        gradient.frame = view?.bounds ?? CGRect.zero
        gradient.colors = [UIColor.FyresiteOrange300.cgColor, UIColor.FyresiteOrange700.cgColor]
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        view?.layer.insertSublayer(gradient, at: 0)
    }
    
    public class func setGradient(_ view: UIView?, withColors colors: [Any]?, start startPoint: CGPoint, end endPoint: CGPoint) {
        
        let gradient = CAGradientLayer()
        gradient.frame = view?.bounds ?? CGRect.zero
        
        if colors != nil {
            gradient.colors = colors
        } else {
            gradient.colors = [UIColor.FyresiteOrange300.cgColor, UIColor.FyresiteOrange700.cgColor]
        }
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        
        view?.layer.insertSublayer(gradient, at: 0)
    }
    
    /*
     Options:
     shadowColor UIColor
     shadowRadius float
     shadowOffsetX float
     shadowOFfsetY float
     
     */
    public class func addShadow(to view: UIView?, options: [String : Any]?) {
        view?.layer.masksToBounds = false
        if let shadowColor = options?["shadowColor"] as? UIColor {
            view?.layer.shadowColor = shadowColor.cgColor;
        }
        else {
            view?.layer.shadowColor = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.5).cgColor;
        }
        
        view?.layer.shadowOpacity = options?["shadowOpacity"] != nil ? (options?["shadowOpacity"] as? NSNumber)?.floatValue ?? 0.0 : 0.6
        view?.layer.shadowRadius = CGFloat(options?["shadowRadius"] != nil ? (options?["shadowRadius"] as? NSNumber)?.floatValue ?? 0.0 : 2)
        view?.layer.shadowOffset = CGSize(width: CGFloat(options?["shadowOffsetX"] != nil ? (options?["shadowOffsetX"] as? NSNumber)?.floatValue ?? 0.0 : 0.0), height: CGFloat(options?["shadowOffsetY"] != nil ? (options?["shadowOffsetY"] as? NSNumber)?.floatValue ?? 0.0 : 0.0))
    }
    
    /*
     
     Quick use.
     
     [ZinknPainter createImageGradientForFrame:view.bounds Colors:@[(id)ZinknDarkTeal.CGColor, (id)ZinknSeafoamGreen.CGColor] start:CGPointMake(0, 0.5) end:CGPointMake(1, 0.5)];
     
     */
    public class func createImageGradient(forFrame frame: CGRect, colors: [Any]?, start startPoint: CGPoint, end endPoint: CGPoint) -> UIImage? {
        let gradient = CAGradientLayer()
        gradient.frame = frame
        gradient.colors = [
            UIColor.FyresiteOrange300.cgColor,
            UIColor.FyresiteOrange500.cgColor,
            UIColor.FyresiteOrange700.cgColor
        ]
        if colors != nil {
            gradient.colors = colors
        }
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        
        UIGraphicsBeginImageContext(frame.size)
        if let context = UIGraphicsGetCurrentContext() {
            gradient.render(in: context)
        }
        let image: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext() // Delegates
        
        return image
    }
}
