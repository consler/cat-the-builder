.class public Lname/antonsmirnov/firmata/IFirmata$StubListener;
.super Ljava/lang/Object;
.source "IFirmata.java"

# interfaces
.implements Lname/antonsmirnov/firmata/IFirmata$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lname/antonsmirnov/firmata/IFirmata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StubListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnalogMessageReceived(Lname/antonsmirnov/firmata/message/AnalogMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/AnalogMessage;

    .line 68
    return-void
.end method

.method public onDigitalMessageReceived(Lname/antonsmirnov/firmata/message/DigitalMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/DigitalMessage;

    .line 69
    return-void
.end method

.method public onFirmwareVersionMessageReceived(Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    .line 70
    return-void
.end method

.method public onI2cMessageReceived(Lname/antonsmirnov/firmata/message/I2cReplyMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/I2cReplyMessage;

    .line 74
    return-void
.end method

.method public onProtocolVersionMessageReceived(Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    .line 71
    return-void
.end method

.method public onStringSysexMessageReceived(Lname/antonsmirnov/firmata/message/StringSysexMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/StringSysexMessage;

    .line 73
    return-void
.end method

.method public onSysexMessageReceived(Lname/antonsmirnov/firmata/message/SysexMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/SysexMessage;

    .line 72
    return-void
.end method

.method public onUnknownByteReceived(I)V
    .locals 0
    .param p1, "byteValue"    # I

    .line 75
    return-void
.end method
