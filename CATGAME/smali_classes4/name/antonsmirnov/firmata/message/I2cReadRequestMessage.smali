.class public Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;
.super Lname/antonsmirnov/firmata/message/I2cRequestMessage;
.source "I2cReadRequestMessage.java"


# instance fields
.field private bytesToRead:Ljava/lang/Integer;

.field private slaveRegister:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/I2cRequestMessage;-><init>()V

    .line 43
    return-void
.end method

.method private getReadContinuouslyBinaryData()[I
    .locals 3

    .line 59
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->validateSlaveRegister()V

    .line 60
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->validateBytesToRead()V

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->slaveRegister:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->bytesToRead:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method private getReadOnlyBinaryData()[I
    .locals 4

    .line 53
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->slaveRegister:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    iget-object v0, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->bytesToRead:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v2

    goto :goto_0

    :cond_0
    new-array v3, v2, [I

    iget-object v0, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->bytesToRead:Ljava/lang/Integer;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    :goto_0
    return-object v3
.end method

.method private validateBytesToRead()V
    .locals 2

    .line 48
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->bytesToRead:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 50
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bytesToRead field is not specified and is required"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateSlaveRegister()V
    .locals 2

    .line 66
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->slaveRegister:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "slaveRegister is not specified and in required in ReadContinuously mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBinaryData()[I
    .locals 3

    .line 32
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->validateBytesToRead()V

    .line 34
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->getMode()Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    move-result-object v0

    .line 35
    .local v0, "mode":Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;
    sget-object v1, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage$1;->$SwitchMap$name$antonsmirnov$firmata$message$I2cRequestMessage$MODE:[I

    invoke-virtual {v0}, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 40
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->getReadContinuouslyBinaryData()[I

    move-result-object v1

    return-object v1

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Mode should be ReadOnce or ReadContinuously"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_1
    invoke-direct {p0}, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->getReadOnlyBinaryData()[I

    move-result-object v1

    return-object v1
.end method

.method public getBytesToRead()Ljava/lang/Integer;
    .locals 1

    .line 23
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->bytesToRead:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSlaveRegister()Ljava/lang/Integer;
    .locals 1

    .line 13
    iget-object v0, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->slaveRegister:Ljava/lang/Integer;

    return-object v0
.end method

.method public setBytesToRead(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "bytesToRead"    # Ljava/lang/Integer;

    .line 27
    iput-object p1, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->bytesToRead:Ljava/lang/Integer;

    .line 28
    return-void
.end method

.method public setSlaveRegister(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "slaveRegister"    # Ljava/lang/Integer;

    .line 17
    iput-object p1, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->slaveRegister:Ljava/lang/Integer;

    .line 18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->formatHelper:Lname/antonsmirnov/firmata/FormatHelper;

    .line 73
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->getSlaveAddress()I

    move-result v2

    invoke-virtual {v1, v2}, Lname/antonsmirnov/firmata/FormatHelper;->formatBinary(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->isTenBitsMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->getMode()Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->slaveRegister:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    sget-object v1, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->formatHelper:Lname/antonsmirnov/firmata/FormatHelper;

    iget-object v2, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->slaveRegister:Ljava/lang/Integer;

    .line 74
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lname/antonsmirnov/firmata/FormatHelper;->formatBinary(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    iget-object v2, p0, Lname/antonsmirnov/firmata/message/I2cReadRequestMessage;->bytesToRead:Ljava/lang/Integer;

    aput-object v2, v0, v1

    .line 72
    const-string v1, "I2cReadRequestMessage[slaveAddress={0}, 10bitsMode={1}, mode={2}, slaveReg={3}, bytesToRead={4}]"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
