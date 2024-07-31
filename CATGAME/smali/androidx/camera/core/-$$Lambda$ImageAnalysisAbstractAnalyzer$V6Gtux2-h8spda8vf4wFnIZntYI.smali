.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$V6Gtux2-h8spda8vf4wFnIZntYI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

.field public final synthetic f$1:Landroidx/camera/core/ImageProxy;

.field public final synthetic f$2:Landroidx/camera/core/ImageAnalysis$Analyzer;

.field public final synthetic f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$V6Gtux2-h8spda8vf4wFnIZntYI;->f$0:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$V6Gtux2-h8spda8vf4wFnIZntYI;->f$1:Landroidx/camera/core/ImageProxy;

    iput-object p3, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$V6Gtux2-h8spda8vf4wFnIZntYI;->f$2:Landroidx/camera/core/ImageAnalysis$Analyzer;

    iput-object p4, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$V6Gtux2-h8spda8vf4wFnIZntYI;->f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$V6Gtux2-h8spda8vf4wFnIZntYI;->f$0:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$V6Gtux2-h8spda8vf4wFnIZntYI;->f$1:Landroidx/camera/core/ImageProxy;

    iget-object v2, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$V6Gtux2-h8spda8vf4wFnIZntYI;->f$2:Landroidx/camera/core/ImageAnalysis$Analyzer;

    iget-object v3, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$V6Gtux2-h8spda8vf4wFnIZntYI;->f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->lambda$analyzeImage$0$ImageAnalysisAbstractAnalyzer(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
