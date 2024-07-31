.class public Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;
.super Ljava/lang/Object;
.source "MessagesHistoryWrapper.java"

# interfaces
.implements Lname/antonsmirnov/firmata/IFirmata;
.implements Lname/antonsmirnov/firmata/IFirmata$Listener;


# instance fields
.field private firmata:Lname/antonsmirnov/firmata/IFirmata;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;",
            ">;"
        }
    .end annotation
.end field

.field private propertyManagers:[Lname/antonsmirnov/firmata/wrapper/IMessagePropertyManager;

.field private receivedFilter:Lname/antonsmirnov/firmata/wrapper/IMessageFilter;

.field private receivedPropertyManager:Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;

.field private sentFilter:Lname/antonsmirnov/firmata/wrapper/IMessageFilter;

.field private sentPropertyManager:Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;

.field private stubMessageFilter:Lname/antonsmirnov/firmata/wrapper/IMessageFilter;


# direct methods
.method public varargs constructor <init>(Lname/antonsmirnov/firmata/IFirmata;[Lname/antonsmirnov/firmata/wrapper/IMessagePropertyManager;)V
    .locals 2
    .param p1, "firmata"    # Lname/antonsmirnov/firmata/IFirmata;
    .param p2, "propertyManagers"    # [Lname/antonsmirnov/firmata/wrapper/IMessagePropertyManager;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->messages:Ljava/util/List;

    .line 48
    new-instance v0, Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;-><init>(Z)V

    iput-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->receivedPropertyManager:Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;

    .line 49
    new-instance v1, Lname/antonsmirnov/firmata/wrapper/DirectionMessageFilter;

    invoke-direct {v1, v0}, Lname/antonsmirnov/firmata/wrapper/DirectionMessageFilter;-><init>(Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;)V

    iput-object v1, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->receivedFilter:Lname/antonsmirnov/firmata/wrapper/IMessageFilter;

    .line 51
    new-instance v0, Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;-><init>(Z)V

    iput-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->sentPropertyManager:Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;

    .line 52
    new-instance v1, Lname/antonsmirnov/firmata/wrapper/DirectionMessageFilter;

    invoke-direct {v1, v0}, Lname/antonsmirnov/firmata/wrapper/DirectionMessageFilter;-><init>(Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;)V

    iput-object v1, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->sentFilter:Lname/antonsmirnov/firmata/wrapper/IMessageFilter;

    .line 83
    new-instance v0, Lname/antonsmirnov/firmata/wrapper/StubMessageFilter;

    invoke-direct {v0}, Lname/antonsmirnov/firmata/wrapper/StubMessageFilter;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->stubMessageFilter:Lname/antonsmirnov/firmata/wrapper/IMessageFilter;

    .line 21
    iput-object p1, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    .line 22
    iput-object p2, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->propertyManagers:[Lname/antonsmirnov/firmata/wrapper/IMessagePropertyManager;

    .line 23
    invoke-interface {p1, p0}, Lname/antonsmirnov/firmata/IFirmata;->addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V

    .line 25
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->clear()V

    .line 26
    return-void
.end method

.method private rememberSentMessage(Lname/antonsmirnov/firmata/message/Message;)V
    .locals 2
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/Message;

    .line 72
    new-instance v0, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;

    invoke-direct {v0, p1}, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;-><init>(Lname/antonsmirnov/firmata/message/Message;)V

    .line 75
    .local v0, "newData":Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;
    invoke-virtual {p0, v0}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->addCommonProperties(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)V

    .line 78
    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->sentPropertyManager:Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;

    invoke-virtual {v1, v0}, Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;->set(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)V

    .line 80
    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method


# virtual methods
.method protected addCommonProperties(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)V
    .locals 4
    .param p1, "data"    # Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;

    .line 55
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->propertyManagers:[Lname/antonsmirnov/firmata/wrapper/IMessagePropertyManager;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 56
    .local v3, "eachPropertyManager":Lname/antonsmirnov/firmata/wrapper/IMessagePropertyManager;
    invoke-interface {v3, p1}, Lname/antonsmirnov/firmata/wrapper/IMessagePropertyManager;->set(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)V

    .line 55
    .end local v3    # "eachPropertyManager":Lname/antonsmirnov/firmata/wrapper/IMessagePropertyManager;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 31
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V

    .line 32
    return-void
.end method

.method public clear()V
    .locals 1

    .line 139
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 43
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/IFirmata;->clearListeners()V

    .line 44
    return-void
.end method

.method public containsListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)Z
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 39
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->containsListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)Z

    move-result v0

    return v0
.end method

.method public getLastReceivedMessageWithProperties()Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;
    .locals 2

    .line 128
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->getReceivedMessages()Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "receivedMessages":Ljava/util/List;, "Ljava/util/List<Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->stubMessageFilter:Lname/antonsmirnov/firmata/wrapper/IMessageFilter;

    invoke-virtual {p0, v0}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->getMessages(Lname/antonsmirnov/firmata/wrapper/IMessageFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Lname/antonsmirnov/firmata/wrapper/IMessageFilter;)Ljava/util/List;
    .locals 4
    .param p1, "filter"    # Lname/antonsmirnov/firmata/wrapper/IMessageFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lname/antonsmirnov/firmata/wrapper/IMessageFilter;",
            ")",
            "Ljava/util/List<",
            "Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 100
    .local v0, "filteredMessages":Ljava/util/List;, "Ljava/util/List<Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;>;"
    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;

    .line 101
    .local v2, "eachMessage":Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;
    invoke-interface {p1, v2}, Lname/antonsmirnov/firmata/wrapper/IMessageFilter;->isAllowed(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v2    # "eachMessage":Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    return-object v0
.end method

.method public getReceivedMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->receivedFilter:Lname/antonsmirnov/firmata/wrapper/IMessageFilter;

    invoke-virtual {p0, v0}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->getMessages(Lname/antonsmirnov/firmata/wrapper/IMessageFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSentMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->sentFilter:Lname/antonsmirnov/firmata/wrapper/IMessageFilter;

    invoke-virtual {p0, v0}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->getMessages(Lname/antonsmirnov/firmata/wrapper/IMessageFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onAnalogMessageReceived(Lname/antonsmirnov/firmata/message/AnalogMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/AnalogMessage;

    .line 143
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->rememberReceivedMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 144
    return-void
.end method

.method public onDataReceived(I)V
    .locals 1
    .param p1, "incomingByte"    # I

    .line 181
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->onDataReceived(I)V

    .line 182
    return-void
.end method

.method public onDigitalMessageReceived(Lname/antonsmirnov/firmata/message/DigitalMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/DigitalMessage;

    .line 147
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->rememberReceivedMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 148
    return-void
.end method

.method public onFirmwareVersionMessageReceived(Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/FirmwareVersionMessage;

    .line 151
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->rememberReceivedMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 152
    return-void
.end method

.method public onI2cMessageReceived(Lname/antonsmirnov/firmata/message/I2cReplyMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/I2cReplyMessage;

    .line 167
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->rememberReceivedMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 168
    return-void
.end method

.method public onProtocolVersionMessageReceived(Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/ProtocolVersionMessage;

    .line 155
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->rememberReceivedMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 156
    return-void
.end method

.method public onStringSysexMessageReceived(Lname/antonsmirnov/firmata/message/StringSysexMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/StringSysexMessage;

    .line 163
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->rememberReceivedMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 164
    return-void
.end method

.method public onSysexMessageReceived(Lname/antonsmirnov/firmata/message/SysexMessage;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/SysexMessage;

    .line 159
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->rememberReceivedMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 160
    return-void
.end method

.method public onUnknownByteReceived(I)V
    .locals 0
    .param p1, "byteValue"    # I

    .line 172
    return-void
.end method

.method protected rememberReceivedMessage(Lname/antonsmirnov/firmata/message/Message;)V
    .locals 2
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/Message;

    .line 60
    new-instance v0, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;

    invoke-direct {v0, p1}, Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;-><init>(Lname/antonsmirnov/firmata/message/Message;)V

    .line 63
    .local v0, "newData":Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;
    invoke-virtual {p0, v0}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->addCommonProperties(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)V

    .line 66
    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->receivedPropertyManager:Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;

    invoke-virtual {v1, v0}, Lname/antonsmirnov/firmata/wrapper/DirectionMessagePropertyManager;->set(Lname/antonsmirnov/firmata/wrapper/MessageWithProperties;)V

    .line 68
    iget-object v1, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public removeListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 35
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->removeListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V

    .line 36
    return-void
.end method

.method public send(Lname/antonsmirnov/firmata/message/Message;)V
    .locals 1
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->firmata:Lname/antonsmirnov/firmata/IFirmata;

    invoke-interface {v0, p1}, Lname/antonsmirnov/firmata/IFirmata;->send(Lname/antonsmirnov/firmata/message/Message;)V

    .line 177
    invoke-direct {p0, p1}, Lname/antonsmirnov/firmata/wrapper/MessagesHistoryWrapper;->rememberSentMessage(Lname/antonsmirnov/firmata/message/Message;)V

    .line 178
    return-void
.end method
