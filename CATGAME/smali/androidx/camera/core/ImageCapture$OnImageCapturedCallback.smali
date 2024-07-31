.class public abstract Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnImageCapturedCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureSuccess(Landroidx/camera/core/ImageProxy;)V
    .locals 0
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;

    .line 1437
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 1438
    return-void
.end method

.method public onError(Landroidx/camera/core/ImageCaptureException;)V
    .locals 0
    .param p1, "exception"    # Landroidx/camera/core/ImageCaptureException;

    .line 1447
    return-void
.end method
