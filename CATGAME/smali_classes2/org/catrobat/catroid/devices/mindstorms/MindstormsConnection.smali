.class public interface abstract Lorg/catrobat/catroid/devices/mindstorms/MindstormsConnection;
.super Ljava/lang/Object;
.source "MindstormsConnection.java"


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract getCommandCounter()S
.end method

.method public abstract incCommandCounter()V
.end method

.method public abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation
.end method

.method public abstract isConnected()Z
.end method

.method public abstract send(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation
.end method

.method public abstract sendAndReceive(Lorg/catrobat/catroid/devices/mindstorms/MindstormsCommand;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation
.end method
