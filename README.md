# TransitionLabel

TransitionLabel is a simple solution to show different texts in a same Label. It is incredibly easy to implement and easy to modify. You can use Storyboard or insert the label and the values, manually.

## How To Implement

The easiest way to add `TransitionLabel` to your code is by adding a `UILabel` to your **Storyboard** and changing it's class to `TransitionLabel`

You can also create a `TransitionLabel` through your code as-

```ruby
let secondTransitionLabel = TransitionLabel(frame: CGRect(origin: position, size: size), labelValues: ["Set", "Of", "Values"], animationDuration: 1.0, shouldLoop: false)`
```
###### Configurable properties
```ruby
labelValues: [String?]- An array of strings which will be sequentially displayed as your label text

shouldLoop: Bool  (by default, set to true)- This allows the values set to labels repeat from the begining once 

animationDuration: Double (by default, set to 3.0)- Tells the Label, how long a value should be shown

```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TransitionLabel is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TransitionLabel'
```

## Author

Sidharth J Dev, sid.j.dev@gmail.com

## License

TransitionLabel is available under the MIT license. See the LICENSE file for more info.
