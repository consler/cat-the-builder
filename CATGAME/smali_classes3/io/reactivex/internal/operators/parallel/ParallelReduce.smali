.class public final Lio/reactivex/internal/operators/parallel/ParallelReduce;
.super Lio/reactivex/parallel/ParallelFlowable;
.source "ParallelReduce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;
    }
.end annotation

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
.field final initialSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field

.field final reducer:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/parallel/ParallelFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/parallel/ParallelFlowable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "+TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduce;, "Lio/reactivex/internal/operators/parallel/ParallelReduce<TT;TR;>;"
    .local p1, "source":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<+TT;>;"
    .local p2, "initialSupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    .local p3, "reducer":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TR;-TT;TR;>;"
    invoke-direct {p0}, Lio/reactivex/parallel/ParallelFlowable;-><init>()V

    .line 43
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce;->source:Lio/reactivex/parallel/ParallelFlowable;

    .line 44
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce;->initialSupplier:Ljava/util/concurrent/Callable;

    .line 45
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce;->reducer:Lio/reactivex/functions/BiFunction;

    .line 46
    return-void
.end method


# virtual methods
.method public parallelism()I
    .locals 1

    .line 84
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduce;, "Lio/reactivex/internal/operators/parallel/ParallelReduce<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v0}, Lio/reactivex/parallel/ParallelFlowable;->parallelism()I

    move-result v0

    return v0
.end method

.method reportError([Lorg/reactivestreams/Subscriber;Ljava/lang/Throwable;)V
    .locals 4
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduce;, "Lio/reactivex/internal/operators/parallel/ParallelReduce<TT;TR;>;"
    .local p1, "subscribers":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<*>;"
    move-object v0, p1

    .local v0, "arr$":[Lorg/reactivestreams/Subscriber;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 78
    .local v3, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<*>;"
    invoke-static {p2, v3}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 77
    .end local v3    # "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "arr$":[Lorg/reactivestreams/Subscriber;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
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

    .line 50
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelReduce;, "Lio/reactivex/internal/operators/parallel/ParallelReduce<TT;TR;>;"
    .local p1, "subscribers":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<-TR;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/ParallelReduce;->validate([Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    return-void

    .line 54
    :cond_0
    array-length v0, p1

    .line 56
    .local v0, "n":I
    new-array v1, v0, [Lorg/reactivestreams/Subscriber;

    .line 58
    .local v1, "parents":[Lorg/reactivestreams/Subscriber;, "[Lorg/reactivestreams/Subscriber<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 63
    :try_start_0
    iget-object v4, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce;->initialSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The initialSupplier returned a null value"

    invoke-static {v4, v5}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .local v3, "initialValue":Ljava/lang/Object;, "TR;"
    nop

    .line 70
    new-instance v4, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;

    aget-object v5, p1, v2

    iget-object v6, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce;->reducer:Lio/reactivex/functions/BiFunction;

    invoke-direct {v4, v5, v3, v6}, Lio/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;Lio/reactivex/functions/BiFunction;)V

    aput-object v4, v1, v2

    .line 58
    .end local v3    # "initialValue":Ljava/lang/Object;, "TR;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v4

    .line 65
    .restart local v3    # "initialValue":Ljava/lang/Object;, "TR;"
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 66
    invoke-virtual {p0, p1, v4}, Lio/reactivex/internal/operators/parallel/ParallelReduce;->reportError([Lorg/reactivestreams/Subscriber;Ljava/lang/Throwable;)V

    .line 67
    return-void

    .line 73
    .end local v2    # "i":I
    .end local v3    # "initialValue":Ljava/lang/Object;, "TR;"
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelReduce;->source:Lio/reactivex/parallel/ParallelFlowable;

    invoke-virtual {v2, v1}, Lio/reactivex/parallel/ParallelFlowable;->subscribe([Lorg/reactivestreams/Subscriber;)V

    .line 74
    return-void
.end method
