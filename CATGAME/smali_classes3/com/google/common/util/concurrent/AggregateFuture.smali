.class abstract Lcom/google/common/util/concurrent/AggregateFuture;
.super Lcom/google/common/util/concurrent/AggregateFutureState;
.source "AggregateFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AggregateFutureState<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final allMustSucceed:Z

.field private final collectsValues:Z

.field private futures:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;ZZ)V
    .locals 1
    .param p2, "allMustSucceed"    # Z
    .param p3, "collectsValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p1, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFutureState;-><init>(I)V

    .line 65
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 66
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/AggregateFuture;->allMustSucceed:Z

    .line 67
    iput-boolean p3, p0, Lcom/google/common/util/concurrent/AggregateFuture;->collectsValues:Z

    .line 68
    return-void
.end method

.method static synthetic access$002(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)Lcom/google/common/collect/ImmutableCollection;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture;
    .param p1, "x1"    # Lcom/google/common/collect/ImmutableCollection;

    .line 42
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/AggregateFuture;ILjava/util/concurrent/Future;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/concurrent/Future;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/AggregateFuture;->collectValueFromNonCancelledFuture(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AggregateFuture;
    .param p1, "x1"    # Lcom/google/common/collect/ImmutableCollection;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->decrementCountAndMaybeComplete(Lcom/google/common/collect/ImmutableCollection;)V

    return-void
.end method

.method private static addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .line 331
    .local p0, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 332
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 333
    .local v0, "firstTimeSeen":Z
    if-nez v0, :cond_0

    .line 340
    const/4 v1, 0x0

    return v1

    .line 331
    .end local v0    # "firstTimeSeen":Z
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 343
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private collectValueFromNonCancelledFuture(ILjava/util/concurrent/Future;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    .line 249
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TInputT;>;"
    :try_start_0
    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->collectOneValue(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    .line 253
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->handleException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 250
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->handleException(Ljava/lang/Throwable;)V

    .line 254
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_0
    nop

    .line 255
    :goto_1
    return-void
.end method

.method private decrementCountAndMaybeComplete(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 3
    .param p1    # Lcom/google/common/collect/ImmutableCollection;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    .line 261
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p1, "futuresIfNeedToCollectAtCompletion":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Ljava/util/concurrent/Future<+TInputT;>;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->decrementRemainingAndGet()I

    move-result v0

    .line 262
    .local v0, "newRemaining":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 263
    if-nez v0, :cond_1

    .line 264
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->processCompleted(Lcom/google/common/collect/ImmutableCollection;)V

    .line 266
    :cond_1
    return-void
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 192
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->allMustSucceed:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    .line 198
    .local v0, "completedWithFailure":Z
    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->getOrInitSeenExceptions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v1

    .line 202
    .local v1, "firstTimeSeeingThisException":Z
    if-eqz v1, :cond_0

    .line 203
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture;->log(Ljava/lang/Throwable;)V

    .line 204
    return-void

    .line 213
    .end local v0    # "completedWithFailure":Z
    .end local v1    # "firstTimeSeeingThisException":Z
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 221
    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture;->log(Ljava/lang/Throwable;)V

    .line 223
    :cond_1
    return-void
.end method

.method private static log(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 226
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    const-string v0, "Input Future failed with Error"

    goto :goto_0

    :cond_0
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    .line 230
    .local v0, "message":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    return-void
.end method

.method private processCompleted(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 4
    .param p1    # Lcom/google/common/collect/ImmutableCollection;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    .line 272
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p1, "futuresIfNeedToCollectAtCompletion":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Ljava/util/concurrent/Future<+TInputT;>;>;"
    if-eqz p1, :cond_1

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "i":I
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 275
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TInputT;>;"
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 276
    invoke-direct {p0, v0, v2}, Lcom/google/common/util/concurrent/AggregateFuture;->collectValueFromNonCancelledFuture(ILjava/util/concurrent/Future;)V

    .line 278
    :cond_0
    nop

    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TInputT;>;"
    add-int/lit8 v0, v0, 0x1

    .line 279
    goto :goto_0

    .line 281
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->clearSeenExceptions()V

    .line 282
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->handleAllCompleted()V

    .line 290
    sget-object v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->ALL_INPUT_FUTURES_PROCESSED:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V

    .line 291
    return-void
.end method


# virtual methods
.method final addInitialException(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    .local p1, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->tryInternalFastPathGetFailure()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->addCausalChain(Ljava/util/Set;Ljava/lang/Throwable;)Z

    .line 240
    :cond_0
    return-void
.end method

.method protected final afterDone()V
    .locals 4

    .line 72
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AggregateFutureState;->afterDone()V

    .line 74
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 75
    .local v0, "localFutures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Ljava/util/concurrent/Future<*>;>;"
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->OUTPUT_FUTURE_DONE:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->isCancelled()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->wasInterrupted()Z

    move-result v1

    .line 79
    .local v1, "wasInterrupted":Z
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 80
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v3, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 81
    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_1

    .line 87
    .end local v1    # "wasInterrupted":Z
    :cond_1
    return-void
.end method

.method abstract collectOneValue(ILjava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method

.method abstract handleAllCompleted()V
.end method

.method final init()V
    .locals 6

    .line 107
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->handleAllCompleted()V

    .line 109
    return-void

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->allMustSucceed:Z

    if-eqz v0, :cond_2

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "i":I
    iget-object v1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 127
    .local v2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    add-int/lit8 v3, v0, 0x1

    .line 128
    .local v0, "index":I
    .local v3, "i":I
    new-instance v4, Lcom/google/common/util/concurrent/AggregateFuture$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/google/common/util/concurrent/AggregateFuture$1;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    .line 151
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 128
    invoke-interface {v2, v4, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 152
    .end local v0    # "index":I
    .end local v2    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    move v0, v3

    goto :goto_0

    .line 153
    .end local v3    # "i":I
    :cond_1
    goto :goto_3

    .line 170
    :cond_2
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->collectsValues:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 172
    .local v0, "localFutures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Ljava/util/concurrent/Future<+TInputT;>;>;"
    :goto_1
    new-instance v1, Lcom/google/common/util/concurrent/AggregateFuture$2;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture$2;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;)V

    .line 179
    .local v1, "listener":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 180
    .local v3, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 181
    .end local v3    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TInputT;>;"
    goto :goto_2

    .line 183
    .end local v0    # "localFutures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Ljava/util/concurrent/Future<+TInputT;>;>;"
    .end local v1    # "listener":Ljava/lang/Runnable;
    :cond_4
    :goto_3
    return-void
.end method

.method protected final pendingToString()Ljava/lang/String;
    .locals 3

    .line 91
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 92
    .local v0, "localFutures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Ljava/util/concurrent/Future<*>;>;"
    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "futures="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    :cond_0
    invoke-super {p0}, Lcom/google/common/util/concurrent/AggregateFutureState;->pendingToString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method releaseResources(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V
    .locals 1
    .param p1, "reason"    # Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    .line 306
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFuture;, "Lcom/google/common/util/concurrent/AggregateFuture<TInputT;TOutputT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 314
    return-void
.end method
