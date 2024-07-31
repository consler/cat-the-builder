.class public interface abstract Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;
.super Ljava/lang/Object;
.source "ProjectDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/web/ProjectDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProjectDownloadQueue"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;",
        "",
        "alreadyInQueue",
        "",
        "projectName",
        "",
        "enqueue",
        "",
        "finished",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract alreadyInQueue(Ljava/lang/String;)Z
.end method

.method public abstract enqueue(Ljava/lang/String;)V
.end method

.method public abstract finished(Ljava/lang/String;)V
.end method
