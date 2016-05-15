
import UIKit


private extension String {
    
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        let start = startIndex.advancedBy(r.startIndex)
        let end = start.advancedBy(r.endIndex - r.startIndex)
        return self[Range(start: start, end: end)]
    }
}

public extension UIImageView {
    
    func imageWithString(word word: String) {
        
        self.imageWithString(word: word, color: nil, circular: true)
        
    }
    
    func imageWithString(word word: String, color: UIColor?) {
        
        self.imageWithString(word: word, color: color, circular: true)
        
    }
    
    func imageWithString(word word: String, circular: Bool) {
        
        self.imageWithString(word: word, color: nil, circular: circular)
        
    }
    
    func imageWithString(word word: String, color: UIColor?, circular: Bool){
        self.imageWithString(word: word, color: color, circular: circular, fontAttributes: nil)
    }
    
    func imageWithString(word word: String, color: UIColor?, circular: Bool, fontAttributes: [String : AnyObject]?){
        var imageViewString: String = ""
        
        let wordsArray = word.characters.split{$0 == " "}.map(String.init)
        
        for word in wordsArray {
            imageViewString += word[0]
            if(imageViewString.characters.count >= 2){
                break
            }
        }
        
        imageSnapShotFromWords(snapShotString: imageViewString, color: color, circular: circular, fontAttributes: fontAttributes)
    }
    
    func imageSnapShotFromWords(snapShotString snapShotString: String, color: UIColor?, circular: Bool, fontAttributes: [String : AnyObject]?) {
        
        var attributes: [String : AnyObject]?
        
        if let attr = fontAttributes {
            attributes = attr
        }
        else {
            attributes = [
                NSForegroundColorAttributeName : UIColor.whiteColor(),
                NSFontAttributeName : UIFont.systemFontOfSize(CGRectGetWidth(self.bounds) * 0.4)
            ]
        }
        
        var imageBackgroundColor = UIColor()
        
        if let color = color {
            imageBackgroundColor = color
        }
        else {
            imageBackgroundColor = generateRandomColor()
        }
        
        let scale: CGFloat = UIScreen.mainScreen().scale
        
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, scale)
        
        let context = UIGraphicsGetCurrentContext()
        
        if(circular){
            
            self.layer.cornerRadius = self.frame.width/2
            self.clipsToBounds = true
            
        }
        
        CGContextSetFillColorWithColor(context, imageBackgroundColor.CGColor)
        CGContextFillRect(context, CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height))
        
        let textSize = (snapShotString as NSString).sizeWithAttributes(attributes)
        
        (snapShotString as NSString).drawInRect(CGRectMake(bounds.size.width/2 - textSize.width/2,
            bounds.size.height/2 - textSize.height/2,
            textSize.width,
            textSize.height), withAttributes: attributes)
        
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.image = image
    }
    
    
    func generateRandomColor() -> UIColor {
        
        let hue : CGFloat = CGFloat(arc4random() % 256) / 256
        let saturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5
        let brightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
}