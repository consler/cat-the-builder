.class final Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoSavedListenerWrapper"
.end annotation


# instance fields
.field mExecutor:Ljava/util/concurrent/Executor;

.field mOnVideoSavedCallback:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "onVideoSavedCallback"    # Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 994
    iput-object p2, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->mOnVideoSavedCallback:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    .line 995
    return-void
.end method


# virtual methods
.method public synthetic lambda$onError$1$VideoCapture$VideoSavedListenerWrapper(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "videoCaptureError"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 1011
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->mOnVideoSavedCallback:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$onVideoSaved$0$VideoCapture$VideoSavedListenerWrapper(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 1000
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->mOnVideoSavedCallback:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onVideoSaved(Ljava/io/File;)V

    return-void
.end method

.method public onError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "videoCaptureError"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 1010
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$ZG5otqrkESy2VwQvd4RLRJQ1fFY;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$ZG5otqrkESy2VwQvd4RLRJQ1fFY;-><init>(Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    goto :goto_0

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "VideoCapture"

    const-string v2, "Unable to post to the supplied executor."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method public onVideoSaved(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .line 1000
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$vLMoiAzzt8RX4-cghVgVbALA4Mc;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$vLMoiAzzt8RX4-cghVgVbALA4Mc;-><init>(Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    goto :goto_0

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "VideoCapture"

    const-string v2, "Unable to post to the supplied executor."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method
