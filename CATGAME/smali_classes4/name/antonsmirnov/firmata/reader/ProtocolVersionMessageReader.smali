.class public Lname/antonsmirnov/firmata/reader/ProtocolVersionMessageReader;
.super Ljava/lang/Object;
.source "ProtocolVersionMessageReader.java"

# interfaces
.implements Lname/antonsmirnov/firmata/reader/IMessageReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lname/antonsmirnov/firmata/reader/IMessageReader<",
        "Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private isHandling:Z

.field private message:Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRead([BII)Z
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "bufferLength"    # I
    .param p3, "command"    # I

    .line 13
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    aget-byte v2, p1, v0

    const/4 v3, -0x7

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public finishedReading()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lname/antonsmirnov/firmata/reader/ProtocolVersionMessageReader;->isHandling:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public fireEvent(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 46
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/reader/ProtocolVersionMessageReader;->getMessage()Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    move-result-object v0

    invoke-interface {p1, v0}, Lname/antonsmirnov/firmata/IFirmata$Listener;->onProtocolVersionMessageReceived(Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;)V

    .line 47
    return-void
.end method

.method public bridge synthetic getMessage()Lname/antonsmirnov/firmata/message/Message;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/reader/ProtocolVersionMessageReader;->getMessage()Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;
    .locals 1

    .line 42
    iget-object v0, p0, Lname/antonsmirnov/firmata/reader/ProtocolVersionMessageReader;->message:Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    return-object v0
.end method

.method public read([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .line 26
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p1, v0

    .line 27
    .local v0, "incomingByte":B
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 28
    iget-object v1, p0, Lname/antonsmirnov/firmata/reader/ProtocolVersionMessageReader;->message:Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    invoke-virtual {v1, v0}, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->setMajor(I)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p0, Lname/antonsmirnov/firmata/reader/ProtocolVersionMessageReader;->message:Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    invoke-virtual {v1, v0}, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;->setMinor(I)V

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lname/antonsmirnov/firmata/reader/ProtocolVersionMessageReader;->isHandling:Z

    .line 33
    :goto_0
    return-void
.end method

.method public startReading()V
    .locals 1

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lname/antonsmirnov/firmata/reader/ProtocolVersionMessageReader;->isHandling:Z

    .line 22
    new-instance v0, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    invoke-direct {v0}, Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/reader/ProtocolVersionMessageReader;->message:Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    .line 23
    return-void
.end method
