.class public interface abstract Lorg/catrobat/catroid/devices/mindstorms/LegoSensor;
.super Ljava/lang/Object;
.source "LegoSensor.java"


# virtual methods
.method public abstract getConnectedPort()I
.end method

.method public abstract getLastSensorValue()F
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getUpdateInterval()I
.end method

.method public abstract getValue()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation
.end method

.method public abstract updateLastSensorValue()V
.end method
