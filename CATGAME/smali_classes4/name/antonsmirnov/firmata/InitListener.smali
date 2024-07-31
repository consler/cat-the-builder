.class public Lname/antonsmirnov/firmata/InitListener;
.super Lname/antonsmirnov/firmata/IFirmata$StubListener;
.source "InitListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lname/antonsmirnov/firmata/InitListener$Listener;
    }
.end annotation


# instance fields
.field private firmware:Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

.field private listener:Lname/antonsmirnov/firmata/InitListener$Listener;

.field private protocol:Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;


# direct methods
.method public constructor <init>(Lname/antonsmirnov/firmata/InitListener$Listener;)V
    .locals 0
    .param p1, "listener"    # Lname/antonsmirnov/firmata/InitListener$Listener;

    .line 32
    invoke-direct {p0}, Lname/antonsmirnov/firmata/IFirmata$StubListener;-><init>()V

    .line 33
    iput-object p1, p0, Lname/antonsmirnov/firmata/InitListener;->listener:Lname/antonsmirnov/firmata/InitListener$Listener;

    .line 34
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/InitListener;->clear()V

    .line 35
    return-void
.end method

.method private checkInitAndFire()V
    .locals 1

    .line 43
    iget-object v0, p0, Lname/antonsmirnov/firmata/InitListener;->firmware:Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/antonsmirnov/firmata/InitListener;->protocol:Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lname/antonsmirnov/firmata/InitListener;->listener:Lname/antonsmirnov/firmata/InitListener$Listener;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/InitListener$Listener;->onInitialized()V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lname/antonsmirnov/firmata/InitListener;->firmware:Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    .line 39
    iput-object v0, p0, Lname/antonsmirnov/firmata/InitListener;->protocol:Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    .line 40
    return-void
.end method

.method public getFirmware()Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;
    .locals 1

    .line 23
    iget-object v0, p0, Lname/antonsmirnov/firmata/InitListener;->firmware:Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    return-object v0
.end method

.method public getProtocol()Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;
    .locals 1

    .line 29
    iget-object v0, p0, Lname/antonsmirnov/firmata/InitListener;->protocol:Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lname/antonsmirnov/firmata/InitListener;->firmware:Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/antonsmirnov/firmata/InitListener;->protocol:Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFirmwareVersionMessageReceived(Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    .line 52
    iput-object p1, p0, Lname/antonsmirnov/firmata/InitListener;->firmware:Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    .line 53
    invoke-direct {p0}, Lname/antonsmirnov/firmata/InitListener;->checkInitAndFire()V

    .line 54
    return-void
.end method

.method public onProtocolVersionMessageReceived(Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    .line 57
    iput-object p1, p0, Lname/antonsmirnov/firmata/InitListener;->protocol:Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    .line 58
    invoke-direct {p0}, Lname/antonsmirnov/firmata/InitListener;->checkInitAndFire()V

    .line 59
    return-void
.end method
