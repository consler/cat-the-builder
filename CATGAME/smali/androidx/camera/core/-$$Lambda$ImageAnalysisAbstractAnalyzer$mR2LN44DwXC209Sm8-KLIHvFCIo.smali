.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$mR2LN44DwXC209Sm8-KLIHvFCIo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;

.field public final synthetic f$2:Landroidx/camera/core/ImageProxy;

.field public final synthetic f$3:Landroidx/camera/core/ImageAnalysis$Analyzer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageAnalysis$Analyzer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$mR2LN44DwXC209Sm8-KLIHvFCIo;->f$0:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$mR2LN44DwXC209Sm8-KLIHvFCIo;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$mR2LN44DwXC209Sm8-KLIHvFCIo;->f$2:Landroidx/camera/core/ImageProxy;

    iput-object p4, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$mR2LN44DwXC209Sm8-KLIHvFCIo;->f$3:Landroidx/camera/core/ImageAnalysis$Analyzer;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$mR2LN44DwXC209Sm8-KLIHvFCIo;->f$0:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$mR2LN44DwXC209Sm8-KLIHvFCIo;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$mR2LN44DwXC209Sm8-KLIHvFCIo;->f$2:Landroidx/camera/core/ImageProxy;

    iget-object v3, p0, Landroidx/camera/core/-$$Lambda$ImageAnalysisAbstractAnalyzer$mR2LN44DwXC209Sm8-KLIHvFCIo;->f$3:Landroidx/camera/core/ImageAnalysis$Analyzer;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->lambda$analyzeImage$1$ImageAnalysisAbstractAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
