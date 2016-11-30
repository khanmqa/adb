class Adb

  def device
    device = `adb devices`

    if device == 0

      puts 'No device connected'

    else

      puts "#{device.chomp}is connected"

    end

  end

  def uninstall_app

    system "adb uninstall app-alpha-debug.apk"

    end

  def install_app

     system "adb install -r app-alpha-debug.apk"

  end

end

#create a new object to check if there is a device connected
Adb.new.device

#this object installs the application
Adb.new.install_app

#this object uninstalls the application
#Adb.new.uninstall_app














