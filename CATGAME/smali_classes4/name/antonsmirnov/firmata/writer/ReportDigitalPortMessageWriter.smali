.class public Lname/antonsmirnov/firmata/writer/ReportDigitalPortMessageWriter;
.super Ljava/lang/Object;
.source "ReportDigitalPortMessageWriter.java"

# interfaces
.implements Lname/antonsmirnov/firmata/writer/IMessageWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lname/antonsmirnov/firmata/writer/IMessageWriter<",
        "Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMMAND:I = 0xd0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic write(Lname/antonsmirnov/firmata/message/Message;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 12
    check-cast p1, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;

    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/writer/ReportDigitalPortMessageWriter;->write(Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V

    return-void
.end method

.method public write(Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 1
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;
    .param p2, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->getPort()I

    move-result v0

    invoke-static {v0}, Lname/antonsmirnov/firmata/BytesHelper;->ENCODE_CHANNEL(I)I

    move-result v0

    or-int/lit16 v0, v0, 0xd0

    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write(I)V

    .line 18
    invoke-virtual {p1}, Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;->isEnable()Z

    move-result v0

    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write(I)V

    .line 19
    return-void
.end method
