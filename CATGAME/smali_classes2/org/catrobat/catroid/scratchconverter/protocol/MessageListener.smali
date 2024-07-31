.class public interface abstract Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;
.super Ljava/lang/Object;
.source "MessageListener.java"


# virtual methods
.method public abstract getNumberOfJobsInProgress()I
.end method

.method public abstract isJobInProgress(J)Z
.end method

.method public abstract onUserCanceledConversion(J)V
.end method

.method public abstract restoreJobIfRunning(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
.end method

.method public abstract scheduleJob(Lorg/catrobat/catroid/scratchconverter/protocol/Job;ZLorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)Z
.end method

.method public abstract setBaseMessageHandler(Lorg/catrobat/catroid/scratchconverter/protocol/BaseMessageHandler;)V
.end method
