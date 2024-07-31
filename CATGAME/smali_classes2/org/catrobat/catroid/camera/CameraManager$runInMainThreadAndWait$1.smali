.class final Lorg/catrobat/catroid/camera/CameraManager$runInMainThreadAndWait$1;
.super Ljava/lang/Object;
.source "CameraManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/camera/CameraManager;->runInMainThreadAndWait(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $executionLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/camera/CameraManager$runInMainThreadAndWait$1;->$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/catrobat/catroid/camera/CameraManager$runInMainThreadAndWait$1;->$executionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager$runInMainThreadAndWait$1;->$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 275
    iget-object v0, p0, Lorg/catrobat/catroid/camera/CameraManager$runInMainThreadAndWait$1;->$executionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 276
    return-void
.end method
