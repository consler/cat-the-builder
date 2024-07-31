.class public Lname/antonsmirnov/firmata/reader/StringSysexMessageReader;
.super Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;
.source "StringSysexMessageReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<",
        "Lname/antonsmirnov/firmata/message/StringSysexMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    const/16 v0, 0x71

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-direct {p0, v0}, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;-><init>(Ljava/lang/Byte;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected buildSysexMessage([BI)Lname/antonsmirnov/firmata/message/StringSysexMessage;
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "bufferLength"    # I

    .line 17
    new-instance v0, Lname/antonsmirnov/firmata/message/StringSysexMessage;

    invoke-direct {v0}, Lname/antonsmirnov/firmata/message/StringSysexMessage;-><init>()V

    .line 19
    .local v0, "message":Lname/antonsmirnov/firmata/message/StringSysexMessage;
    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2, v1}, Lname/antonsmirnov/firmata/reader/StringSysexMessageReader;->extractStringFromBuffer([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lname/antonsmirnov/firmata/message/StringSysexMessage;->setData(Ljava/lang/String;)V

    .line 20
    return-object v0
.end method

.method protected bridge synthetic buildSysexMessage([BI)Lname/antonsmirnov/firmata/message/SysexMessage;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/reader/StringSysexMessageReader;->buildSysexMessage([BI)Lname/antonsmirnov/firmata/message/StringSysexMessage;

    move-result-object p1

    return-object p1
.end method

.method public fireEvent(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 24
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/reader/StringSysexMessageReader;->getMessage()Lname/antonsmirnov/firmata/message/SysexMessage;

    move-result-object v0

    check-cast v0, Lname/antonsmirnov/firmata/message/StringSysexMessage;

    invoke-interface {p1, v0}, Lname/antonsmirnov/firmata/IFirmata$Listener;->onStringSysexMessageReceived(Lname/antonsmirnov/firmata/message/StringSysexMessage;)V

    .line 25
    return-void
.end method
