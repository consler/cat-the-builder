.class public final Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;
.super Landroid/os/ResultReceiver;
.source "ResultReceiverWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;",
        "Landroid/os/ResultReceiver;",
        "resultReceiverWrapperInterface",
        "Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapperInterface;",
        "handler",
        "Landroid/os/Handler;",
        "(Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapperInterface;Landroid/os/Handler;)V",
        "Ljava/lang/ref/WeakReference;",
        "getResultReceiverWrapperInterface",
        "()Ljava/lang/ref/WeakReference;",
        "onReceiveResult",
        "",
        "resultCode",
        "",
        "resultData",
        "Landroid/os/Bundle;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final resultReceiverWrapperInterface:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapperInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapperInterface;Landroid/os/Handler;)V
    .locals 1
    .param p1, "resultReceiverWrapperInterface"    # Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapperInterface;
    .param p2, "handler"    # Landroid/os/Handler;

    const-string v0, "resultReceiverWrapperInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    nop

    .line 34
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;->resultReceiverWrapperInterface:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getResultReceiverWrapperInterface()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapperInterface;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;->resultReceiverWrapperInterface:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapper;->resultReceiverWrapperInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapperInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/catrobat/catroid/transfers/project/ResultReceiverWrapperInterface;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 39
    :cond_0
    return-void
.end method
