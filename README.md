# UIImageViewWithWords

[![CI Status](http://img.shields.io/travis/Ridvan Kucuk/UIImageViewWithWords.svg?style=flat)](https://travis-ci.org/Ridvan Kucuk/UIImageViewWithWords)
[![Version](https://img.shields.io/cocoapods/v/UIImageViewWithWords.svg?style=flat)](http://cocoapods.org/pods/UIImageViewWithWords)
[![License](https://img.shields.io/cocoapods/l/UIImageViewWithWords.svg?style=flat)](http://cocoapods.org/pods/UIImageViewWithWords)
[![Platform](https://img.shields.io/cocoapods/p/UIImageViewWithWords.svg?style=flat)](http://cocoapods.org/pods/UIImageViewWithWords)

# UIImageViewWithWords

UIImageView extension that helps you to create images with initial letters of words.

<p align="center" imgContainer = "left">
<img src ="https://raw.githubusercontent.com/ridvank/UIImageViewWithWords/master/Example/UIImageViewWithWords/ScreenShot1.png" width="30%" height="30%"/>
<img src ="https://raw.githubusercontent.com/ridvank/UIImageViewWithWords/master/Example/UIImageViewWithWords/ScreenShot2.png" width="30%" height="30%"/>
</p>

# Installation

## From CocoaPods

UIImageViewWithWords is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

For Swift 3.x:
```ruby
pod "UIImageViewWithWords"
```

For Swift 2.3:
```ruby
pod "UIImageViewWithWords", '~> 0.2.2'
```

For Swift 2.2:
```ruby
pod "UIImageViewWithWords", '~> 0.2.1'
```

# Usage

UIImageViewWithWords is written in Swift and it gives you the ability to create images from word's initials.

This will add an image with initials to your UIImageView object with random background color with circular shaped.

```swift
imageView.image(with: "Ridvan Kucuk")
```

or you can set your preffered color (circular shaped by default)

```swift
imageView.image(with: "Ridvan Kucuk", color: UIColor.blueColor())
```

or if you don't want it to be circular, you can just use it with circular to false

```swift
imageView.image(with: "Ridvan Kucuk", circular: false)
```

or if you want to set background color as you like you can use it like that

```swift
imageView.image(with: "Ridvan Kucuk", color: nil, circular: true)
```

or if you want to add attributes to text, you can set attributes like this for Swift 3.x:
```swift
let fontAttributes = [NSForegroundColorAttributeName : UIColor.blue,
                                 NSFontAttributeName : UIFont.systemFont(ofSize: 40)]
self.imageView.image(with: "Ridvan Kucuk", color: UIColor.orange, circular: true, fontAttributes: fontAttributes)
```     

for Swift 2.x:
```swift
let fontAttributes = [NSForegroundColorAttributeName : UIColor.blueColor(),
NSFontAttributeName : UIFont.systemFontOfSize(40)
]
self.imageView.image(with: "Ridvan Kucuk", color: UIColor.orangeColor(), circular: true, fontAttributes: fontAttributes)
```

## Manually

You can just drag and drop UIImageView+Words.swift file into your project.

## Author

Ridvan Kucuk, ridvankuccuk@gmail.com

## License

UIImageViewWithWords is available under the MIT license. See the LICENSE file for more info.
