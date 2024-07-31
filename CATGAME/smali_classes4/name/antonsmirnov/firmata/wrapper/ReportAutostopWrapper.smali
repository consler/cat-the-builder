.class public Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;
.super Lname/antonsmirnov/firmata/IFirmata$StubListener;
.source "ReportAutostopWrapper.java"

# interfaces
.implements Lname/antonsmirnov/firmata/IFirmata;


# instance fields
.field private analogReporting:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private digitalReporting:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private firmata:Lname/antonsmirnov/firmata/IFirmata;


# direct methods
.method public constructor <init>(Lname/antonsmirnov/firmata/IFirmata;)V
    .locals 1
    .param p1, "firmata"    # Lname/antonsmirnov/firmata/IFirmata;

    .line 17
    invoke-direct {p0}, Lname/antonsmirnov/firmata/IFirmata$StubListener;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->digitalReporting:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->analogReporting:Ljava/util/Set;

    .line 18
    iput-object p1, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    .line 19
    return-void
.end method

.method private disableAnalogReporting(Lname/antonsmirnov/firmata/message/AnalogMessage;)V
    .locals 4
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/AnalogMessage;

    .line 70
    :try_start_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    new-instance v1, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getPin()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;-><init>(IZ)V

    invoke-interface {v0, v1}, Lname/antonsmirnov/firmata/IFirmata;->send(Lname/antonsmirnov/firmata/message/Message;)V
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 74
    :goto_0
    return-void
.end method

.method private disableDigitalReporting(Lname/antonsmirnov/firmata/message/DigitalMessage;)V
    .locals 4
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/DigitalMessage;

    .line 87
    :try_start_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    new-instance v1, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getPort()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;-><init>(IZ)V

    invoke-interface {v0, v1}, Lname/antonsmirnov/firmata/IFirmata;->send(Lname/antonsmirnov/firmata/message/Message;)V
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 91
    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 22
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V

    .line 23
    return-void
.end method

.method public clear()V
    .locals 1

    .line 94
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->digitalReporting:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 95
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->analogReporting:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 96
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 34
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/IFirmata;->clearListeners()V

    .line 35
    return-void
.end method

.method public containsListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)Z
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 30
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->containsListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)Z

    move-result v0

    return v0
.end method

.method public onAnalogMessageReceived(Lname/antonsmirnov/firmata/message/AnalogMessage;)V
    .locals 2
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/AnalogMessage;

    .line 61
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->analogReporting:Ljava/util/Set;

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getPin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->analogReporting:Ljava/util/Set;

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getPin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0, p1}, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->disableAnalogReporting(Lname/antonsmirnov/firmata/message/AnalogMessage;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onDataReceived(I)V
    .locals 1
    .param p1, "incomingByte"    # I

    .line 99
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->onDataReceived(I)V

    .line 100
    return-void
.end method

.method public onDigitalMessageReceived(Lname/antonsmirnov/firmata/message/DigitalMessage;)V
    .locals 2
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/DigitalMessage;

    .line 78
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->digitalReporting:Ljava/util/Set;

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->digitalReporting:Ljava/util/Set;

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/DigitalMessage;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 81
    invoke-direct {p0, p1}, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->disableDigitalReporting(Lname/antonsmirnov/firmata/message/DigitalMessage;)V

    .line 83
    :cond_0
    return-void
.end method

.method public removeListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 26
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->removeListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V

    .line 27
    return-void
.end method

.method public send(Lname/antonsmirnov/firmata/message/Message;)V
    .locals 3
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->send(Lname/antonsmirnov/firmata/message/Message;)V

    .line 45
    instance-of v0, p1, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p1

    check-cast v0, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;

    .line 47
    .local v0, "digitalMessage":Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->digitalReporting:Ljava/util/Set;

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v0    # "digitalMessage":Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;
    :cond_0
    instance-of v0, p1, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;

    if-eqz v0, :cond_1

    .line 53
    move-object v0, p1

    check-cast v0, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;

    .line 54
    .local v0, "analogMessage":Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;
    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/ReportAutostopWrapper;->analogReporting:Ljava/util/Set;

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;->getPin()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v0    # "analogMessage":Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;
    :cond_1
    return-void
.end method
