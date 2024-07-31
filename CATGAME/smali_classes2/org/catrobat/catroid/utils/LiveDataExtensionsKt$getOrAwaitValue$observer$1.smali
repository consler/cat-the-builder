.class public final Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$getOrAwaitValue$observer$1;
.super Ljava/lang/Object;
.source "LiveDataExtensions.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/utils/LiveDataExtensionsKt;->getOrAwaitValue(Landroidx/lifecycle/LiveData;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0017\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "org/catrobat/catroid/utils/LiveDataExtensionsKt$getOrAwaitValue$observer$1",
        "Landroidx/lifecycle/Observer;",
        "onChanged",
        "",
        "o",
        "(Ljava/lang/Object;)V",
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
.field final synthetic $data:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $this_getOrAwaitValue:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "$receiver"    # Landroidx/lifecycle/LiveData;
    .param p2, "$captured_local_variable$1"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p3, "$captured_local_variable$2"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$getOrAwaitValue$observer$1;->$this_getOrAwaitValue:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$getOrAwaitValue$observer$1;->$data:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$getOrAwaitValue$observer$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$getOrAwaitValue$observer$1;->$data:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$getOrAwaitValue$observer$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$getOrAwaitValue$observer$1;->$this_getOrAwaitValue:Landroidx/lifecycle/LiveData;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 75
    return-void
.end method
