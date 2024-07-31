.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$wl1PsdoNzau59EdJhZcEGOmtTgk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$wl1PsdoNzau59EdJhZcEGOmtTgk;->f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$wl1PsdoNzau59EdJhZcEGOmtTgk;->f$1:Ljava/util/List;

    iput-wide p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$wl1PsdoNzau59EdJhZcEGOmtTgk;->f$2:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$wl1PsdoNzau59EdJhZcEGOmtTgk;->f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$wl1PsdoNzau59EdJhZcEGOmtTgk;->f$1:Ljava/util/List;

    iget-wide v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$wl1PsdoNzau59EdJhZcEGOmtTgk;->f$2:J

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->lambda$startWithDeferrableSurface$3$SynchronizedCaptureSessionImpl(Ljava/util/List;JLjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
