.class public Lname/antonsmirnov/firmata/Firmata;
.super Ljava/lang/Object;
.source "Firmata.java"

# interfaces
.implements Lname/antonsmirnov/firmata/IFirmata;
.implements Lname/antonsmirnov/firmata/serial/ISerialListener;


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static readers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lname/antonsmirnov/firmata/reader/IMessageReader;",
            ">;"
        }
    .end annotation
.end field

.field private static writers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lname/antonsmirnov/firmata/message/Message;",
            ">;",
            "Lname/antonsmirnov/firmata/writer/IMessageWriter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeReader:Lname/antonsmirnov/firmata/reader/IMessageReader;

.field private buffer:[B

.field private bufferLength:I

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lname/antonsmirnov/firmata/IFirmata$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private potentialReaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lname/antonsmirnov/firmata/reader/IMessageReader;",
            ">;"
        }
    .end annotation
.end field

.field private serial:Lname/antonsmirnov/firmata/serial/ISerial;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->listeners:Ljava/util/List;

    .line 125
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->buffer:[B

    .line 36
    invoke-direct {p0}, Lname/antonsmirnov/firmata/Firmata;->initWriters()V

    .line 37
    invoke-direct {p0}, Lname/antonsmirnov/firmata/Firmata;->initReaders()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 0
    .param p1, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;

    .line 106
    invoke-direct {p0}, Lname/antonsmirnov/firmata/Firmata;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lname/antonsmirnov/firmata/Firmata;->setSerial(Lname/antonsmirnov/firmata/serial/ISerial;)V

    .line 108
    return-void
.end method

.method private filterPotentialReaders(I)V
    .locals 5
    .param p1, "command"    # I

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "newPotentialReaders":Ljava/util/List;, "Ljava/util/List<Lname/antonsmirnov/firmata/reader/IMessageReader;>;"
    iget-object v1, p0, Lname/antonsmirnov/firmata/Firmata;->potentialReaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lname/antonsmirnov/firmata/reader/IMessageReader;

    .line 183
    .local v2, "eachPotentialReader":Lname/antonsmirnov/firmata/reader/IMessageReader;
    iget-object v3, p0, Lname/antonsmirnov/firmata/Firmata;->buffer:[B

    iget v4, p0, Lname/antonsmirnov/firmata/Firmata;->bufferLength:I

    invoke-interface {v2, v3, v4, p1}, Lname/antonsmirnov/firmata/reader/IMessageReader;->canRead([BII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v2    # "eachPotentialReader":Lname/antonsmirnov/firmata/reader/IMessageReader;
    :cond_0
    goto :goto_0

    .line 186
    :cond_1
    iput-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->potentialReaders:Ljava/util/List;

    .line 187
    return-void
.end method

.method private findPotentialReaders(I)V
    .locals 4
    .param p1, "command"    # I

    .line 220
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->readers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lname/antonsmirnov/firmata/reader/IMessageReader;

    .line 221
    .local v1, "eachReader":Lname/antonsmirnov/firmata/reader/IMessageReader;
    iget-object v2, p0, Lname/antonsmirnov/firmata/Firmata;->buffer:[B

    iget v3, p0, Lname/antonsmirnov/firmata/Firmata;->bufferLength:I

    invoke-interface {v1, v2, v3, p1}, Lname/antonsmirnov/firmata/reader/IMessageReader;->canRead([BII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lname/antonsmirnov/firmata/Firmata;->potentialReaders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v1    # "eachReader":Lname/antonsmirnov/firmata/reader/IMessageReader;
    :cond_0
    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method

.method private initReaders()V
    .locals 2

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lname/antonsmirnov/firmata/Firmata;->readers:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->potentialReaders:Ljava/util/List;

    .line 91
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->readers:Ljava/util/List;

    new-instance v1, Lname/antonsmirnov/firmata/reader/AnalogMessageReader;

    invoke-direct {v1}, Lname/antonsmirnov/firmata/reader/AnalogMessageReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->readers:Ljava/util/List;

    new-instance v1, Lname/antonsmirnov/firmata/reader/DigitalMessageReader;

    invoke-direct {v1}, Lname/antonsmirnov/firmata/reader/DigitalMessageReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->readers:Ljava/util/List;

    new-instance v1, Lname/antonsmirnov/firmata/reader/FirmwareVersionMessageReader;

    invoke-direct {v1}, Lname/antonsmirnov/firmata/reader/FirmwareVersionMessageReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->readers:Ljava/util/List;

    new-instance v1, Lname/antonsmirnov/firmata/reader/ProtocolVersionMessageReader;

    invoke-direct {v1}, Lname/antonsmirnov/firmata/reader/ProtocolVersionMessageReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->readers:Ljava/util/List;

    new-instance v1, Lname/antonsmirnov/firmata/reader/SysexMessageReader;

    invoke-direct {v1}, Lname/antonsmirnov/firmata/reader/SysexMessageReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->readers:Ljava/util/List;

    new-instance v1, Lname/antonsmirnov/firmata/reader/StringSysexMessageReader;

    invoke-direct {v1}, Lname/antonsmirnov/firmata/reader/StringSysexMessageReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->readers:Ljava/util/List;

    new-instance v1, Lname/antonsmirnov/firmata/reader/I2cReplyMessageReader;

    invoke-direct {v1}, Lname/antonsmirnov/firmata/reader/I2cReplyMessageReader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method private initWriters()V
    .locals 4

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    .line 63
    const-class v1, Lname/antonsmirnov/firmata/message/AnalogMessage;

    new-instance v2, Lname/antonsmirnov/firmata/writer/AnalogMessageWriter;

    invoke-direct {v2}, Lname/antonsmirnov/firmata/writer/AnalogMessageWriter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v1, Lname/antonsmirnov/firmata/message/DigitalMessage;

    new-instance v2, Lname/antonsmirnov/firmata/writer/DigitalMessageWriter;

    invoke-direct {v2}, Lname/antonsmirnov/firmata/writer/DigitalMessageWriter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v1, Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;

    new-instance v2, Lname/antonsmirnov/firmata/writer/ReportAnalogPinMessageWriter;

    invoke-direct {v2}, Lname/antonsmirnov/firmata/writer/ReportAnalogPinMessageWriter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v1, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;

    new-instance v2, Lname/antonsmirnov/firmata/writer/ReportDigitalPortMessageWriter;

    invoke-direct {v2}, Lname/antonsmirnov/firmata/writer/ReportDigitalPortMessageWriter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v1, Lname/antonsmirnov/firmata/message/ReportProtocolVersionMessage;

    new-instance v2, Lname/antonsmirnov/firmata/writer/ReportProtocolVersionMessageWriter;

    invoke-direct {v2}, Lname/antonsmirnov/firmata/writer/ReportProtocolVersionMessageWriter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v1, Lname/antonsmirnov/firmata/message/SetPinModeMessage;

    new-instance v2, Lname/antonsmirnov/firmata/writer/SetPinModeMessageWriter;

    invoke-direct {v2}, Lname/antonsmirnov/firmata/writer/SetPinModeMessageWriter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v1, Lname/antonsmirnov/firmata/message/SystemResetMessage;

    new-instance v2, Lname/antonsmirnov/firmata/writer/SystemResetMessageWriter;

    invoke-direct {v2}, Lname/antonsmirnov/firmata/writer/SystemResetMessageWriter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Lname/antonsmirnov/firmata/writer/SysexMessageWriter;

    invoke-direct {v0}, Lname/antonsmirnov/firmata/writer/SysexMessageWriter;-><init>()V

    .line 73
    .local v0, "sysexMessageWriter":Lname/antonsmirnov/firmata/writer/SysexMessageWriter;
    sget-object v1, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v2, Lname/antonsmirnov/firmata/message/SysexMessage;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v2, Lname/antonsmirnov/firmata/message/StringSysexMessage;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v2, Lname/antonsmirnov/firmata/message/ReportFirmwareVersionMessage;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v2, Lname/antonsmirnov/firmata/message/ServoConfigMessage;

    new-instance v3, Lname/antonsmirnov/firmata/writer/ServoConfigMessageWriter;

    invoke-direct {v3}, Lname/antonsmirnov/firmata/writer/ServoConfigMessageWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v2, Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;

    new-instance v3, Lname/antonsmirnov/firmata/writer/SamplingIntervalMessageWriter;

    invoke-direct {v3}, Lname/antonsmirnov/firmata/writer/SamplingIntervalMessageWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v2, Lname/antonsmirnov/firmata/message/I2cRequestMessage;

    new-instance v3, Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter;

    invoke-direct {v3}, Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v2, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;

    new-instance v3, Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter;

    invoke-direct {v3}, Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    const-class v2, Lname/antonsmirnov/firmata/message/I2cConfigMessage;

    new-instance v3, Lname/antonsmirnov/firmata/writer/I2cConfigMessageWriter;

    invoke-direct {v3}, Lname/antonsmirnov/firmata/writer/I2cConfigMessageWriter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method private reinitBuffer()V
    .locals 1

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lname/antonsmirnov/firmata/Firmata;->bufferLength:I

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->activeReader:Lname/antonsmirnov/firmata/reader/IMessageReader;

    .line 216
    iget-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->potentialReaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    return-void
.end method

.method private tryHandle()V
    .locals 5

    .line 190
    iget-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->potentialReaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 191
    .local v0, "potentialReadersCount":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 203
    :cond_0
    iget-object v1, p0, Lname/antonsmirnov/firmata/Firmata;->potentialReaders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lname/antonsmirnov/firmata/reader/IMessageReader;

    iput-object v1, p0, Lname/antonsmirnov/firmata/Firmata;->activeReader:Lname/antonsmirnov/firmata/reader/IMessageReader;

    .line 204
    invoke-interface {v1}, Lname/antonsmirnov/firmata/reader/IMessageReader;->startReading()V

    goto :goto_2

    .line 195
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lname/antonsmirnov/firmata/Firmata;->bufferLength:I

    if-ge v1, v2, :cond_3

    .line 196
    iget-object v2, p0, Lname/antonsmirnov/firmata/Firmata;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 197
    .local v3, "eachListener":Lname/antonsmirnov/firmata/IFirmata$Listener;
    iget-object v4, p0, Lname/antonsmirnov/firmata/Firmata;->buffer:[B

    aget-byte v4, v4, v1

    invoke-interface {v3, v4}, Lname/antonsmirnov/firmata/IFirmata$Listener;->onUnknownByteReceived(I)V

    .end local v3    # "eachListener":Lname/antonsmirnov/firmata/IFirmata$Listener;
    goto :goto_1

    .line 195
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lname/antonsmirnov/firmata/Firmata;->reinitBuffer()V

    .line 199
    nop

    .line 211
    :goto_2
    return-void
.end method


# virtual methods
.method public addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 43
    iget-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 55
    iget-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    return-void
.end method

.method public containsListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)Z
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 51
    iget-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getSerial()Lname/antonsmirnov/firmata/serial/ISerial;
    .locals 1

    .line 27
    iget-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->serial:Lname/antonsmirnov/firmata/serial/ISerial;

    return-object v0
.end method

.method public onDataReceived(I)V
    .locals 4
    .param p1, "incomingByte"    # I

    .line 148
    iget-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->buffer:[B

    iget v1, p0, Lname/antonsmirnov/firmata/Firmata;->bufferLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lname/antonsmirnov/firmata/Firmata;->bufferLength:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 150
    iget-object v1, p0, Lname/antonsmirnov/firmata/Firmata;->activeReader:Lname/antonsmirnov/firmata/reader/IMessageReader;

    if-nez v1, :cond_1

    .line 152
    invoke-static {p1}, Lname/antonsmirnov/firmata/BytesHelper;->DECODE_COMMAND(I)I

    move-result v0

    .line 154
    .local v0, "command":I
    iget-object v1, p0, Lname/antonsmirnov/firmata/Firmata;->potentialReaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-direct {p0, v0}, Lname/antonsmirnov/firmata/Firmata;->findPotentialReaders(I)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0, v0}, Lname/antonsmirnov/firmata/Firmata;->filterPotentialReaders(I)V

    .line 163
    :goto_0
    invoke-direct {p0}, Lname/antonsmirnov/firmata/Firmata;->tryHandle()V

    .line 165
    .end local v0    # "command":I
    goto :goto_2

    .line 167
    :cond_1
    invoke-interface {v1, v0, v2}, Lname/antonsmirnov/firmata/reader/IMessageReader;->read([BI)V

    .line 169
    iget-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->activeReader:Lname/antonsmirnov/firmata/reader/IMessageReader;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/reader/IMessageReader;->finishedReading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 172
    .local v1, "eachListener":Lname/antonsmirnov/firmata/IFirmata$Listener;
    iget-object v2, p0, Lname/antonsmirnov/firmata/Firmata;->activeReader:Lname/antonsmirnov/firmata/reader/IMessageReader;

    invoke-interface {v2, v1}, Lname/antonsmirnov/firmata/reader/IMessageReader;->fireEvent(Lname/antonsmirnov/firmata/IFirmata$Listener;)V

    .end local v1    # "eachListener":Lname/antonsmirnov/firmata/IFirmata$Listener;
    goto :goto_1

    .line 173
    :cond_2
    invoke-direct {p0}, Lname/antonsmirnov/firmata/Firmata;->reinitBuffer()V

    .line 176
    :cond_3
    :goto_2
    return-void
.end method

.method public onDataReceived(Ljava/lang/Object;)V
    .locals 1
    .param p1, "serialImpl"    # Ljava/lang/Object;

    .line 131
    :try_start_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->serial:Lname/antonsmirnov/firmata/serial/ISerial;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/serial/ISerial;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    iget-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->serial:Lname/antonsmirnov/firmata/serial/ISerial;

    invoke-interface {v0}, Lname/antonsmirnov/firmata/serial/ISerial;->read()I

    move-result v0

    .line 133
    .local v0, "incomingByte":I
    if-ltz v0, :cond_0

    .line 134
    invoke-virtual {p0, v0}, Lname/antonsmirnov/firmata/Firmata;->onDataReceived(I)V
    :try_end_0
    .catch Lname/antonsmirnov/firmata/serial/SerialException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "incomingByte":I
    :cond_0
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    :goto_0
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 141
    return-void
.end method

.method public removeListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 47
    iget-object v0, p0, Lname/antonsmirnov/firmata/Firmata;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 48
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

    .line 116
    sget-object v0, Lname/antonsmirnov/firmata/Firmata;->writers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lname/antonsmirnov/firmata/writer/IMessageWriter;

    .line 117
    .local v0, "writer":Lname/antonsmirnov/firmata/writer/IMessageWriter;
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lname/antonsmirnov/firmata/Firmata;->serial:Lname/antonsmirnov/firmata/serial/ISerial;

    invoke-interface {v0, p1, v1}, Lname/antonsmirnov/firmata/writer/IMessageWriter;->write(Lname/antonsmirnov/firmata/message/Message;Lname/antonsmirnov/firmata/serial/ISerial;)V

    .line 121
    return-void

    .line 118
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSerial(Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 0
    .param p1, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;

    .line 31
    iput-object p1, p0, Lname/antonsmirnov/firmata/Firmata;->serial:Lname/antonsmirnov/firmata/serial/ISerial;

    .line 32
    invoke-interface {p1, p0}, Lname/antonsmirnov/firmata/serial/ISerial;->addListener(Lname/antonsmirnov/firmata/serial/ISerialListener;)V

    .line 33
    return-void
.end method
