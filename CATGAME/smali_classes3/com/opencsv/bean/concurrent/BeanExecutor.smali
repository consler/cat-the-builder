.class public Lcom/opencsv/bean/concurrent/BeanExecutor;
.super Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;
.source "BeanExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic complete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 13
    invoke-super {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->complete()V

    return-void
.end method

.method public bridge synthetic getCapturedExceptions()Ljava/util/List;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getCapturedExceptions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTerminalException()Ljava/lang/Throwable;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic prepare()V
    .locals 0

    .line 13
    invoke-super {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->prepare()V

    return-void
.end method

.method public bridge synthetic resultStream()Ljava/util/stream/Stream;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->resultStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shutdownNow()Ljava/util/List;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submitBean(JLcom/opencsv/bean/MappingStrategy;Ljava/lang/Object;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;TT;Z)V"
        }
    .end annotation

    .line 34
    :try_start_0
    new-instance v8, Lcom/opencsv/bean/concurrent/ProcessCsvBean;

    iget-object v5, p0, Lcom/opencsv/bean/concurrent/BeanExecutor;->resultQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v6, p0, Lcom/opencsv/bean/concurrent/BeanExecutor;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    move-object v0, v8

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/opencsv/bean/concurrent/ProcessCsvBean;-><init>(JLcom/opencsv/bean/MappingStrategy;Ljava/lang/Object;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Z)V

    invoke-virtual {p0, v8}, Lcom/opencsv/bean/concurrent/BeanExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 37
    iget-object p2, p0, Lcom/opencsv/bean/concurrent/BeanExecutor;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    if-eqz p2, :cond_0

    .line 38
    iget-object p2, p0, Lcom/opencsv/bean/concurrent/BeanExecutor;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->setMustStop(Z)V

    .line 40
    :cond_0
    throw p1
.end method
