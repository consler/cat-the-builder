.class final Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableCombineLatest.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x76e7117251786db1L


# instance fields
.field active:I

.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final combiner:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field complete:I

.field final delayError:Z

.field volatile done:Z

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final latest:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 90
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 99
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->actual:Lio/reactivex/Observer;

    .line 100
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->combiner:Lio/reactivex/functions/Function;

    .line 101
    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->delayError:Z

    .line 102
    new-array p1, p3, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    .line 103
    new-array p1, p3, [Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    .line 104
    new-instance p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {p1, p4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    return-void
.end method


# virtual methods
.method cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "*>;)V"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 141
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelSources()V

    return-void
.end method

.method cancelSources()V
    .locals 4

    .line 145
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 146
    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method checkTerminated(ZZLio/reactivex/Observer;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/Observer<",
            "*>;",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "*>;Z)Z"
        }
    .end annotation

    .line 258
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0, p4}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p5, :cond_2

    if-eqz p2, :cond_4

    .line 265
    invoke-virtual {p0, p4}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 266
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 268
    invoke-interface {p3, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-interface {p3}, Lio/reactivex/Observer;->onComplete()V

    :goto_0
    return v1

    .line 275
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 277
    invoke-virtual {p0, p4}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 278
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 282
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 283
    invoke-interface {p3}, Lio/reactivex/Observer;->onComplete()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "*>;)V"
        }
    .end annotation

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return-void

    :catchall_0
    move-exception p1

    .line 153
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method combine(Ljava/lang/Object;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    aget-object v0, v0, p2

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    if-eqz v1, :cond_0

    .line 167
    monitor-exit p0

    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    array-length v2, v1

    .line 170
    aget-object v3, v1, p2

    .line 171
    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->active:I

    if-nez v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 173
    iput v4, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->active:I

    .line 175
    :cond_1
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->complete:I

    if-nez p1, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 177
    iput v5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->complete:I

    goto :goto_0

    .line 179
    :cond_2
    aput-object p1, v1, p2

    :goto_0
    const/4 p2, 0x0

    const/4 v6, 0x1

    if-ne v4, v2, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, p2

    :goto_1
    if-eq v5, v2, :cond_4

    if-nez p1, :cond_5

    if-nez v3, :cond_5

    :cond_4
    move p2, v6

    :cond_5
    if-nez p2, :cond_7

    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    .line 187
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-nez p1, :cond_8

    .line 189
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p2}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 190
    iput-boolean v6, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    goto :goto_2

    .line 193
    :cond_7
    iput-boolean v6, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    .line 195
    :cond_8
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_9

    if-eqz p1, :cond_9

    return-void

    .line 199
    :cond_9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->drain()V

    return-void

    :catchall_0
    move-exception p1

    .line 195
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dispose()V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    .line 127
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelSources()V

    .line 128
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    :cond_0
    return-void
.end method

.method drain()V
    .locals 12

    .line 202
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 207
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->actual:Lio/reactivex/Observer;

    .line 208
    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->delayError:Z

    const/4 v9, 0x1

    move v10, v9

    .line 213
    :cond_1
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v3

    move-object v1, p0

    move-object v4, v7

    move-object v5, v0

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->checkTerminated(ZZLio/reactivex/Observer;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 219
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    .line 221
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    if-nez v1, :cond_3

    move v11, v9

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move v11, v1

    :goto_1
    move-object v1, p0

    move v3, v11

    move-object v4, v7

    move-object v5, v0

    move v6, v8

    .line 224
    invoke-virtual/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->checkTerminated(ZZLio/reactivex/Observer;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    if-eqz v11, :cond_5

    neg-int v1, v10

    .line 249
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->addAndGet(I)I

    move-result v10

    if-nez v10, :cond_1

    return-void

    .line 233
    :cond_5
    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 237
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->combiner:Lio/reactivex/functions/Function;

    invoke-interface {v2, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The combiner returned a null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-interface {v7, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 239
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 240
    iput-boolean v9, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    .line 241
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 242
    invoke-interface {v7, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    return v0
.end method

.method onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public subscribe([Lio/reactivex/ObservableSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    .line 109
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 111
    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    invoke-direct {v4, p0, v3}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;I)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->lazySet(I)V

    .line 114
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v3, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :goto_1
    if-ge v2, v1, :cond_2

    .line 116
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    if-eqz v3, :cond_1

    goto :goto_2

    .line 119
    :cond_1
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
