.class Landroidx/camera/core/ProcessingImageReader$2;
.super Ljava/lang/Object;
.source "ProcessingImageReader.java"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ProcessingImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/ProcessingImageReader;


# direct methods
.method constructor <init>(Landroidx/camera/core/ProcessingImageReader;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/core/ProcessingImageReader;

    .line 68
    iput-object p1, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onImageAvailable$0$ProcessingImageReader$2(Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 85
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method

.method public onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 4
    .param p1, "reader"    # Landroidx/camera/core/impl/ImageReaderProxy;

    .line 74
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    iget-object v0, v0, Landroidx/camera/core/ProcessingImageReader;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    iget-object v1, v1, Landroidx/camera/core/ProcessingImageReader;->mListener:Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;

    .line 76
    .local v1, "listener":Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;
    iget-object v2, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    iget-object v2, v2, Landroidx/camera/core/ProcessingImageReader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 79
    .local v2, "executor":Ljava/util/concurrent/Executor;
    iget-object v3, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    iget-object v3, v3, Landroidx/camera/core/ProcessingImageReader;->mSettableImageProxyBundle:Landroidx/camera/core/SettableImageProxyBundle;

    invoke-virtual {v3}, Landroidx/camera/core/SettableImageProxyBundle;->reset()V

    .line 80
    iget-object v3, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    invoke-virtual {v3}, Landroidx/camera/core/ProcessingImageReader;->setupSettableImageProxyBundleCallbacks()V

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-eqz v1, :cond_1

    .line 83
    if-eqz v2, :cond_0

    .line 84
    new-instance v0, Landroidx/camera/core/-$$Lambda$ProcessingImageReader$2$Absc6rRf6C4HWC5BIoaUAtQpadI;

    invoke-direct {v0, p0, v1}, Landroidx/camera/core/-$$Lambda$ProcessingImageReader$2$Absc6rRf6C4HWC5BIoaUAtQpadI;-><init>(Landroidx/camera/core/ProcessingImageReader$2;Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/ProcessingImageReader$2;->this$0:Landroidx/camera/core/ProcessingImageReader;

    invoke-interface {v1, v0}, Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;->onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 81
    .end local v1    # "listener":Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
