.class public interface abstract Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProjectDownloadCallback"
.end annotation


# virtual methods
.method public abstract onDownloadFinished(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadProgress(ILjava/lang/String;)V
.end method

.method public abstract onDownloadStarted(Ljava/lang/String;)V
.end method

.method public abstract onUserCanceledDownload(Ljava/lang/String;)V
.end method
