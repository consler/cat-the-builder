.class public interface abstract Lname/antonsmirnov/firmata/message/factory/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# virtual methods
.method public abstract analogRead(I)Lname/antonsmirnov/firmata/message/ReportAnalogPinMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation
.end method

.method public abstract analogWrite(II)Lname/antonsmirnov/firmata/message/AnalogMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation
.end method

.method public abstract digitalRead(I)Lname/antonsmirnov/firmata/message/ReportDigitalPortMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation
.end method

.method public abstract digitalWrite(II)Lname/antonsmirnov/firmata/message/DigitalMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation
.end method

.method public abstract pinMode(II)Lname/antonsmirnov/firmata/message/SetPinModeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lname/antonsmirnov/firmata/message/factory/MessageValidationException;
        }
    .end annotation
.end method
