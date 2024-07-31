.class public interface abstract Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConvertCallback"
.end annotation


# virtual methods
.method public abstract onConversionAlreadyFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;Ljava/lang/String;)V
.end method

.method public abstract onConversionFailure(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/ClientException;)V
.end method

.method public abstract onConversionFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;Ljava/lang/String;Ljava/util/Date;)V
.end method

.method public abstract onConversionReady(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
.end method

.method public abstract onConversionStart(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onInfo(D[Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
.end method

.method public abstract onJobOutput(Lorg/catrobat/catroid/scratchconverter/protocol/Job;[Ljava/lang/String;)V
.end method

.method public abstract onJobProgress(Lorg/catrobat/catroid/scratchconverter/protocol/Job;S)V
.end method

.method public abstract onJobScheduled(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
.end method
