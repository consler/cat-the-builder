.class public Lcom/opencsv/bean/concurrent/ProcessCsvBean;
.super Ljava/lang/Object;
.source "ProcessCsvBean.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final bean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final lineNumber:J

.field private final mappingStrategy:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final resultantLineQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final throwExceptions:Z

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
.method public constructor <init>(JLcom/opencsv/bean/MappingStrategy;Ljava/lang/Object;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Z)V
    .locals 0
    .param p1, "lineNumber"    # J
    .param p7, "throwExceptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;TT;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "[",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;>;Z)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/opencsv/bean/concurrent/ProcessCsvBean;, "Lcom/opencsv/bean/concurrent/ProcessCsvBean<TT;>;"
    .local p3, "mappingStrategy":Lcom/opencsv/bean/MappingStrategy;, "Lcom/opencsv/bean/MappingStrategy<TT;>;"
    .local p4, "bean":Ljava/lang/Object;, "TT;"
    .local p5, "resultantLineQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/opencsv/bean/concurrent/OrderedObject<[Ljava/lang/String;>;>;"
    .local p6, "thrownExceptionsQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/opencsv/bean/concurrent/OrderedObject<Lcom/opencsv/exceptions/CsvException;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->lineNumber:J

    .line 55
    iput-object p3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    .line 56
    iput-object p4, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->bean:Ljava/lang/Object;

    .line 57
    iput-object p5, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->resultantLineQueue:Ljava/util/concurrent/BlockingQueue;

    .line 58
    iput-object p6, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    .line 59
    iput-boolean p7, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->throwExceptions:Z

    .line 60
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 65
    .local p0, "this":Lcom/opencsv/bean/concurrent/ProcessCsvBean;, "Lcom/opencsv/bean/concurrent/ProcessCsvBean<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->resultantLineQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/opencsv/bean/concurrent/OrderedObject;

    iget-wide v2, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->lineNumber:J

    iget-object v4, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-object v5, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->bean:Ljava/lang/Object;

    .line 66
    invoke-interface {v4, v5}, Lcom/opencsv/bean/MappingStrategy;->transmuteBean(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/opencsv/bean/concurrent/OrderedObject;-><init>(JLjava/lang/Object;)V

    .line 65
    invoke-static {v0, v1}, Lcom/opencsv/bean/OpencsvUtils;->queueRefuseToAcceptDefeat(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/opencsv/exceptions/CsvException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/opencsv/exceptions/CsvRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "t":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 76
    .end local v0    # "t":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 78
    .local v0, "csvre":Lcom/opencsv/exceptions/CsvRuntimeException;
    throw v0

    .line 68
    .end local v0    # "csvre":Lcom/opencsv/exceptions/CsvRuntimeException;
    :catch_2
    move-exception v0

    .line 69
    .local v0, "e":Lcom/opencsv/exceptions/CsvException;
    iget-wide v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->lineNumber:J

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/exceptions/CsvException;->setLineNumber(J)V

    .line 70
    iget-boolean v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->throwExceptions:Z

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/opencsv/bean/concurrent/OrderedObject;

    iget-wide v3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->lineNumber:J

    invoke-direct {v2, v3, v4, v0}, Lcom/opencsv/bean/concurrent/OrderedObject;-><init>(JLjava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/opencsv/bean/OpencsvUtils;->queueRefuseToAcceptDefeat(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V

    .line 82
    .end local v0    # "e":Lcom/opencsv/exceptions/CsvException;
    :goto_0
    nop

    .line 83
    return-void

    .line 71
    .restart local v0    # "e":Lcom/opencsv/exceptions/CsvException;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
