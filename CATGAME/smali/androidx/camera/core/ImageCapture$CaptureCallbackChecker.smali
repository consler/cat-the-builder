.class final Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;
.super Landroidx/camera/core/impl/CameraCaptureCallback;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CaptureCallbackChecker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;,
        Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;
    }
.end annotation


# static fields
.field private static final NO_TIMEOUT:J


# instance fields
.field private final mCaptureResultListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1770
    invoke-direct {p0}, Landroidx/camera/core/impl/CameraCaptureCallback;-><init>()V

    .line 1774
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->mCaptureResultListeners:Ljava/util/Set;

    return-void
.end method

.method private deliverCaptureResultToListeners(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 5

    .line 1843
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->mCaptureResultListeners:Ljava/util/Set;

    monitor-enter v0

    .line 1845
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->mCaptureResultListeners:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;

    .line 1847
    invoke-interface {v3, p1}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;->onCaptureResult(Landroidx/camera/core/impl/CameraCaptureResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_1

    .line 1849
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1851
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 1855
    iget-object p1, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->mCaptureResultListeners:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1857
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method addListener(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;)V
    .locals 2

    .line 1862
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->mCaptureResultListeners:Ljava/util/Set;

    monitor-enter v0

    .line 1863
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->mCaptureResultListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1864
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method checkCaptureResult(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker<",
            "TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1791
    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->checkCaptureResult(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;JLjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method checkCaptureResult(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;JLjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker<",
            "TT;>;JTT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    if-eqz v2, :cond_0

    .line 1812
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_0
    move-wide v5, v0

    .line 1814
    new-instance v0, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-wide v7, p2

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;JJLjava/lang/Object;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 1809
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Invalid timeout value: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic lambda$checkCaptureResult$0$androidx-camera-core-ImageCapture$CaptureCallbackChecker(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;JJLjava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1816
    new-instance v9, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$1;-><init>(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultChecker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;JJLjava/lang/Object;)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->addListener(Landroidx/camera/core/ImageCapture$CaptureCallbackChecker$CaptureResultListener;)V

    const-string v1, "checkCaptureResult"

    return-object v1
.end method

.method public onCaptureCompleted(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0

    .line 1778
    invoke-direct {p0, p1}, Landroidx/camera/core/ImageCapture$CaptureCallbackChecker;->deliverCaptureResultToListeners(Landroidx/camera/core/impl/CameraCaptureResult;)V

    return-void
.end method
