.class public Lcom/opencsv/bean/concurrent/LineExecutor;
.super Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;
.source "LineExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 23
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

    .line 17
    invoke-super {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->complete()V

    return-void
.end method

.method public bridge synthetic getCapturedExceptions()Ljava/util/List;
    .locals 1

    .line 17
    invoke-super {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getCapturedExceptions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTerminalException()Ljava/lang/Throwable;
    .locals 1

    .line 17
    invoke-super {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic prepare()V
    .locals 0

    .line 17
    invoke-super {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->prepare()V

    return-void
.end method

.method public bridge synthetic resultStream()Ljava/util/stream/Stream;
    .locals 1

    .line 17
    invoke-super {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->resultStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shutdownNow()Ljava/util/List;
    .locals 1

    .line 17
    invoke-super {p0}, Lcom/opencsv/bean/concurrent/IntolerantThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submitLine(JLcom/opencsv/bean/MappingStrategy;Lcom/opencsv/bean/CsvToBeanFilter;Ljava/util/List;[Ljava/lang/String;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/opencsv/bean/MappingStrategy<",
            "+TT;>;",
            "Lcom/opencsv/bean/CsvToBeanFilter;",
            "Ljava/util/List<",
            "Lcom/opencsv/bean/BeanVerifier<",
            "TT;>;>;[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object v1, p0

    .line 41
    :try_start_0
    new-instance v0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;

    iget-object v9, v1, Lcom/opencsv/bean/concurrent/LineExecutor;->resultQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v10, v1, Lcom/opencsv/bean/concurrent/LineExecutor;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    move-object v2, v0

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v11, p7

    invoke-direct/range {v2 .. v11}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;-><init>(JLcom/opencsv/bean/MappingStrategy;Lcom/opencsv/bean/CsvToBeanFilter;Ljava/util/List;[Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Z)V

    invoke-virtual {p0, v0}, Lcom/opencsv/bean/concurrent/LineExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 46
    iget-object v2, v1, Lcom/opencsv/bean/concurrent/LineExecutor;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, v1, Lcom/opencsv/bean/concurrent/LineExecutor;->accumulateThread:Lcom/opencsv/bean/concurrent/AccumulateCsvResults;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->setMustStop(Z)V

    .line 49
    :cond_0
    throw v0
.end method
