class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = CameraViewController.alloc.init
    rootViewController.title = 'My Camera'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
