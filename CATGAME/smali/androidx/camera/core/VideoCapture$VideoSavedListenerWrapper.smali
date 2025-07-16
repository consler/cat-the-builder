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

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 994
    iput-object p2, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->mOnVideoSavedCallback:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    return-void
.end method


# virtual methods
.method synthetic lambda$onError$1$androidx-camera-core-VideoCapture$VideoSavedListenerWrapper(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1011
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->mOnVideoSavedCallback:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$onVideoSaved$0$androidx-camera-core-VideoCapture$VideoSavedListenerWrapper(Ljava/io/File;)V
    .locals 1

    .line 1000
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->mOnVideoSavedCallback:Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onVideoSaved(Ljava/io/File;)V

    return-void
.end method

.method public onError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1010
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "VideoCapture"

    const-string p2, "Unable to post to the supplied executor."

    .line 1013
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onVideoSaved(Ljava/io/File;)V
    .locals 2

    .line 1000
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "VideoCapture"

    const-string v0, "Unable to post to the supplied executor."

    .line 1002
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
