class AlertViewController < UIViewController

  def init
    if super 
      self.title = "Alert"
      # self.tabBarItem.image = UIImage.imageNamed('FirstTab.png')
    end
    self
  end 

  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor
    
    @btn_1 = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @btn_1.setTitle("Default", forState:UIControlStateNormal)
    @btn_1.setTitle("Default", forState:UIControlStateDisabled)
    @btn_1.sizeToFit
    @btn_1.center = CGPointMake(self.view.frame.size.width / 2, 40)
    @btn_1.addTarget(self, 
      :action => :default_style, 
      :forControlEvents => UIControlEventTouchUpInside)

    @btn_2 = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @btn_2.setTitle("Secured Text Input", forState:UIControlStateNormal)
    @btn_2.setTitle("Secured Text Input", forState:UIControlStateDisabled)
    @btn_2.sizeToFit
    @btn_2.center = CGPointMake(self.view.frame.size.width / 2, @btn_1.frame.origin.y + @btn_2.frame.size.height + 30)
    @btn_2.addTarget(self, 
      action:'secured_text_input_style', 
      forControlEvents:UIControlEventTouchUpInside)

    @btn_3 = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @btn_3.setTitle("Plain Text Input", forState:UIControlStateNormal)
    @btn_3.setTitle("Plain Text Input", forState:UIControlStateDisabled)
    @btn_3.sizeToFit
    @btn_3.center = CGPointMake(self.view.frame.size.width / 2, @btn_2.frame.origin.y + @btn_3.frame.size.height + 30)
    @btn_3.addTarget(self, 
      action:'plain_text_input_style', 
      forControlEvents:UIControlEventTouchUpInside)

    @btn_4 = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @btn_4.setTitle("Login / Password Input", forState:UIControlStateNormal)
    @btn_4.setTitle("Login / Password Input", forState:UIControlStateDisabled)
    @btn_4.sizeToFit
    @btn_4.center = CGPointMake(self.view.frame.size.width / 2, @btn_3.frame.origin.y + @btn_4.frame.size.height + 30)
    @btn_4.addTarget(self, 
      action:'login_password_input_style', 
      forControlEvents:UIControlEventTouchUpInside)

    @btn_5 = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @btn_5.setTitle("Number Keyboard", forState:UIControlStateNormal)
    @btn_5.setTitle("Number Keyboard", forState:UIControlStateDisabled)
    @btn_5.sizeToFit
    @btn_5.center = CGPointMake(self.view.frame.size.width / 2, @btn_4.frame.origin.y + @btn_5.frame.size.height + 30)
    @btn_5.addTarget(self, 
      action:'secured_with_number_keyboard', 
      forControlEvents:UIControlEventTouchUpInside)

    self.view.addSubview @btn_1
    self.view.addSubview @btn_2
    self.view.addSubview @btn_3
    self.view.addSubview @btn_4
    self.view.addSubview @btn_5

  end

  def default_style
    alert = UIAlertView.alloc.initWithTitle("Title",
      message: nil,
      delegate: nil,
      cancelButtonTitle: "Cancel",
      otherButtonTitles: nil,
      nil)
    alert.show
  end

  def secured_text_input_style
    alert = UIAlertView.alloc.initWithTitle("Enter Secure Text",
      message: "It should be secret",
      delegate: nil,
      cancelButtonTitle: "Cancel",
      otherButtonTitles: "OK",
      nil)
    alert.alertViewStyle = UIAlertViewStyleSecureTextInput
    alert.show
  end

  def plain_text_input_style
    alert = UIAlertView.alloc.initWithTitle("Enter Plain Text",
      message: nil,
      delegate: nil,
      cancelButtonTitle: nil,
      otherButtonTitles: "Save Data",
      nil)
    alert.alertViewStyle = UIAlertViewStylePlainTextInput
    alert.show
  end

  def login_password_input_style
    alert = UIAlertView.alloc.initWithTitle("Login Below",
      message: nil,
      delegate: nil,
      cancelButtonTitle: "Cancel",
      otherButtonTitles: "Login",
      nil)
    alert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput
    alert.show
  end

  def secured_with_number_keyboard
    alert = UIAlertView.alloc.initWithTitle("Credit Card Number",
      message: "Please enter your credit card number:",
      delegate: nil,
      cancelButtonTitle: "Cancel",
      otherButtonTitles: "OK",
      nil)
    alert.alertViewStyle = UIAlertViewStyleSecureTextInput

    # Set keyboard to number pad
    text_field = alert.textFieldAtIndex(0)
    text_field.keyboardType = UIKeyboardTypeNumberPad

    alert.show
  end
  
end
