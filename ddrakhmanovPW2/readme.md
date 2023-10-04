# Screenshot from the app
<div align="center">
  <img src="https://github.com/flowykk/iOs-NIS/assets/71427624/a16b191d-c1b5-4268-9dc4-f9e6f046f9cb)" width="300"> 
</div>

# Questions answers
### Question 1: What issues prevent us from using storyboards in real projects?
Here are some issues which can can prevent us from using storyboards in real projects:
- When using version control systems like Git, Storyboard's XML files can lead to merge conflicts. It can cause problems when multiple developers are working on the same Storyboard.
-  In large, Storyboards can become bulky, making it difficult and uncomfortable for developers to manage user interfaces with many screens and components. Also customizing difficult interfaces can be difficult to achieve using Storyboards. Custom UI components might need to be created programmatically.
- It can be challenging to reuse some new features and interface elements in older Xcode versions.
- Developers can struggle with creating adaptive desig for different screens and devices. Achieving perfect-looking design on different devices might require additional effort and code adjustments.

### Question 2: What does the code on lines 25 and 29 do?
- `25. title.translatesAutoresizingMaskIntoConstraints = false`
  
  When you create a user interface in iOS using *__Auto Layout__* and want to add your own constraints instead of relying on automatically generated constraints. Setting `translatesAutoresizingMaskIntoConstraints` to `false` implies that you disable all the automatically generated constraints for `title`. Then you can add your own constraints for `title` using *__Auto Layout__*.
  

### Question 3: What is a safe area layout guide?
The *__Safe Area Layout Guide__* defines an area on the screen where it's safe to place UI elements of your app without any confusion and mistakes which can occur after UI elements will be clipped by the device's physical features. *__Safe Area Layout Guide__* can help us to work safe with elements like the status bar, the home indicator (for example, iPhone X and later).

### Question 4: What is [weak self] on line 23 and why it is important?
- `[weak self]`

  The closure on lines *__23...25__* captures a weak reference to `self`. Where `self` is a reference to the current instance of the object. By capturing it weakly, we avoid creating a strong reference from the closure. This also can save us from memory leaks.
- **Why is it important?**

  Capturing `self` strongly in a closure can lead to a situation, when two or more objects have strong references to each other, preventing them from being deallocated when they are no longer needed. This can result a memory leak, because the objects will not be able to be released from the memory. By capturing `self` weakly, we break this strong reference, allowing the objects to be deallocated from the memory when they are no longer in use. So we can work safely without memory leaks.

### Question 5: What does clipsToBounds mean?
**_developer.apple.com_** says: "`clipsToBounds` is a Boolean value that determines whether subviews are confined to the bounds of the view". It works the next way:
- setting to `true` implies that the view will clip any subviews that are drawn outside of its own bounds. So, if a subview is partly or completely outside the bounds of its parent view, the part of the subview that is outside those bounds will not be visible.
- setting to `false` means that the subviews will be drawn outside of the parent view's bounds, and they will be fully visible regardless of their position.

### Question 6: What is the valueChanged type? What is Void and what is Double?
- The `valueChanged` event is a common type of event you can observe for UI elements such as slider, text fields and etc. using, for example, closures. We use `valueChanged` when we set up a target-action for an UI element the valueChanged event occurs when the user changes the slider's value. The type of `valueChanged` event is typically defined as `UIControl.Event.valueChanged`.

- `Void` is a data-type which is an empty tuple (equivalent to the `()`). It is used for defining functions that return nothing. Even if we don't specify a return type for a function, it will be `void` in standart.

- `Double` is a data-type for 64-bit floating-point numbers with a precision of at least 15 decimal digits. `Double` can also be used as a function return type.

  
