class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame UIScreen.mainScreen.bounds
    @window.makeKeyAndVisible

    sec_1 = AlertViewController.alloc.init
    sec_2 = UiSwitchViewController.alloc.init
    sec_3 = PickerViewController.alloc.init
    sec_4 = DatePickerViewController.alloc.init
    @tabbar = UITabBarController.alloc.init
    @tabbar.viewControllers = [sec_1, sec_2, sec_3, sec_4]

    @tabbar.wantsFullScreenLayout = true
    @window.addSubview @tabbar.view

    true
  end
end
