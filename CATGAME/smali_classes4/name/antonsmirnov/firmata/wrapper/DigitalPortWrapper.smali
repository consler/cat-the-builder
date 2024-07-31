.class public Lname/antonsmirnov/firmata/wrapper/DigitalPortWrapper;
.super Ljava/lang/Object;
.source "DigitalPortWrapper.java"

# interfaces
.implements Lname/antonsmirnov/firmata/IFirmata;


# instance fields
.field private firmata:Lname/antonsmirnov/firmata/IFirmata;

.field private portValues:Ljava/util/Map;
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/wrapper/DigitalPortWrapper;->portValues:Ljava/util/Map;

    .line 16
    iput-object p1, p0, Lname/antonsmirnov/firmata/wrapper/DigitalPortWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    .line 17
    return-void
.end method


# virtual methods
.method public addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 20
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/DigitalPortWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V

    .line 21
    return-void
.end method

.method public clear()V
    .locals 1

    .line 42
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/DigitalPortWrapper;->portValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 43
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 32
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/DigitalPortWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/IFirmata;->clearListeners()V

    .line 33
    return-void
.end method

.method public containsListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)Z
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 28
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/DigitalPortWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->containsListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)Z

    move-result v0

    return v0
.end method

.method public getPortValues()Ljava/util/Map;
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

    .line 38
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/DigitalPortWrapper;->portValues:Ljava/util/Map;

    return-object v0
.end method

.method public onDataReceived(I)V
    .locals 1
    .param p1, "incomingByte"    # I

    .line 55
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/DigitalPortWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->onDataReceived(I)V

    .line 56
    return-void
.end method

.method public removeListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 24
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/DigitalPortWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->removeListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V

    .line 25
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

    .line 46
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/DigitalPortWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->send(Lname/antonsmirnov/firmata/message/Message;)V

    .line 48
    instance-of v0, p1, Lname/antonsmirnov/firmata/message/DigitalMessage;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p1

    check-cast v0, Lname/antonsmirnov/firmata/message/DigitalMessage;

    .line 50
    .local v0, "digitalMessage":Lname/antonsmirnov/firmata/message/DigitalMessage;
    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/DigitalPortWrapper;->portValues:Ljava/util/Map;

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v0    # "digitalMessage":Lname/antonsmirnov/firmata/message/DigitalMessage;
    :cond_0
    return-void
.end method
