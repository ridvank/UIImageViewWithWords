# UIImageViewWithWords

[![CI Status](http://img.shields.io/travis/Ridvan Kucuk/UIImageViewWithWords.svg?style=flat)](https://travis-ci.org/Ridvan Kucuk/UIImageViewWithWords)
[![Version](https://img.shields.io/cocoapods/v/UIImageViewWithWords.svg?style=flat)](http://cocoapods.org/pods/UIImageViewWithWords)
[![License](https://img.shields.io/cocoapods/l/UIImageViewWithWords.svg?style=flat)](http://cocoapods.org/pods/UIImageViewWithWords)
[![Platform](https://img.shields.io/cocoapods/p/UIImageViewWithWords.svg?style=flat)](http://cocoapods.org/pods/UIImageViewWithWords)

## Usage

UIImageViewWithWords library is written in Swift and it gives you ability to create images with word's initials. After creating UIImageView object, you just need one line!

This will add an image with initials to your UIImageView object with random background color with circular shaped.

```swift
imageView.imageWithString(word: "Ridvan Kucuk")
```

or you can set your preffered color (circular shaped by default)

```swift
imageView.imageWithString(word: "Ridvan Kucuk", color: UIColor.blueColor())
```

or if you don't want it to be circular, you can just set circular to false

```swift
imageView.imageWithString(word: "Ridvan Kucuk", circular: false)
```

or if you want to set all preferences as you like you can use this:

```swift
imageView.imageWithString(word: "Ridvan Kucuk", color: nil, circular: true)
```

##Screenshots

<p align="center" imgContainer = "left">
  <img src ="https://raw.githubusercontent.com/ridvank/UIImageViewWithWords/master/Example/UIImageViewWithWords/ScreenShot1.png" width="30%" height="30%"/>
  <img src ="https://raw.githubusercontent.com/ridvank/UIImageViewWithWords/master/Example/UIImageViewWithWords/ScreenShot2.png" width="30%" height="30%"/>
</p>

# Installation

## Manually

You can just drag and drop UIImageView+Words.swift file into your project.

## From CocoaPods

UIImageViewWithWords is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "UIImageViewWithWords"
```

## Author

Ridvan Kucuk, ridvankuccuk@gmail.com

## License

UIImageViewWithWords is available under the MIT license. See the LICENSE file for more info.
