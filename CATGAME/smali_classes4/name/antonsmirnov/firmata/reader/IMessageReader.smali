.class public interface abstract Lname/antonsmirnov/firmata/reader/IMessageReader;
.super Ljava/lang/Object;
.source "IMessageReader.java"


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
.method public abstract canRead([BII)Z
.end method

.method public abstract finishedReading()Z
.end method

.method public abstract fireEvent(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
.end method

.method public abstract getMessage()Lname/antonsmirnov/firmata/message/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TConcreteMessage;"
        }
    .end annotation
.end method

.method public abstract read([BI)V
.end method

.method public abstract startReading()V
.end method
