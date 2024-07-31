.class public Lorg/catrobat/catroid/bluetooth/BluetoothDeviceFactoryImpl;
.super Ljava/lang/Object;
.source "BluetoothDeviceFactoryImpl.java"

# interfaces
.implements Lorg/catrobat/catroid/bluetooth/base/BluetoothDeviceFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDevice(Ljava/lang/Class;Landroid/content/Context;)Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;
    .locals 1
    .param p2, "applicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;"
        }
    .end annotation

    .line 40
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_NXT:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 41
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;

    invoke-direct {v0, p2}, Lorg/catrobat/catroid/devices/mindstorms/nxt/LegoNXTImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 44
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->LEGO_EV3:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 45
    new-instance v0, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;

    invoke-direct {v0, p2}, Lorg/catrobat/catroid/devices/mindstorms/ev3/LegoEV3Impl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 48
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->PHIRO:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 49
    new-instance v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;

    invoke-direct {v0}, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroImpl;-><init>()V

    return-object v0

    .line 52
    :cond_2
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->ARDUINO:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 53
    new-instance v0, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;

    invoke-direct {v0}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;-><init>()V

    return-object v0

    .line 56
    :cond_3
    sget-object v0, Lorg/catrobat/catroid/bluetooth/base/BluetoothDevice;->MULTIPLAYER:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 57
    new-instance v0, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;

    invoke-direct {v0}, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;-><init>()V

    return-object v0

    .line 60
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method
