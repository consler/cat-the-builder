.class public Lname/antonsmirnov/firmata/reader/AnalogMessageReader;
.super Ljava/lang/Object;
.source "AnalogMessageReader.java"

# interfaces
.implements Lname/antonsmirnov/firmata/reader/IMessageReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lname/antonsmirnov/firmata/reader/IMessageReader<",
        "Lname/antonsmirnov/firmata/message/AnalogMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private isHandling:Z

.field private message:Lname/antonsmirnov/firmata/message/AnalogMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRead([BII)Z
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "bufferLength"    # I
    .param p3, "command"    # I

    .line 16
    const/16 v0, 0xe0

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public finishedReading()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lname/antonsmirnov/firmata/reader/AnalogMessageReader;->isHandling:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public fireEvent(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 46
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/reader/AnalogMessageReader;->getMessage()Lname/antonsmirnov/firmata/message/AnalogMessage;

    move-result-object v0

    invoke-interface {p1, v0}, Lname/antonsmirnov/firmata/IFirmata$Listener;->onAnalogMessageReceived(Lname/antonsmirnov/firmata/message/AnalogMessage;)V

    .line 47
    return-void
.end method

.method public getMessage()Lname/antonsmirnov/firmata/message/AnalogMessage;
    .locals 1

    .line 42
    iget-object v0, p0, Lname/antonsmirnov/firmata/reader/AnalogMessageReader;->message:Lname/antonsmirnov/firmata/message/AnalogMessage;

    return-object v0
.end method

.method public bridge synthetic getMessage()Lname/antonsmirnov/firmata/message/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/reader/AnalogMessageReader;->getMessage()Lname/antonsmirnov/firmata/message/AnalogMessage;

    move-result-object v0

    return-object v0
.end method

.method public read([BI)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 28
    iget-object v1, p0, Lname/antonsmirnov/firmata/reader/AnalogMessageReader;->message:Lname/antonsmirnov/firmata/message/AnalogMessage;

    aget-byte v0, p1, v0

    invoke-static {v0}, Lname/antonsmirnov/firmata/BytesHelper;->DECODE_CHANNEL(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lname/antonsmirnov/firmata/message/AnalogMessage;->setPin(I)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, p0, Lname/antonsmirnov/firmata/reader/AnalogMessageReader;->message:Lname/antonsmirnov/firmata/message/AnalogMessage;

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    aget-byte v1, p1, v1

    invoke-static {v3, v1}, Lname/antonsmirnov/firmata/BytesHelper;->DECODE_BYTE(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->setValue(I)V

    .line 31
    iput-boolean v0, p0, Lname/antonsmirnov/firmata/reader/AnalogMessageReader;->isHandling:Z

    .line 33
    :goto_0
    return-void
.end method

.method public startReading()V
    .locals 1

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lname/antonsmirnov/firmata/reader/AnalogMessageReader;->isHandling:Z

    .line 23
    new-instance v0, Lname/antonsmirnov/firmata/message/AnalogMessage;

    invoke-direct {v0}, Lname/antonsmirnov/firmata/message/AnalogMessage;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/reader/AnalogMessageReader;->message:Lname/antonsmirnov/firmata/message/AnalogMessage;

    .line 24
    return-void
.end method
