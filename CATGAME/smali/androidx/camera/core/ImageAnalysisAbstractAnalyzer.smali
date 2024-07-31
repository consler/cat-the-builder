.class abstract Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;
.super Ljava/lang/Object;
.source "ImageAnalysisAbstractAnalyzer.java"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# instance fields
.field private final mAnalyzerLock:Ljava/lang/Object;

.field private mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mRelativeRotation:I

.field private mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

.field private mUserExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mAnalyzerLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    return-void
.end method


# virtual methods
.method analyzeImage(Landroidx/camera/core/ImageProxy;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageProxy;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mAnalyzerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mUserExecutor:Ljava/util/concurrent/Executor;

    .line 71
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 72
    .local v2, "analyzer":Landroidx/camera/core/ImageAnalysis$Analyzer;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 78
    new-instance v0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$mR2LN44DwXC209Sm8-KLIHvFCIo;

    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$mR2LN44DwXC209Sm8-KLIHvFCIo;-><init>(Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    goto :goto_0

    .line 97
    .end local v0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    :cond_0
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    const-string v3, "No analyzer or executor currently set."

    invoke-direct {v0, v3}, Landroidx/core/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 101
    .restart local v0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    :goto_0
    return-object v0

    .line 72
    .end local v0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Void;>;"
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "analyzer":Landroidx/camera/core/ImageAnalysis$Analyzer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method close()V
    .locals 2

    .line 127
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    return-void
.end method

.method isClosed()Z
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$analyzeImage$0$ImageAnalysisAbstractAnalyzer(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 4
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;
    .param p2, "analyzer"    # Landroidx/camera/core/ImageAnalysis$Analyzer;
    .param p3, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 81
    invoke-virtual {p0}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    nop

    .line 83
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/ImageInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 84
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getTimestamp()J

    move-result-wide v1

    iget v3, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mRelativeRotation:I

    .line 82
    invoke-static {v0, v1, v2, v3}, Landroidx/camera/core/ImmutableImageInfo;->create(Ljava/lang/Object;JI)Landroidx/camera/core/ImageInfo;

    move-result-object v0

    .line 87
    .local v0, "imageInfo":Landroidx/camera/core/ImageInfo;
    new-instance v1, Landroidx/camera/core/SettableImageProxy;

    invoke-direct {v1, p1, v0}, Landroidx/camera/core/SettableImageProxy;-><init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageInfo;)V

    invoke-interface {p2, v1}, Landroidx/camera/core/ImageAnalysis$Analyzer;->analyze(Landroidx/camera/core/ImageProxy;)V

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 89
    .end local v0    # "imageInfo":Landroidx/camera/core/ImageInfo;
    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Landroidx/core/os/OperationCanceledException;

    const-string v1, "Closed before analysis"

    invoke-direct {v0, v1}, Landroidx/core/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    .line 93
    :goto_0
    return-void
.end method

.method public synthetic lambda$analyzeImage$1$ImageAnalysisAbstractAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "imageProxy"    # Landroidx/camera/core/ImageProxy;
    .param p3, "analyzer"    # Landroidx/camera/core/ImageAnalysis$Analyzer;
    .param p4, "completer"    # Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    new-instance v0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$V6Gtux2-h8spda8vf4wFnIZntYI;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$V6Gtux2-h8spda8vf4wFnIZntYI;-><init>(Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 94
    const-string v0, "analyzeImage"

    return-object v0
.end method

.method open()V
    .locals 2

    .line 120
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    return-void
.end method

.method setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V
    .locals 2
    .param p1, "userExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "subscribedAnalyzer"    # Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 110
    iget-object v0, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mAnalyzerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iput-object p2, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mSubscribedAnalyzer:Landroidx/camera/core/ImageAnalysis$Analyzer;

    .line 112
    iput-object p1, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mUserExecutor:Ljava/util/concurrent/Executor;

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setRelativeRotation(I)V
    .locals 0
    .param p1, "relativeRotation"    # I

    .line 105
    iput p1, p0, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->mRelativeRotation:I

    .line 106
    return-void
.end method
