.class public Lname/antonsmirnov/firmata/reader/FirmwareVersionMessageReader;
.super Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;
.source "FirmwareVersionMessageReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<",
        "Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    const/16 v0, 0x79

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-direct {p0, v0}, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;-><init>(Ljava/lang/Byte;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected buildSysexMessage([BI)Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "bufferLength"    # I

    .line 18
    new-instance v0, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    invoke-direct {v0}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;-><init>()V

    .line 19
    .local v0, "message":Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->setMajor(I)V

    .line 20
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->setMinor(I)V

    .line 22
    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, v1}, Lname/antonsmirnov/firmata/reader/FirmwareVersionMessageReader;->extractStringFromBuffer([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;->setName(Ljava/lang/String;)V

    .line 23
    return-object v0
.end method

.method protected bridge synthetic buildSysexMessage([BI)Lname/antonsmirnov/firmata/message/SysexMessage;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/reader/FirmwareVersionMessageReader;->buildSysexMessage([BI)Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    move-result-object p1

    return-object p1
.end method

.method public fireEvent(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 27
    iget-object v0, p0, Lname/antonsmirnov/firmata/reader/FirmwareVersionMessageReader;->message:Lname/antonsmirnov/firmata/message/SysexMessage;

    check-cast v0, Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    invoke-interface {p1, v0}, Lname/antonsmirnov/firmata/IFirmata$Listener;->onFirmwareVersionMessageReceived(Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;)V

    .line 28
    return-void
.end method
