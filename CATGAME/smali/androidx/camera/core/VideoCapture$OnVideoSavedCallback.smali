.class public interface abstract Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVideoSavedCallback"
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onVideoSaved(Ljava/io/File;)V
.end method
