# Screenshot from the app
<div align="center">
  <img src="https://github.com/flowykk/iOs-NIS/assets/71427624/a16b191d-c1b5-4268-9dc4-f9e6f046f9cb)" width="300"> 
</div>

# Questions answers
### Question 1: What issues prevent us from using storyboards in real projects?
sdfsdfsdfsd fdsfs fsfs sf s sdfs 

### Question 2: What does the code on lines 25 and 29 do?

### Question 3: What is a safe area layout guide?
The Safe Area Layout Guide defines an area on the screen where it's safe to place UI elements of your app without any confusion and mistakes which can occur after UI elements will be clipped by the device's physical features. Safe Area Layout Guide can help us to work safe with elements like the status bar, the home indicator (for example, iPhone X and later).

### Question 4: What is [weak self] on line 23 and why it is important?
- `[weak self]`

  The closure on lines 23...25 captures a weak reference to `self`. Where `self` is a reference to the current instance of the object. By capturing it weakly, we avoid creating a strong reference from the closure. This also can save us from memory leaks.
- **Why is it important?**

  Sdfsdfsddsssfsdfs

### Question 5: What does clipsToBounds mean?
**_developer.apple.com_** says: "clipsToBounds is a Boolean value that determines whether subviews are confined to the bounds of the view".
- setting to `true` implies that the view will clip any subviews that are drawn outside of its own bounds. So, if a subview is partly or completely outside the bounds of its parent view, the part of the subview that is outside those bounds will not be visible.
- setting to `false` means that the subviews will be drawn outside of the parent view's bounds, and they will be fully visible regardless of their position.

### Question 6: What is the valueChanged type? What is Void and what is Double?
