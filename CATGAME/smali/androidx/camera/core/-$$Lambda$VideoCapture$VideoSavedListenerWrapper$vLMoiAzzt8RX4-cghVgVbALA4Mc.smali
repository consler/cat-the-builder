.class public final synthetic Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$vLMoiAzzt8RX4-cghVgVbALA4Mc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$vLMoiAzzt8RX4-cghVgVbALA4Mc;->f$0:Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$vLMoiAzzt8RX4-cghVgVbALA4Mc;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$vLMoiAzzt8RX4-cghVgVbALA4Mc;->f$0:Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$VideoCapture$VideoSavedListenerWrapper$vLMoiAzzt8RX4-cghVgVbALA4Mc;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;->lambda$onVideoSaved$0$VideoCapture$VideoSavedListenerWrapper(Ljava/io/File;)V

    return-void
.end method
