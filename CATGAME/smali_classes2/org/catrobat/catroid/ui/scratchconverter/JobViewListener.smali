.class public interface abstract Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
.super Ljava/lang/Object;
.source "JobViewListener.java"


# virtual methods
.method public abstract onJobFailed(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
.end method

.method public abstract onJobFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
.end method

.method public abstract onJobOutput(Lorg/catrobat/catroid/scratchconverter/protocol/Job;[Ljava/lang/String;)V
.end method

.method public abstract onJobProgress(Lorg/catrobat/catroid/scratchconverter/protocol/Job;S)V
.end method

.method public abstract onJobReady(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
.end method

.method public abstract onJobScheduled(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
.end method

.method public abstract onJobStarted(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
.end method

.method public abstract onUserCanceledJob(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
.end method
