.class public final Lio/reactivex/internal/operators/parallel/ParallelConcatMap;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "ParallelConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/ParallelFlowable<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final errorMode:Lio/reactivex/internal/util/ErrorMode;

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field final source:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/ErrorMode;)V
    .locals 1
    .param p3, "prefetch"    # I
    .param p4, "errorMode"    # Lio/reactivex/internal/util/ErrorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lorg/reactivestreams/Publisher<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelConcatMap;, "Lio/reactivex/internal/operators/parallel/ParallelConcatMap<TT;TR;>;"
    .local p1, "source":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lorg/reactivestreams/Publisher<+TR;>;>;"
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->source:Lio/reactivex/parallel/ParallelFlowable;

    .line 45
    const-string v0, "mapper"

    invoke-static {p2, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/functions/Function;

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->mapper:Lio/reactivex/functions/Function;

    .line 46
    iput p3, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->prefetch:I

    .line 47
    const-string v0, "errorMode"

    invoke-static {p4, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/util/ErrorMode;

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    .line 48
    return-void
.end method


# virtual methods
.method public parallelism()I
    .locals 1

    .line 52
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelConcatMap;, "Lio/reactivex/internal/operators/parallel/ParallelConcatMap<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result v0

    return v0
.end method

.method public subscribe([Lorg/reactivestreams/Subscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelConcatMap;, "Lio/reactivex/internal/operators/parallel/ParallelConcatMap<TT;TR;>;"
    .local p1, "subscribers":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TR;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    array-length v0, p1

    .line 64
    .local v0, "n":I
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    .line 66
    .local v1, "parents":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 67
    aget-object v3, p1, v2

    iget-object v4, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->mapper:Lio/reactivex/functions/Function;

    iget v5, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->prefetch:I

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->errorMode:Lio/reactivex/internal/util/ErrorMode;

    invoke-static {v3, v4, v5, v6}, Lio/reactivex/internal/operators/flowable/FlowableConcatMap;->subscribe(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/ErrorMode;)Lorg/reactivestreams/Subscriber;

    move-result-object v3

    aput-object v3, v1, v2

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelConcatMap;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v2, v1}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    .line 71
    return-void
.end method
