.class public Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter;
.super Lname/antonsmirnov/firmata/writer/SysexMessageWriter;
.source "I2cRequestMessageWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ConcreteRequestMessage:",
        "Lname/antonsmirnov/firmata/message/I2cRequestMessage;",
        ">",
        "Lname/antonsmirnov/firmata/writer/SysexMessageWriter<",
        "TConcreteRequestMessage;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    .local p0, "this":Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter;, "Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter<TConcreteRequestMessage;>;"
    invoke-direct {p0}, Lname/antonsmirnov/firmata/writer/SysexMessageWriter;-><init>()V

    return-void
.end method

.method private writeI2cRequestData(Lname/antonsmirnov/firmata/message/I2cRequestMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 5
    .param p2, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConcreteRequestMessage;",
            "Lname/antonsmirnov/firmata/serial/ISerial;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 21
    .local p0, "this":Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter;, "Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter<TConcreteRequestMessage;>;"
    .local p1, "message":Lname/antonsmirnov/firmata/message/I2cRequestMessage;, "TConcreteRequestMessage;"
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 23
    .local v0, "buffer":[B
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->getSlaveAddress()I

    move-result v1

    invoke-static {v1}, Lname/antonsmirnov/firmata/BytesHelper;->LSB(I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 24
    const/4 v1, 0x0

    .line 26
    .local v1, "modeByte":I
    const/4 v3, 0x7

    invoke-static {v1, v3, v2}, Lname/antonsmirnov/firmata/BytesHelper;->setBit(IIZ)I

    move-result v1

    .line 27
    const/4 v4, 0x6

    invoke-static {v1, v4, v2}, Lname/antonsmirnov/firmata/BytesHelper;->setBit(IIZ)I

    move-result v1

    .line 28
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->isTenBitsMode()Z

    move-result v2

    const/4 v4, 0x5

    invoke-static {v1, v4, v2}, Lname/antonsmirnov/firmata/BytesHelper;->setBit(IIZ)I

    move-result v1

    .line 31
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->getMode()Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;

    move-result-object v2

    invoke-virtual {v2}, Lname/antonsmirnov/firmata/message/I2cRequestMessage$MODE;->getValue()I

    move-result v2

    shl-int/lit8 v2, v2, 0x3

    int-to-byte v2, v2

    or-int/2addr v1, v2

    .line 34
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->isTenBitsMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->getSlaveAddress()I

    move-result v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lname/antonsmirnov/firmata/BytesHelper;->MSB(I)I

    move-result v2

    or-int/2addr v1, v2

    .line 37
    :cond_0
    const/4 v2, 0x1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 38
    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write([B)V

    .line 40
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/I2cRequestMessage;->getBinaryData()[I

    move-result-object v2

    .line 41
    .local v2, "binaryData":[I
    if-eqz v2, :cond_1

    .line 42
    invoke-static {v2}, Lname/antonsmirnov/firmata/BytesHelper;->ENCODE_INT_ARRAY([I)[B

    move-result-object v3

    .line 43
    .local v3, "dataBuffer":[B
    invoke-interface {p2, v3}, Lname/antonsmirnov/firmata/serial/ISerial;->write([B)V

    .line 45
    .end local v3    # "dataBuffer":[B
    :cond_1
    return-void
.end method


# virtual methods
.method protected writeData(Lname/antonsmirnov/firmata/message/I2cRequestMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 0
    .param p2, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConcreteRequestMessage;",
            "Lname/antonsmirnov/firmata/serial/ISerial;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 17
    .local p0, "this":Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter;, "Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter<TConcreteRequestMessage;>;"
    .local p1, "message":Lname/antonsmirnov/firmata/message/I2cRequestMessage;, "TConcreteRequestMessage;"
    invoke-direct {p0, p1, p2}, Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter;->writeI2cRequestData(Lname/antonsmirnov/firmata/message/I2cRequestMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V

    .line 18
    return-void
.end method

.method protected bridge synthetic writeData(Lname/antonsmirnov/firmata/message/SysexMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 12
    .local p0, "this":Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter;, "Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter<TConcreteRequestMessage;>;"
    check-cast p1, Lname/antonsmirnov/firmata/message/I2cRequestMessage;

    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/writer/I2cRequestMessageWriter;->writeData(Lname/antonsmirnov/firmata/message/I2cRequestMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V

    return-void
.end method
