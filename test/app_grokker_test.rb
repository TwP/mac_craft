require "mac_craft"
require "test/unit"

class AppGrokkerTest < Test::Unit::TestCase

  def setup
    @grokker = MacCraft::AppGrokker.new(app_support: "/Users/testuser/Library/Application Support/minecraft")
    @command_1_12_2 = %q[/Applications/Minecraft.app/Contents/runtime/jre-x64/1.8.0_74/bin/java -Xdock:name=Minecraft -Xdock:icon=/Users/testuser/Library/Application Support/minecraft/assets/objects/99/991b421dfd401f115241601b2b373140a8d78572 -Djava.library.path=/var/folders/sy/p1bx4_kd5lj483jsslw34x2m0000gn/T/ba08-e84b-9fb7-2ec9 -Dminecraft.launcher.brand=minecraft-launcher -Dminecraft.launcher.version=2.1.1217 -Dminecraft.client.jar=/Users/testuser/Library/Application Support/minecraft/versions/1.12.2/1.12.2.jar -cp /Users/testuser/Library/Application Support/minecraft/libraries/com/mojang/patchy/1.1/patchy-1.1.jar:/Users/testuser/Library/Application Support/minecraft/libraries/oshi-project/oshi-core/1.1/oshi-core-1.1.jar:/Users/testuser/Library/Application Support/minecraft/libraries/net/java/dev/jna/jna/4.4.0/jna-4.4.0.jar:/Users/testuser/Library/Application Support/minecraft/libraries/net/java/dev/jna/platform/3.4.0/platform-3.4.0.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/ibm/icu/icu4j-core-mojang/51.2/icu4j-core-mojang-51.2.jar:/Users/testuser/Library/Application Support/minecraft/libraries/net/sf/jopt-simple/jopt-simple/5.0.3/jopt-simple-5.0.3.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/paulscode/codecjorbis/20101023/codecjorbis-20101023.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/paulscode/codecwav/20101023/codecwav-20101023.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/paulscode/libraryjavasound/20101123/libraryjavasound-20101123.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/paulscode/librarylwjglopenal/20100824/librarylwjglopenal-20100824.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/paulscode/soundsystem/20120107/soundsystem-20120107.jar:/Users/testuser/Library/Application Support/minecraft/libraries/io/netty/netty-all/4.1.9.Final/netty-all-4.1.9.Final.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/google/guava/guava/21.0/guava-21.0.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/apache/commons/commons-lang3/3.5/commons-lang3-3.5.jar:/Users/testuser/Library/Application Support/minecraft/libraries/commons-io/commons-io/2.5/commons-io-2.5.jar:/Users/testuser/Library/Application Support/minecraft/libraries/commons-codec/commons-codec/1.10/commons-codec-1.10.jar:/Users/testuser/Library/Application Support/minecraft/libraries/net/java/jinput/jinput/2.0.5/jinput-2.0.5.jar:/Users/testuser/Library/Application Support/minecraft/libraries/net/java/jutils/jutils/1.0.0/jutils-1.0.0.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/google/code/gson/gson/2.8.0/gson-2.8.0.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/mojang/authlib/1.5.25/authlib-1.5.25.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/mojang/realms/1.10.22/realms-1.10.22.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/apache/commons/commons-compress/1.8.1/commons-compress-1.8.1.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/apache/httpcomponents/httpclient/4.3.3/httpclient-4.3.3.jar:/Users/testuser/Library/Application Support/minecraft/libraries/commons-logging/commons-logging/1.1.3/commons-logging-1.1.3.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/apache/httpcomponents/httpcore/4.3.2/httpcore-4.3.2.jar:/Users/testuser/Library/Application Support/minecraft/libraries/it/unimi/dsi/fastutil/7.1.0/fastutil-7.1.0.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/apache/logging/log4j/log4j-api/2.8.1/log4j-api-2.8.1.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/apache/logging/log4j/log4j-core/2.8.1/log4j-core-2.8.1.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/lwjgl/lwjgl/lwjgl/2.9.2-nightly-20140822/lwjgl-2.9.2-nightly-20140822.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/lwjgl/lwjgl/lwjgl_util/2.9.2-nightly-20140822/lwjgl_util-2.9.2-nightly-20140822.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/mojang/text2speech/1.10.3/text2speech-1.10.3.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/mojang/text2speech/1.10.3/text2speech-1.10.3.jar:/Users/testuser/Library/Application Support/minecraft/libraries/ca/weblite/java-objc-bridge/1.0.0/java-objc-bridge-1.0.0.jar:/Users/testuser/Library/Application Support/minecraft/versions/1.12.2/1.12.2.jar -Xmx2G -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dlog4j.configurationFile=/Users/testuser/Library/Application Support/minecraft/assets/log_configs/client-1.12.xml net.minecraft.client.main.Main --username TestUser --version 1.12.2 --gameDir /Users/testuser/Library/Application Support/minecraft --assetsDir /Users/testuser/Library/Application Support/minecraft/assets --assetIndex 1.12 --uuid 9cad388478ce530fa54296e69b31ab08 --accessToken 47737d4daa3d5152c081f9cbbf4c0bb5 --userType mojang --versionType release]
    @command_1_13   = %q[/Applications/Minecraft.app/Contents/runtime/jre-x64/1.8.0_74/bin/java -XstartOnFirstThread -Xss1M -Djava.library.path=/var/folders/sy/p1bx4_kd5lj483jsslw34x2m0000gn/T/d266-2718-dd7e-b63d -Dminecraft.launcher.brand=minecraft-launcher -Dminecraft.launcher.version=2.1.1217 -cp /Users/testuser/Library/Application Support/minecraft/libraries/com/mojang/patchy/1.1/patchy-1.1.jar:/Users/testuser/Library/Application Support/minecraft/libraries/oshi-project/oshi-core/1.1/oshi-core-1.1.jar:/Users/testuser/Library/Application Support/minecraft/libraries/net/java/dev/jna/jna/4.4.0/jna-4.4.0.jar:/Users/testuser/Library/Application Support/minecraft/libraries/net/java/dev/jna/platform/3.4.0/platform-3.4.0.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/ibm/icu/icu4j-core-mojang/51.2/icu4j-core-mojang-51.2.jar:/Users/testuser/Library/Application Support/minecraft/libraries/net/sf/jopt-simple/jopt-simple/5.0.3/jopt-simple-5.0.3.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/paulscode/codecjorbis/20101023/codecjorbis-20101023.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/paulscode/codecwav/20101023/codecwav-20101023.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/paulscode/libraryjavasound/20101123/libraryjavasound-20101123.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/paulscode/soundsystem/20120107/soundsystem-20120107.jar:/Users/testuser/Library/Application Support/minecraft/libraries/io/netty/netty-all/4.1.25.Final/netty-all-4.1.25.Final.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/google/guava/guava/21.0/guava-21.0.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/apache/commons/commons-lang3/3.5/commons-lang3-3.5.jar:/Users/testuser/Library/Application Support/minecraft/libraries/commons-io/commons-io/2.5/commons-io-2.5.jar:/Users/testuser/Library/Application Support/minecraft/libraries/commons-codec/commons-codec/1.10/commons-codec-1.10.jar:/Users/testuser/Library/Application Support/minecraft/libraries/net/java/jinput/jinput/2.0.5/jinput-2.0.5.jar:/Users/testuser/Library/Application Support/minecraft/libraries/net/java/jutils/jutils/1.0.0/jutils-1.0.0.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/mojang/brigadier/0.1.27/brigadier-0.1.27.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/mojang/datafixerupper/1.0.16/datafixerupper-1.0.16.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/google/code/gson/gson/2.8.0/gson-2.8.0.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/mojang/authlib/1.5.25/authlib-1.5.25.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/apache/commons/commons-compress/1.8.1/commons-compress-1.8.1.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/apache/httpcomponents/httpclient/4.3.3/httpclient-4.3.3.jar:/Users/testuser/Library/Application Support/minecraft/libraries/commons-logging/commons-logging/1.1.3/commons-logging-1.1.3.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/apache/httpcomponents/httpcore/4.3.2/httpcore-4.3.2.jar:/Users/testuser/Library/Application Support/minecraft/libraries/it/unimi/dsi/fastutil/7.1.0/fastutil-7.1.0.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/apache/logging/log4j/log4j-api/2.8.1/log4j-api-2.8.1.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/apache/logging/log4j/log4j-core/2.8.1/log4j-core-2.8.1.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/lwjgl/lwjgl/3.1.6/lwjgl-3.1.6.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/lwjgl/lwjgl-jemalloc/3.1.6/lwjgl-jemalloc-3.1.6.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/lwjgl/lwjgl-openal/3.1.6/lwjgl-openal-3.1.6.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/lwjgl/lwjgl-opengl/3.1.6/lwjgl-opengl-3.1.6.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/lwjgl/lwjgl-glfw/3.1.6/lwjgl-glfw-3.1.6.jar:/Users/testuser/Library/Application Support/minecraft/libraries/org/lwjgl/lwjgl-stb/3.1.6/lwjgl-stb-3.1.6.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/mojang/realms/1.13.3/realms-1.13.3.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/mojang/text2speech/1.10.3/text2speech-1.10.3.jar:/Users/testuser/Library/Application Support/minecraft/libraries/com/mojang/text2speech/1.10.3/text2speech-1.10.3.jar:/Users/testuser/Library/Application Support/minecraft/libraries/ca/weblite/java-objc-bridge/1.0.0/java-objc-bridge-1.0.0.jar:/Users/testuser/Library/Application Support/minecraft/versions/1.13/1.13.jar -Xmx2G -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dlog4j.configurationFile=/Users/testuser/Library/Application Support/minecraft/assets/log_configs/client-1.12.xml net.minecraft.client.main.Main --username TestUser --version 1.13 --gameDir /Users/testuser/Library/Application Support/minecraft --assetsDir /Users/testuser/Library/Application Support/minecraft/assets --assetIndex 1.13 --uuid 9cad388478ce530fa54296e69b31ab08 --accessToken 47737d4daa3d5152c081f9cbbf4c0bb5 uuid --userType mojang --versionType release]
  end

  def teardown
  end

  def test_parse
    @grokker.parse(cmd: @command_1_12_2)

    assert_equal "/var/folders/sy/p1bx4_kd5lj483jsslw34x2m0000gn/T/ba08-e84b-9fb7-2ec9", @grokker.java_library_path

    assert_equal 34, @grokker.jars.length
    assert_equal "$APP_SUPPORT/libraries/com/mojang/patchy/1.1/patchy-1.1.jar", @grokker.jars.first

    assert_equal "1.12.2",   @grokker.version
    assert_equal "1.12",     @grokker.minor_version
    assert_equal "2.1.1217", @grokker.launcher_version

    refute @grokker.minecraft_opts.include?("--username TestUser")
    assert_equal ["--gameDir $APP_SUPPORT", "--assetsDir $APP_SUPPORT/assets", "--userType mojang", "--versionType release"], @grokker.minecraft_opts
    assert_equal 12, @grokker.java_opts.length
  end

end
