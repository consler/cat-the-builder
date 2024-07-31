.class Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "IntolerantThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ThreadPoolExecutor;"
    }
.end annotation


# instance fields
.field protected accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/concurrent/AccumulateCsvResults<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final orderedResults:Z

.field protected final resultQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private terminalException:Ljava/lang/Throwable;

.field private thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;"
        }
    .end annotation
.end field

.field protected final thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 8
    .param p1, "orderedResults"    # Z

    .line 94
    .local p0, "this":Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;, "Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor<TT;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 95
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 94
    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 64
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->resultQueue:Ljava/util/concurrent/BlockingQueue;

    .line 67
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 73
    iput-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 76
    iput-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    .line 97
    iput-boolean p1, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->orderedResults:Z

    .line 98
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 196
    .local p0, "this":Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;, "Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor<TT;>;"
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 197
    if-eqz p2, :cond_1

    .line 198
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->terminalException:Ljava/lang/Throwable;

    goto :goto_0

    .line 205
    :cond_0
    iput-object p2, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->terminalException:Ljava/lang/Throwable;

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 209
    :cond_1
    return-void
.end method

.method public complete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;, "Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor<TT;>;"
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 136
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2, v0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 137
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    if-eqz v0, :cond_0

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->setMustStop(Z)V

    .line 139
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->join()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->terminalException:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 147
    return-void

    .line 145
    :cond_1
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0
.end method

.method public getCapturedExceptions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;, "Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    .line 174
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/opencsv/bean/concurrent/-$$Lambda$vC9r0HnB37W3ULxC7UGPs1ZnSNs;->INSTANCE:Lcom/opencsv/bean/concurrent/-$$Lambda$vC9r0HnB37W3ULxC7UGPs1ZnSNs;

    .line 175
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/opencsv/bean/concurrent/-$$Lambda$R62zTd5xPRPm0LlXjlbpAgYuRrk;->INSTANCE:Lcom/opencsv/bean/concurrent/-$$Lambda$R62zTd5xPRPm0LlXjlbpAgYuRrk;

    .line 176
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 177
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 178
    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    :goto_0
    return-object v0
.end method

.method public getTerminalException()Ljava/lang/Throwable;
    .locals 1

    .line 218
    .local p0, "this":Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;, "Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->terminalException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public prepare()V
    .locals 5

    .line 104
    .local p0, "this":Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;, "Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor<TT;>;"
    invoke-virtual {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->prestartAllCoreThreads()I

    .line 111
    iget-boolean v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->orderedResults:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 116
    new-instance v0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->resultQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v3, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    iget-object v4, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    .line 119
    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->start()V

    .line 121
    :cond_0
    return-void
.end method

.method public resultStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;, "Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->resultantBeansMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->resultQueue:Ljava/util/concurrent/BlockingQueue;

    .line 159
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/opencsv/bean/concurrent/-$$Lambda$vC9r0HnB37W3ULxC7UGPs1ZnSNs;->INSTANCE:Lcom/opencsv/bean/concurrent/-$$Lambda$vC9r0HnB37W3ULxC7UGPs1ZnSNs;

    .line 160
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/opencsv/bean/concurrent/-$$Lambda$Mp4fKuY4NRZXcZYfa122ZRG55XQ;->INSTANCE:Lcom/opencsv/bean/concurrent/-$$Lambda$Mp4fKuY4NRZXcZYfa122ZRG55XQ;

    .line 161
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;, "Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    if-eqz v0, :cond_0

    .line 184
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->setMustStop(Z)V

    .line 186
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
