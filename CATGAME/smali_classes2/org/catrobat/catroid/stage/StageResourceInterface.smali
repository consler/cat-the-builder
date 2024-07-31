.class public interface abstract Lorg/catrobat/catroid/stage/StageResourceInterface;
.super Ljava/lang/Object;
.source "StageResourceInterface.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract initialise()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/devices/mindstorms/MindstormsException;
        }
    .end annotation
.end method
