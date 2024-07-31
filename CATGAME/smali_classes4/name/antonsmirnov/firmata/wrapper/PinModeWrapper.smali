.class public Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;
.super Ljava/lang/Object;
.source "PinModeWrapper.java"

# interfaces
.implements Lname/antonsmirnov/firmata/IFirmata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lname/antonsmirnov/firmata/wrapper/PinModeWrapper$Listener;
    }
.end annotation


# instance fields
.field private firmata:Lname/antonsmirnov/firmata/IFirmata;

.field private listener:Lname/antonsmirnov/firmata/wrapper/PinModeWrapper$Listener;

.field private pinsConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lname/antonsmirnov/firmata/IFirmata;)V
    .locals 1
    .param p1, "firmata"    # Lname/antonsmirnov/firmata/IFirmata;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;-><init>(Lname/antonsmirnov/firmata/IFirmata;Lname/antonsmirnov/firmata/wrapper/PinModeWrapper$Listener;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lname/antonsmirnov/firmata/IFirmata;Lname/antonsmirnov/firmata/wrapper/PinModeWrapper$Listener;)V
    .locals 1
    .param p1, "firmata"    # Lname/antonsmirnov/firmata/IFirmata;
    .param p2, "listener"    # Lname/antonsmirnov/firmata/wrapper/PinModeWrapper$Listener;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->pinsConfig:Ljava/util/Map;

    .line 63
    iput-object p1, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    .line 64
    iput-object p2, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->listener:Lname/antonsmirnov/firmata/wrapper/PinModeWrapper$Listener;

    .line 66
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->clear()V

    .line 67
    return-void
.end method


# virtual methods
.method public addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 27
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V

    .line 28
    return-void
.end method

.method public clear()V
    .locals 1

    .line 74
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->pinsConfig:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 39
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/IFirmata;->clearListeners()V

    .line 40
    return-void
.end method

.method public containsListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)Z
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 35
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->containsListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)Z

    move-result v0

    return v0
.end method

.method public getPinsConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->pinsConfig:Ljava/util/Map;

    return-object v0
.end method

.method public onDataReceived(I)V
    .locals 1
    .param p1, "incomingByte"    # I

    .line 93
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->onDataReceived(I)V

    .line 94
    return-void
.end method

.method public removeListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 31
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->removeListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V

    .line 32
    return-void
.end method

.method public send(Lname/antonsmirnov/firmata/message/Message;)V
    .locals 4
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->send(Lname/antonsmirnov/firmata/message/Message;)V

    .line 80
    instance-of v0, p1, Lname/antonsmirnov/firmata/message/SetPinModeMessage;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p1

    check-cast v0, Lname/antonsmirnov/firmata/message/SetPinModeMessage;

    .line 84
    .local v0, "setPinModeMessage":Lname/antonsmirnov/firmata/message/SetPinModeMessage;
    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->pinsConfig:Ljava/util/Map;

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->getPin()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->getMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper;->listener:Lname/antonsmirnov/firmata/wrapper/PinModeWrapper$Listener;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->getPin()I

    move-result v2

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/SetPinModeMessage;->getMode()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lname/antonsmirnov/firmata/wrapper/PinModeWrapper$Listener;->onSetPinMode(II)V

    .line 90
    .end local v0    # "setPinModeMessage":Lname/antonsmirnov/firmata/message/SetPinModeMessage;
    :cond_0
    return-void
.end method
