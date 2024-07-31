.class public Lname/antonsmirnov/firmata/writer/SamplingIntervalMessageWriter;
.super Lname/antonsmirnov/firmata/writer/SysexMessageWriter;
.source "SamplingIntervalMessageWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lname/antonsmirnov/firmata/writer/SysexMessageWriter<",
        "Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lname/antonsmirnov/firmata/writer/SysexMessageWriter;-><init>()V

    return-void
.end method

.method private writeIntervalData(Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 3
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;
    .param p2, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 23
    .local v0, "buffer":[B
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;->getInterval()I

    move-result v1

    invoke-static {v1}, Lname/antonsmirnov/firmata/BytesHelper;->LSB(I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 24
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;->getInterval()I

    move-result v1

    invoke-static {v1}, Lname/antonsmirnov/firmata/BytesHelper;->MSB(I)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 26
    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write([B)V

    .line 27
    return-void
.end method


# virtual methods
.method protected writeData(Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 0
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;
    .param p2, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lname/antonsmirnov/firmata/writer/SamplingIntervalMessageWriter;->writeIntervalData(Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V

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
    check-cast p1, Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;

    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/writer/SamplingIntervalMessageWriter;->writeData(Lname/antonsmirnov/firmata/message/SamplingIntervalMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V

    return-void
.end method
