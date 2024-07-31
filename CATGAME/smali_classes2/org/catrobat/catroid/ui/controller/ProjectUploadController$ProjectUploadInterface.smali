.class public interface abstract Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;
.super Ljava/lang/Object;
.source "ProjectUploadController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/controller/ProjectUploadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProjectUploadInterface"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/controller/ProjectUploadController$ProjectUploadInterface;",
        "",
        "getContext",
        "Landroid/content/Context;",
        "getResultReceiverWrapper",
        "Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;",
        "startUploadService",
        "",
        "intent",
        "Landroid/content/Intent;",
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
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getResultReceiverWrapper()Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;
.end method

.method public abstract startUploadService(Landroid/content/Intent;)V
.end method
