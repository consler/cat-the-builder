.class public interface abstract Lname/antonsmirnov/firmata/IFirmata;
.super Ljava/lang/Object;
.source "IFirmata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lname/antonsmirnov/firmata/IFirmata$StubListener;,
        Lname/antonsmirnov/firmata/IFirmata$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
.end method

.method public abstract clearListeners()V
.end method

.method public abstract containsListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)Z
.end method

.method public abstract onDataReceived(I)V
.end method

.method public abstract removeListener(Lname/antonsmirnov/firmata/IFirmata$Listener;)V
.end method

.method public abstract send(Lname/antonsmirnov/firmata/message/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/serial/SerialException;
        }
    .end annotation
.end method
