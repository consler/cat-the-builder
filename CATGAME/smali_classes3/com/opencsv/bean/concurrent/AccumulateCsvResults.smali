.class Lcom/opencsv/bean/concurrent/AccumulateCsvResults;
.super Ljava/lang/Thread;
.source "AccumulateCsvResults.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Thread;"
    }
.end annotation


# instance fields
.field private mustStop:Z

.field private final resultantBeanMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final thrownExceptionsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;"
        }
    .end annotation
.end field

.field private final thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;
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
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "TT;>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "TT;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/opencsv/bean/concurrent/AccumulateCsvResults;, "Lcom/opencsv/bean/concurrent/AccumulateCsvResults<TT;>;"
    .local p1, "resultantBeansQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/opencsv/bean/concurrent/OrderedObject<TT;>;>;"
    .local p2, "thrownExceptionsQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/opencsv/bean/concurrent/OrderedObject<Lcom/opencsv/exceptions/CsvException;>;>;"
    .local p3, "resultantBeanMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Long;TT;>;"
    .local p4, "thrownExceptionsMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Long;Lcom/opencsv/exceptions/CsvException;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->mustStop:Z

    .line 58
    iput-object p1, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    .line 59
    iput-object p2, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    .line 60
    iput-object p3, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->resultantBeanMap:Ljava/util/concurrent/ConcurrentMap;

    .line 61
    iput-object p4, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 62
    return-void
.end method

.method private declared-synchronized isMustStop()Z
    .locals 1

    .local p0, "this":Lcom/opencsv/bean/concurrent/AccumulateCsvResults;, "Lcom/opencsv/bean/concurrent/AccumulateCsvResults<TT;>;"
    monitor-enter p0

    .line 71
    :try_start_0
    iget-boolean v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->mustStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 71
    .end local p0    # "this":Lcom/opencsv/bean/concurrent/AccumulateCsvResults;, "Lcom/opencsv/bean/concurrent/AccumulateCsvResults<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 86
    .local p0, "this":Lcom/opencsv/bean/concurrent/AccumulateCsvResults;, "Lcom/opencsv/bean/concurrent/AccumulateCsvResults<TT;>;"
    :goto_0
    invoke-direct {p0}, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->isMustStop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    return-void

    .line 87
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->resultantBeansQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/concurrent/OrderedObject;

    .line 89
    .local v0, "bean":Lcom/opencsv/bean/concurrent/OrderedObject;, "Lcom/opencsv/bean/concurrent/OrderedObject<TT;>;"
    if-eqz v0, :cond_2

    .line 90
    iget-object v1, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->resultantBeanMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getOrdinal()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v0    # "bean":Lcom/opencsv/bean/concurrent/OrderedObject;, "Lcom/opencsv/bean/concurrent/OrderedObject<TT;>;"
    :cond_2
    goto :goto_1

    .line 93
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 94
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/concurrent/OrderedObject;

    .line 95
    .local v0, "capturedException":Lcom/opencsv/bean/concurrent/OrderedObject;, "Lcom/opencsv/bean/concurrent/OrderedObject<Lcom/opencsv/exceptions/CsvException;>;"
    if-eqz v0, :cond_4

    .line 96
    iget-object v1, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->thrownExceptionsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getOrdinal()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v0    # "capturedException":Lcom/opencsv/bean/concurrent/OrderedObject;, "Lcom/opencsv/bean/concurrent/OrderedObject<Lcom/opencsv/exceptions/CsvException;>;"
    :cond_4
    goto :goto_2

    .line 99
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method declared-synchronized setMustStop(Z)V
    .locals 0
    .param p1, "mustStop"    # Z

    .local p0, "this":Lcom/opencsv/bean/concurrent/AccumulateCsvResults;, "Lcom/opencsv/bean/concurrent/AccumulateCsvResults<TT;>;"
    monitor-enter p0

    .line 81
    :try_start_0
    iput-boolean p1, p0, Lcom/opencsv/bean/concurrent/AccumulateCsvResults;->mustStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 80
    .end local p0    # "this":Lcom/opencsv/bean/concurrent/AccumulateCsvResults;, "Lcom/opencsv/bean/concurrent/AccumulateCsvResults<TT;>;"
    .end local p1    # "mustStop":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
