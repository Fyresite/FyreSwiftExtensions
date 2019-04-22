//
//  UIImageExtensions.swift
//  FyreSwiftExtensions
//
//  Created by Travis Delly on 4/22/19.
//

import Foundation

extension UIImage {
    public func autoScaleAndRotateImage() -> UIImage {
        let kMaxResolution: Int = 320
        
        let imgRef = self.cgImage!
        
        let width = CGFloat(imgRef.width);
        let height = CGFloat(imgRef.height);
        
        
        var transform: CGAffineTransform = .identity
        var bounds = CGRect(x: 0, y: 0, width: width, height: height)
        if width > CGFloat(kMaxResolution) || height > CGFloat(kMaxResolution) {
            let ratio: CGFloat = width / height
            if ratio > 1 {
                bounds.size.width = CGFloat(kMaxResolution)
                bounds.size.height = bounds.size.width / ratio
            } else {
                bounds.size.height = CGFloat(kMaxResolution)
                bounds.size.width = bounds.size.height * ratio
            }
        }
        
        let scaleRatio: CGFloat = bounds.size.width / width
        let imageSize = CGSize(width: width, height: height)
        var boundHeight: CGFloat = 0.0
        let orientation: UIImage.Orientation = self.imageOrientation
        
        switch orientation {
        case .up:
            transform = .identity
            break;
        case .upMirrored:
            transform = CGAffineTransform(translationX: imageSize.width, y: 0.0)
            transform = transform.scaledBy(x: -1.0, y: 1.0)
            break;
        case .down:
            transform = CGAffineTransform(translationX: imageSize.width, y: imageSize.height)
            transform = transform.rotated(by: .pi)
            break;
        case .downMirrored:
            transform = CGAffineTransform(translationX: 0.0, y: imageSize.height)
            transform = transform.scaledBy(x: 1.0, y: -1.0)
            break;
        case .leftMirrored:
            boundHeight = bounds.size.height
            bounds.size.height = bounds.size.width
            bounds.size.width = boundHeight
            transform = CGAffineTransform(translationX: imageSize.height, y: imageSize.width)
            transform = transform.scaledBy(x: -1.0, y: 1.0)
            transform = transform.rotated(by: 3.0 * .pi / 2.0)
        case .left:
            boundHeight = bounds.size.height
            bounds.size.height = bounds.size.width
            bounds.size.width = boundHeight
            transform = CGAffineTransform(translationX: 0.0, y: imageSize.width)
            transform = transform.rotated(by: 3.0 * .pi / 2.0)
            break;
        case .rightMirrored:
            boundHeight = bounds.size.height
            bounds.size.height = bounds.size.width
            bounds.size.width = boundHeight
            transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
            transform = transform.rotated(by: .pi / 2.0)
            break;
        case .right:
            boundHeight = bounds.size.height
            bounds.size.height = bounds.size.width
            bounds.size.width = boundHeight
            transform = CGAffineTransform(translationX: imageSize.height, y: 0.0)
            transform = transform.rotated(by: .pi / 2.0)
            break;
        default:
            break;
        }
        
        UIGraphicsBeginImageContext(bounds.size)
        
        let context = UIGraphicsGetCurrentContext()
        
        if orientation == .right || orientation == .left {
            context?.scaleBy(x: -scaleRatio, y: scaleRatio)
            context?.translateBy(x: -height, y: 0)
        } else {
            context?.scaleBy(x: scaleRatio, y: -scaleRatio)
            context?.translateBy(x: 0, y: -height)
        }
        
        context?.concatenate(transform)
        
        UIGraphicsGetCurrentContext()?.draw(imgRef, in: CGRect(x: 0, y: 0, width: width, height: height));
        let imageCopy: UIImage = UIGraphicsGetImageFromCurrentImageContext() ?? self;
        UIGraphicsEndImageContext()
        
        return imageCopy;
    }

}
