.class public Lorg/catrobat/catroid/devices/arduino/ArduinoListener;
.super Ljava/lang/Object;
.source "ArduinoListener.java"

# interfaces
.implements Lname/antonsmirnov/firmata/IFirmata$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private analogPinValue:[I

.field private portValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->analogPinValue:[I

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->portValue:[I

    return-void
.end method


# virtual methods
.method public getAnalogPinValue(I)I
    .locals 1
    .param p1, "pin"    # I

    .line 105
    invoke-static {p1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->isValidAnalogPin(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->analogPinValue:[I

    aget v0, v0, p1

    return v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDigitalPinValue(I)I
    .locals 3
    .param p1, "pin"    # I

    .line 112
    invoke-static {p1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->isValidDigitalPin(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->getPortFromPin(I)I

    move-result v0

    .line 114
    .local v0, "port":I
    invoke-static {p1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->getIndexOfPinOnPort(I)I

    move-result v1

    .line 115
    .local v1, "index":I
    iget-object v2, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->portValue:[I

    aget v2, v2, v0

    invoke-static {v2, v1}, Lorg/catrobat/catroid/utils/Utils;->getBit(II)I

    move-result v2

    return v2

    .line 117
    .end local v0    # "port":I
    .end local v1    # "index":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPortValue(I)I
    .locals 1
    .param p1, "port"    # I

    .line 129
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->portValue:[I

    aget v0, v0, p1

    return v0
.end method

.method public onAnalogMessageReceived(Lname/antonsmirnov/firmata/message/AnalogMessage;)V
    .locals 4
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/AnalogMessage;

    .line 47
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v0

    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getPin()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Received Analog Message: %d | Value: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->analogPinValue:[I

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getPin()I

    move-result v1

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 54
    return-void

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public onDigitalMessageReceived(Lname/antonsmirnov/firmata/message/DigitalMessage;)V
    .locals 7
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/DigitalMessage;

    .line 58
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getValue()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 62
    const-string v3, "Received Digital Message: port: %d, value: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->portValue:[I

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getValue()I

    move-result v3

    aput v3, v0, v2

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    .line 68
    sget-object v2, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->getDigitalPinValue(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "Digital Pin %d Value: %d"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 59
    :cond_2
    :goto_1
    return-void
.end method

.method public onFirmwareVersionMessageReceived(Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;)V
    .locals 4
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    .line 74
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->getMajor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->getMinor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 74
    const-string v2, "Received Firmware Version Message: Name: %s, Version Major: %d, Minor: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public onI2cMessageReceived(Lname/antonsmirnov/firmata/message/I2cReplyMessage;)V
    .locals 3
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/I2cReplyMessage;

    .line 96
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I2C Message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->getCommand()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onProtocolVersionMessageReceived(Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;)V
    .locals 4
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    .line 80
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->getMajor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->getMinor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 80
    const-string v2, "Received Protocol Version Message: Version Major: %d, Minor: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public onStringSysexMessageReceived(Lname/antonsmirnov/firmata/message/StringSysexMessage;)V
    .locals 3
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/StringSysexMessage;

    .line 91
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String Sysex Message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/StringSysexMessage;->getCommand()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public onSysexMessageReceived(Lname/antonsmirnov/firmata/message/SysexMessage;)V
    .locals 3
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/SysexMessage;

    .line 86
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sysex Message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/SysexMessage;->getCommand()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public onUnknownByteReceived(I)V
    .locals 0
    .param p1, "byteValue"    # I

    .line 102
    return-void
.end method

.method public setDigitalPinValue(II)V
    .locals 4
    .param p1, "pin"    # I
    .param p2, "value"    # I

    .line 121
    invoke-static {p1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->isValidDigitalPin(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->getPortFromPin(I)I

    move-result v0

    .line 123
    .local v0, "port":I
    invoke-static {p1}, Lorg/catrobat/catroid/devices/arduino/ArduinoImpl;->getIndexOfPinOnPort(I)I

    move-result v1

    .line 124
    .local v1, "index":I
    iget-object v2, p0, Lorg/catrobat/catroid/devices/arduino/ArduinoListener;->portValue:[I

    aget v3, v2, v0

    invoke-static {v3, v1, p2}, Lorg/catrobat/catroid/utils/Utils;->setBit(III)I

    move-result v3

    aput v3, v2, v0

    .line 126
    .end local v0    # "port":I
    .end local v1    # "index":I
    :cond_0
    return-void
.end method
