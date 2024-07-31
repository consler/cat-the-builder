.class public interface abstract Lname/antonsmirnov/firmata/IFirmata$Listener;
.super Ljava/lang/Object;
.source "IFirmata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lname/antonsmirnov/firmata/IFirmata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAnalogMessageReceived(Lname/antonsmirnov/firmata/message/AnalogMessage;)V
.end method

.method public abstract onDigitalMessageReceived(Lname/antonsmirnov/firmata/message/DigitalMessage;)V
.end method

.method public abstract onFirmwareVersionMessageReceived(Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;)V
.end method

.method public abstract onI2cMessageReceived(Lname/antonsmirnov/firmata/message/I2cReplyMessage;)V
.end method

.method public abstract onProtocolVersionMessageReceived(Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;)V
.end method

.method public abstract onStringSysexMessageReceived(Lname/antonsmirnov/firmata/message/StringSysexMessage;)V
.end method

.method public abstract onSysexMessageReceived(Lname/antonsmirnov/firmata/message/SysexMessage;)V
.end method

.method public abstract onUnknownByteReceived(I)V
.end method
