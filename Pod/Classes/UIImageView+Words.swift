
import UIKit


private extension String {
    
    subscript (i: Int) -> Character {
        return self[index(self.startIndex, offsetBy: i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        let start = index(startIndex, offsetBy: r.lowerBound)
        let end = index(start, offsetBy: r.upperBound - r.lowerBound)
        return self[start..<end]
    }
}

public extension UIImageView {
    
    public func image(with word: String, color: UIColor? = nil, circular: Bool = true, fontAttributes: [String : AnyObject] = [:]){
        var imageViewString: String = ""
        
        let wordsArray = word.characters.split{$0 == " "}.map(String.init)
        
        for word in wordsArray {
            imageViewString += word[0]
            if imageViewString.characters.count >= 2 {
                break
            }
        }
        
        imageSnapShotFromWords(snapShotString: imageViewString, color: color, circular: circular, fontAttributes: fontAttributes)
    }
    
    fileprivate func imageSnapShotFromWords(snapShotString: String, color: UIColor?, circular: Bool, fontAttributes: [String : AnyObject]?) {
        
        let attributes: [String : AnyObject]
        
        if let attr = fontAttributes, attr.keys.count > 0 {
            attributes = attr
        }
        else {
            attributes = [
                NSForegroundColorAttributeName : UIColor.white,
                NSFontAttributeName : UIFont.systemFont(ofSize: self.bounds.width * 0.4)
            ]
        }
        
        let imageBackgroundColor: UIColor
        
        if let color = color {
            imageBackgroundColor = color
        }
        else {
            imageBackgroundColor = generateRandomColor()
        }
        
        let scale = UIScreen.main.scale
        
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, scale)
        
        let context = UIGraphicsGetCurrentContext()!
        
        if circular {
            self.layer.cornerRadius = self.frame.width/2
            self.clipsToBounds = true
        }
        
        context.setFillColor(imageBackgroundColor.cgColor)
        context.fill(CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        
        let textSize = snapShotString.size(attributes: attributes)
        
        snapShotString.draw(in: CGRect(x: bounds.size.width/2 - textSize.width/2,
                                                       y: bounds.size.height/2 - textSize.height/2,
                                                       width: textSize.width,
                                                       height: textSize.height), withAttributes: attributes)
        
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        self.image = image
    }
    
    
    fileprivate func generateRandomColor() -> UIColor {
        
        let hue = CGFloat(arc4random() % 256) / 256
        let saturation = CGFloat(arc4random() % 128) / 256 + 0.5
        let brightness = CGFloat(arc4random() % 128) / 256 + 0.5
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
}
