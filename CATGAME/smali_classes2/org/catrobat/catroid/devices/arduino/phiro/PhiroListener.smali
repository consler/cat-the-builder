.class Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;
.super Ljava/lang/Object;
.source "PhiroListener.java"

# interfaces
.implements Lname/antonsmirnov/firmata/IFirmata$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bottomLeftSensor:I

.field private bottomRightSensor:I

.field private frontLeftSensor:I

.field private frontRightSensor:I

.field private sideLeftSensor:I

.field private sideRightSensor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->frontLeftSensor:I

    .line 41
    iput v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->frontRightSensor:I

    .line 42
    iput v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->sideLeftSensor:I

    .line 43
    iput v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->sideRightSensor:I

    .line 44
    iput v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->bottomLeftSensor:I

    .line 45
    iput v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->bottomRightSensor:I

    return-void
.end method


# virtual methods
.method public getBottomLeftSensor()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->bottomLeftSensor:I

    return v0
.end method

.method public getBottomRightSensor()I
    .locals 1

    .line 136
    iget v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->bottomRightSensor:I

    return v0
.end method

.method public getFrontLeftSensor()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->frontLeftSensor:I

    return v0
.end method

.method public getFrontRightSensor()I
    .locals 1

    .line 120
    iget v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->frontRightSensor:I

    return v0
.end method

.method public getSideLeftSensor()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->sideLeftSensor:I

    return v0
.end method

.method public getSideRightSensor()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->sideRightSensor:I

    return v0
.end method

.method public onAnalogMessageReceived(Lname/antonsmirnov/firmata/message/AnalogMessage;)V
    .locals 2
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/AnalogMessage;

    .line 49
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v0

    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_7

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getPin()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->sideLeftSensor:I

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->frontLeftSensor:I

    .line 70
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->bottomLeftSensor:I

    .line 67
    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->bottomRightSensor:I

    .line 64
    goto :goto_0

    .line 60
    :cond_5
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->frontRightSensor:I

    .line 61
    goto :goto_0

    .line 57
    :cond_6
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->sideRightSensor:I

    .line 58
    nop

    .line 75
    :goto_0
    return-void

    .line 50
    :cond_7
    :goto_1
    return-void
.end method

.method public onDigitalMessageReceived(Lname/antonsmirnov/firmata/message/DigitalMessage;)V
    .locals 4
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/DigitalMessage;

    .line 79
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 79
    const-string v2, "Received Digital Message: pin: %d, value: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public onFirmwareVersionMessageReceived(Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;)V
    .locals 4
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    .line 85
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 86
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

    .line 85
    const-string v2, "Received Firmware Version Message: Name: %s, Version Major: %d, Minor: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public onI2cMessageReceived(Lname/antonsmirnov/firmata/message/I2cReplyMessage;)V
    .locals 3
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/I2cReplyMessage;

    .line 107
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->TAG:Ljava/lang/String;

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

    .line 108
    return-void
.end method

.method public onProtocolVersionMessageReceived(Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;)V
    .locals 4
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    .line 91
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 92
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

    .line 91
    const-string v2, "Received Protocol Version Message: Version Major: %d, Minor: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public onStringSysexMessageReceived(Lname/antonsmirnov/firmata/message/StringSysexMessage;)V
    .locals 3
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/StringSysexMessage;

    .line 102
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->TAG:Ljava/lang/String;

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

    .line 103
    return-void
.end method

.method public onSysexMessageReceived(Lname/antonsmirnov/firmata/message/SysexMessage;)V
    .locals 3
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/SysexMessage;

    .line 97
    sget-object v0, Lorg/catrobat/catroid/devices/arduino/phiro/PhiroListener;->TAG:Ljava/lang/String;

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

    .line 98
    return-void
.end method

.method public onUnknownByteReceived(I)V
    .locals 0
    .param p1, "byteValue"    # I

    .line 113
    return-void
.end method
