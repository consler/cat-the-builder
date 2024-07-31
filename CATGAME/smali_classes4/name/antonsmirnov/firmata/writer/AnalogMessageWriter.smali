.class public Lname/antonsmirnov/firmata/writer/AnalogMessageWriter;
.super Ljava/lang/Object;
.source "AnalogMessageWriter.java"

# interfaces
.implements Lname/antonsmirnov/firmata/writer/IMessageWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lname/antonsmirnov/firmata/writer/IMessageWriter<",
        "Lname/antonsmirnov/firmata/message/AnalogMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMMAND:I = 0xe0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lname/antonsmirnov/firmata/message/AnalogMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 1
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/AnalogMessage;
    .param p2, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getPin()I

    move-result v0

    invoke-static {v0}, Lname/antonsmirnov/firmata/BytesHelper;->ENCODE_CHANNEL(I)I

    move-result v0

    or-int/lit16 v0, v0, 0xe0

    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write(I)V

    .line 18
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v0

    invoke-static {v0}, Lname/antonsmirnov/firmata/BytesHelper;->LSB(I)I

    move-result v0

    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write(I)V

    .line 19
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/AnalogMessage;->getValue()I

    move-result v0

    invoke-static {v0}, Lname/antonsmirnov/firmata/BytesHelper;->MSB(I)I

    move-result v0

    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write(I)V

    .line 20
    return-void
.end method

.method public bridge synthetic write(Lname/antonsmirnov/firmata/message/Message;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 12
    check-cast p1, Lname/antonsmirnov/firmata/message/AnalogMessage;

    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/writer/AnalogMessageWriter;->write(Lname/antonsmirnov/firmata/message/AnalogMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V

    return-void
.end method
