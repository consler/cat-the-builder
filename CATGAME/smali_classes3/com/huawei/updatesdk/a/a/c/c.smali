.class public Lcom/huawei/updatesdk/a/a/c/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.audio.output"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.bluetooth"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.bluetooth_le"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.camera"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.camera.any"

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.camera.autofocus"

    const-string v2, "6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.camera.capability.manual_post_processing"

    const-string v2, "7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.camera.flash"

    const-string v2, "8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.camera.front"

    const-string v2, "9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.consumerir"

    const-string v2, "A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.faketouch"

    const-string v2, "B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.fingerprint"

    const-string v2, "C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.location"

    const-string v2, "D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.location.gps"

    const-string v2, "E"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.location.network"

    const-string v2, "F"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.microphone"

    const-string v2, "G"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.nfc"

    const-string v2, "H"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.nfc.any"

    const-string v2, "I"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.nfc.hce"

    const-string v2, "J"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.nfc.hcef"

    const-string v2, "K"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.opengles.aep"

    const-string v2, "L"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.ram.normal"

    const-string v2, "M"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.screen.landscape"

    const-string v2, "N"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.screen.portrait"

    const-string v2, "O"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.sensor.accelerometer"

    const-string v2, "P"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.sensor.barometer"

    const-string v2, "Q"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.sensor.compass"

    const-string v2, "R"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.sensor.gyroscope"

    const-string v2, "S"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.sensor.light"

    const-string v2, "T"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.sensor.proximity"

    const-string v2, "U"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.sensor.stepcounter"

    const-string v2, "V"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.sensor.stepdetector"

    const-string v2, "W"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.telephony"

    const-string v2, "X"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.telephony.gsm"

    const-string v2, "Y"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.telephony.ims"

    const-string v2, "Z"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.touchscreen"

    const-string v2, "a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.touchscreen.multitouch"

    const-string v2, "b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.touchscreen.multitouch.distinct"

    const-string v2, "c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.touchscreen.multitouch.jazzhand"

    const-string v2, "d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.usb.accessory"

    const-string v2, "e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.usb.host"

    const-string v2, "f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.vulkan.compute"

    const-string v2, "g"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.vulkan.level"

    const-string v2, "h"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.vulkan.version"

    const-string v2, "i"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.wifi"

    const-string v2, "j"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.wifi.direct"

    const-string v2, "k"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.hardware.wifi.passpoint"

    const-string v2, "l"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.activities_on_secondary_displays"

    const-string v2, "m"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.app_widgets"

    const-string v2, "n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.autofill"

    const-string v2, "o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.backup"

    const-string v2, "p"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.cant_save_state"

    const-string v2, "q"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.companion_device_setup"

    const-string v2, "r"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.connectionservice"

    const-string v2, "s"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.cts"

    const-string v2, "t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.device_admin"

    const-string v2, "u"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.file_based_encryption"

    const-string v2, "v"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.freeform_window_management"

    const-string v3, "w"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.home_screen"

    const-string v3, "x"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.input_methods"

    const-string v3, "y"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.ipsec_tunnels"

    const-string v3, "z"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.live_wallpaper"

    const-string v3, "00"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.managed_users"

    const-string v3, "01"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.midi"

    const-string v3, "02"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.picture_in_picture"

    const-string v3, "03"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.print"

    const-string v3, "04"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.secure_lock_screen"

    const-string v3, "05"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.securely_removes_users"

    const-string v3, "06"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.verified_boot"

    const-string v3, "07"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.voice_recognizers"

    const-string v3, "08"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.software.webview"

    const-string v3, "09"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.sofware.nfc.beam"

    const-string v3, "0A"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "com.huawei.software.features.china"

    const-string v3, "0B"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "com.huawei.software.features.full"

    const-string v3, "0C"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "com.huawei.system.feature"

    const-string v3, "0D"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "com.nxp.mifare"

    const-string v3, "0E"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "huawei.android.hardware.stylus"

    const-string v3, "0F"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.hardware.audio.low_latency"

    const-string v3, "0G"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.hardware.camera.capability.raw"

    const-string v3, "0H"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.hardware.camera.external"

    const-string v3, "0I"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "android.hardware.telephony.cdma"

    const-string v3, "0J"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v2, "0K"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.sip"

    const-string v2, "0L"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.sip.voip"

    const-string v2, "0M"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "android.software.vr.mode"

    const-string v2, "0N"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "cn.google.services"

    const-string v2, "0O"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "com.google.android.feature.services_updater"

    const-string v2, "0P"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "com.google.android.feature.ZERO_TOUCH"

    const-string v2, "0Q"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    const-string v1, "com.huawei.software.features.oversea"

    const-string v2, "0R"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/updatesdk/a/a/c/c;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-object p0
.end method
