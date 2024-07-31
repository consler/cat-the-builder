.class public interface abstract Lname/antonsmirnov/firmata/serial/ISerialListener;
.super Ljava/lang/Object;
.source "ISerialListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ConcreteSerialImpl:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onDataReceived(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConcreteSerialImpl;)V"
        }
    .end annotation
.end method

.method public abstract onException(Ljava/lang/Throwable;)V
.end method
