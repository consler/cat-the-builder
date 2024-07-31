.class final Landroidx/camera/core/SettableImageProxyBundle;
.super Ljava/lang/Object;
.source "SettableImageProxyBundle.java"

# interfaces
.implements Landroidx/camera/core/impl/ImageProxyBundle;


# instance fields
.field private final mCaptureIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field final mCompleters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Landroidx/camera/core/ImageProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFutureResults:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/ImageProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field private final mOwnedImageProxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "captureIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCompleters:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mFutureResults:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mOwnedImageProxies:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mClosed:Z

    .line 61
    iput-object p1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCaptureIdList:Ljava/util/List;

    .line 62
    invoke-direct {p0}, Landroidx/camera/core/SettableImageProxyBundle;->setup()V

    .line 63
    return-void
.end method

.method private setup()V
    .locals 5

    .line 154
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCaptureIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 156
    .local v2, "captureId":I
    new-instance v3, Landroidx/camera/core/SettableImageProxyBundle$1;

    invoke-direct {v3, p0, v2}, Landroidx/camera/core/SettableImageProxyBundle$1;-><init>(Landroidx/camera/core/SettableImageProxyBundle;I)V

    invoke-static {v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 170
    .local v3, "futureResult":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/ImageProxy;>;"
    iget-object v4, p0, Landroidx/camera/core/SettableImageProxyBundle;->mFutureResults:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    .end local v2    # "captureId":I
    .end local v3    # "futureResult":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/ImageProxy;>;"
    goto :goto_0

    .line 172
    :cond_0
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addImageProxy(Landroidx/camera/core/ImageProxy;)V
    .locals 6
    .param p1, "imageProxy"    # Landroidx/camera/core/ImageProxy;

    .line 94
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mClosed:Z

    if-eqz v1, :cond_0

    .line 96
    monitor-exit v0

    return-void

    .line 99
    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 100
    .local v1, "captureId":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 106
    iget-object v2, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCompleters:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 107
    .local v2, "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Landroidx/camera/core/ImageProxy;>;"
    if-eqz v2, :cond_1

    .line 108
    iget-object v3, p0, Landroidx/camera/core/SettableImageProxyBundle;->mOwnedImageProxies:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v2, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 114
    .end local v1    # "captureId":Ljava/lang/Integer;
    .end local v2    # "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Landroidx/camera/core/ImageProxy;>;"
    monitor-exit v0

    .line 115
    return-void

    .line 111
    .restart local v1    # "captureId":Ljava/lang/Integer;
    .restart local v2    # "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Landroidx/camera/core/ImageProxy;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageProxyBundle does not contain this id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "imageProxy":Landroidx/camera/core/ImageProxy;
    throw v3

    .line 101
    .end local v2    # "completer":Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;, "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<Landroidx/camera/core/ImageProxy;>;"
    .restart local p1    # "imageProxy":Landroidx/camera/core/ImageProxy;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "CaptureId is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "imageProxy":Landroidx/camera/core/ImageProxy;
    throw v2

    .line 114
    .end local v1    # "captureId":Ljava/lang/Integer;
    .restart local p1    # "imageProxy":Landroidx/camera/core/ImageProxy;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method close()V
    .locals 3

    .line 121
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mClosed:Z

    if-eqz v1, :cond_0

    .line 123
    monitor-exit v0

    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mOwnedImageProxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/ImageProxy;

    .line 126
    .local v2, "imageProxy":Landroidx/camera/core/ImageProxy;
    invoke-interface {v2}, Landroidx/camera/core/ImageProxy;->close()V

    .line 127
    .end local v2    # "imageProxy":Landroidx/camera/core/ImageProxy;
    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mOwnedImageProxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 129
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mFutureResults:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 130
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCompleters:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mClosed:Z

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCaptureIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCaptureIdList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImageProxy(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p1, "captureId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mClosed:Z

    if-nez v1, :cond_1

    .line 74
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mFutureResults:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 75
    .local v1, "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/ImageProxy;>;"
    if-eqz v1, :cond_0

    .line 80
    monitor-exit v0

    return-object v1

    .line 76
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageProxyBundle does not contain this id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "captureId":I
    throw v2

    .line 70
    .end local v1    # "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/core/ImageProxy;>;"
    .restart local p1    # "captureId":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ImageProxyBundle already closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "captureId":I
    throw v1

    .line 81
    .restart local p1    # "captureId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reset()V
    .locals 3

    .line 139
    iget-object v0, p0, Landroidx/camera/core/SettableImageProxyBundle;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mClosed:Z

    if-eqz v1, :cond_0

    .line 141
    monitor-exit v0

    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mOwnedImageProxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/ImageProxy;

    .line 144
    .local v2, "imageProxy":Landroidx/camera/core/ImageProxy;
    invoke-interface {v2}, Landroidx/camera/core/ImageProxy;->close()V

    .line 145
    .end local v2    # "imageProxy":Landroidx/camera/core/ImageProxy;
    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mOwnedImageProxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 147
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mFutureResults:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 148
    iget-object v1, p0, Landroidx/camera/core/SettableImageProxyBundle;->mCompleters:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 149
    invoke-direct {p0}, Landroidx/camera/core/SettableImageProxyBundle;->setup()V

    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
