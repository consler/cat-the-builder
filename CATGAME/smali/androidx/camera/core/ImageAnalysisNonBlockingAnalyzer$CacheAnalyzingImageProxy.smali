.class Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy;
.super Landroidx/camera/core/ForwardingImageProxy;
.source "ImageAnalysisNonBlockingAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheAnalyzingImageProxy"
.end annotation


# instance fields
.field private mClosed:Z

.field mNonBlockingAnalyzerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Landroidx/camera/core/ForwardingImageProxy;-><init>(Landroidx/camera/core/ImageProxy;)V

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy;->mClosed:Z

    .line 171
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy;->mNonBlockingAnalyzerWeakReference:Ljava/lang/ref/WeakReference;

    .line 173
    new-instance p1, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy;)V

    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy;->addOnImageCloseListener(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    return-void
.end method


# virtual methods
.method isClosed()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy;->mClosed:Z

    return v0
.end method

.method synthetic lambda$new$0$androidx-camera-core-ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy(Landroidx/camera/core/ImageProxy;)V
    .locals 2

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy;->mClosed:Z

    .line 175
    iget-object p1, p0, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy;->mNonBlockingAnalyzerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;

    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p1, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
