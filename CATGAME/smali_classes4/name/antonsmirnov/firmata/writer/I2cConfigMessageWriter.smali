.class public Lname/antonsmirnov/firmata/writer/I2cConfigMessageWriter;
.super Lname/antonsmirnov/firmata/writer/SysexMessageWriter;
.source "I2cConfigMessageWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lname/antonsmirnov/firmata/writer/SysexMessageWriter<",
        "Lname/antonsmirnov/firmata/message/I2cConfigMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lname/antonsmirnov/firmata/writer/SysexMessageWriter;-><init>()V

    return-void
.end method

.method private writeI2cConfigData(Lname/antonsmirnov/firmata/message/I2cConfigMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 3
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/I2cConfigMessage;
    .param p2, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 24
    .local v0, "buffer":[B
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/I2cConfigMessage;->isOn()Z

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 25
    const/4 v1, 0x1

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/I2cConfigMessage;->getDelay()I

    move-result v2

    invoke-static {v2}, Lname/antonsmirnov/firmata/BytesHelper;->LSB(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 26
    const/4 v1, 0x2

    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/I2cConfigMessage;->getDelay()I

    move-result v2

    invoke-static {v2}, Lname/antonsmirnov/firmata/BytesHelper;->MSB(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 28
    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write([B)V

    .line 29
    return-void
.end method


# virtual methods
.method protected writeData(Lname/antonsmirnov/firmata/message/I2cConfigMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/I2cConfigMessage;
    .param p2, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Lname/antonsmirnov/firmata/writer/I2cConfigMessageWriter;->writeI2cConfigData(Lname/antonsmirnov/firmata/message/I2cConfigMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V

    .line 19
    return-void
.end method

.method protected bridge synthetic writeData(Lname/antonsmirnov/firmata/message/SysexMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 13
    check-cast p1, Lname/antonsmirnov/firmata/message/I2cConfigMessage;

    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/writer/I2cConfigMessageWriter;->writeData(Lname/antonsmirnov/firmata/message/I2cConfigMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V

    return-void
.end method
