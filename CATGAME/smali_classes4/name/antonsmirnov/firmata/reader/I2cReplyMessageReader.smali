.class public Lname/antonsmirnov/firmata/reader/I2cReplyMessageReader;
.super Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;
.source "I2cReplyMessageReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader<",
        "Lname/antonsmirnov/firmata/message/I2cReplyMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    const/16 v0, 0x77

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-direct {p0, v0}, Lname/antonsmirnov/firmata/reader/BaseSysexMessageReader;-><init>(Ljava/lang/Byte;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected buildSysexMessage([BI)Lname/antonsmirnov/firmata/message/I2cReplyMessage;
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "bufferLength"    # I

    .line 19
    new-instance v0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;

    invoke-direct {v0}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;-><init>()V

    .line 21
    .local v0, "message":Lname/antonsmirnov/firmata/message/I2cReplyMessage;
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Lname/antonsmirnov/firmata/BytesHelper;->DECODE_BYTE(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->setSlaveAddress(I)V

    .line 22
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Lname/antonsmirnov/firmata/BytesHelper;->DECODE_BYTE(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->setRegister(I)V

    .line 23
    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x6

    invoke-virtual {p0, p1, v2, v1}, Lname/antonsmirnov/firmata/reader/I2cReplyMessageReader;->extractIntArrayFromBuffer([BII)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lname/antonsmirnov/firmata/message/I2cReplyMessage;->setBinaryData([I)V

    .line 25
    return-object v0
.end method

.method protected bridge synthetic buildSysexMessage([BI)Lname/antonsmirnov/firmata/message/SysexMessage;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/reader/I2cReplyMessageReader;->buildSysexMessage([BI)Lname/antonsmirnov/firmata/message/I2cReplyMessage;

    move-result-object p1

    return-object p1
.end method

.method public fireEvent(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
    .locals 1
    .param p1, "listener"    # Lname/antonsmirnov/firmata/IFirmata$Listener;

    .line 29
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/reader/I2cReplyMessageReader;->getMessage()Lname/antonsmirnov/firmata/message/SysexMessage;

    move-result-object v0

    check-cast v0, Lname/antonsmirnov/firmata/message/I2cReplyMessage;

    invoke-interface {p1, v0}, Lname/antonsmirnov/firmata/IFirmata$Listener;->onI2cMessageReceived(Lname/antonsmirnov/firmata/message/I2cReplyMessage;)V

    .line 30
    return-void
.end method
