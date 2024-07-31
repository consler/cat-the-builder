.class public interface abstract Lname/antonsmirnov/firmata/writer/IMessageWriter;
.super Ljava/lang/Object;
.source "IMessageWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ConcreteMessage:",
        "Lname/antonsmirnov/firmata/message/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract write(Lname/antonsmirnov/firmata/message/Message;Lname/antonsmirnov/firmata/serial/ISerial;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConcreteMessage;",
            "Lname/antonsmirnov/firmata/serial/ISerial;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation
.end method
