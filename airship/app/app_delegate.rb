
=begin
*
* Urban Airship for RubyMotion
*
* @author 
* 
=end

class AppDelegate

  def application( application, didFinishLaunchingWithOptions: launchOptions )
  #-----------------------------------------------------------
    takeOffOptions = NSMutableDictionary.alloc.init
    takeOffOptions.setValue( launchOptions, forKey: UAirshipTakeOffOptionsLaunchOptionsKey )
    
    UAirship.takeOff( takeOffOptions )

    UIApplication.sharedApplication.registerForRemoteNotificationTypes( 
      UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeAlert | UIRemoteNotificationTypeSound
    )

    true
  end

  def application( application, didRegisterForRemoteNotificationsWithDeviceToken: deviceToken )
  #-----------------------------------------------------------
    UAirship.shared.registerDeviceToken( deviceToken )
  end

end
