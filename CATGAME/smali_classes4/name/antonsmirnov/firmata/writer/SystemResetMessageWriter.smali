.class public Lname/antonsmirnov/firmata/writer/SystemResetMessageWriter;
.super Ljava/lang/Object;
.source "SystemResetMessageWriter.java"

# interfaces
.implements Lname/antonsmirnov/firmata/writer/IMessageWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lname/antonsmirnov/firmata/writer/IMessageWriter<",
        "Lname/antonsmirnov/firmata/message/SystemResetMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMMAND:I = 0xff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
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

    .line 10
    check-cast p1, Lname/antonsmirnov/firmata/message/SystemResetMessage;

    invoke-virtual {p0, p1, p2}, Lname/antonsmirnov/firmata/writer/SystemResetMessageWriter;->write(Lname/antonsmirnov/firmata/message/SystemResetMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V

    return-void
.end method

.method public write(Lname/antonsmirnov/firmata/message/SystemResetMessage;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .locals 1
    .param p1, "message"    # Lname/antonsmirnov/firmata/message/SystemResetMessage;
    .param p2, "serial"    # Lname/antonsmirnov/firmata/serial/ISerial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation

    .line 15
    const/16 v0, 0xff

    invoke-interface {p2, v0}, Lname/antonsmirnov/firmata/serial/ISerial;->write(I)V

    .line 16
    return-void
.end method
