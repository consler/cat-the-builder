.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageAnalysis$SK4XUin3LEuOy83vccLKZvMIwq8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/ImageAnalysis$Analyzer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageAnalysis;

.field public final synthetic f$1:Landroidx/camera/core/ImageAnalysis$Analyzer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageAnalysis;Landroidx/camera/core/ImageAnalysis$Analyzer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysis$SK4XUin3LEuOy83vccLKZvMIwq8;->f$0:Landroidx/camera/core/ImageAnalysis;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysis$SK4XUin3LEuOy83vccLKZvMIwq8;->f$1:Landroidx/camera/core/ImageAnalysis$Analyzer;

    return-void
.end method


# virtual methods
.method public final analyze(Landroidx/camera/core/ImageProxy;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysis$SK4XUin3LEuOy83vccLKZvMIwq8;->f$0:Landroidx/camera/core/ImageAnalysis;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysis$SK4XUin3LEuOy83vccLKZvMIwq8;->f$1:Landroidx/camera/core/ImageAnalysis$Analyzer;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/ImageAnalysis;->lambda$setAnalyzer$1$ImageAnalysis(Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/camera/core/ImageProxy;)V

    return-void
.end method
