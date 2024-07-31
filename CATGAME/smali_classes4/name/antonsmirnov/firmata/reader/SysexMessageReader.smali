.class public Lname/antonsmirnov/firmata/reader/SysexMessageReader;
.super Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;
.source "SysexMessageReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<",
        "Lname/antonsmirnov/firmata/message/SysexMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;-><init>(Ljava/lang/Byte;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected buildSysexMessage([BI)Lname/antonsmirnov/firmata/message/SysexMessage;
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "bufferLength"    # I

    .line 18
    new-instance v0, Lname/antonsmirnov/firmata/message/SysexMessage;

    invoke-direct {v0}, Lname/antonsmirnov/firmata/message/SysexMessage;-><init>()V

    .line 19
    .local v0, "message":Lname/antonsmirnov/firmata/message/SysexMessage;
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Lname/antonsmirnov/firmata/message/SysexMessage;->setCommand(I)V

    .line 21
    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2, v1}, Lname/antonsmirnov/firmata/reader/SysexMessageReader;->extractStringFromBuffer([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lname/antonsmirnov/firmata/message/SysexMessage;->setData(Ljava/lang/String;)V

    .line 22
    return-object v0
.end method

.method public fireEvent(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 26
    iget-object v0, p0, Lname/antonsmirnov/firmata/reader/SysexMessageReader;->message:Lname/antonsmirnov/firmata/message/SysexMessage;

    invoke-interface {p1, v0}, Lname/antonsmirnov/firmata/IFirmata$Listener;->onSysexMessageReceived(Lname/antonsmirnov/firmata/message/SysexMessage;)V

    .line 27
    return-void
.end method
