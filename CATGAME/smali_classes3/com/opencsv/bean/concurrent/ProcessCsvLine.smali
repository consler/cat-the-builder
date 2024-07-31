.class public Lcom/opencsv/bean/concurrent/ProcessCsvLine;
.super Ljava/lang/Object;
.source "ProcessCsvLine.java"

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
.field private final filter:Lcom/opencsv/bean/CsvToBeanFilter;

.field private final line:[Ljava/lang/String;

.field private final lineNumber:J

.field private final mapper:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final resultantBeanQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "TT;>;>;"
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

.field private final verifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opencsv/bean/BeanVerifier<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/opencsv/bean/MappingStrategy;Lcom/opencsv/bean/CsvToBeanFilter;Ljava/util/List;[Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Z)V
    .locals 2
    .param p1, "lineNumber"    # J
    .param p4, "filter"    # Lcom/opencsv/bean/CsvToBeanFilter;
    .param p6, "line"    # [Ljava/lang/String;
    .param p9, "throwExceptions"    # Z
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
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "TT;>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/opencsv/bean/concurrent/OrderedObject<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;>;Z)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/opencsv/bean/concurrent/ProcessCsvLine;, "Lcom/opencsv/bean/concurrent/ProcessCsvLine<TT;>;"
    .local p3, "mapper":Lcom/opencsv/bean/MappingStrategy;, "Lcom/opencsv/bean/MappingStrategy<+TT;>;"
    .local p5, "verifiers":Ljava/util/List;, "Ljava/util/List<Lcom/opencsv/bean/BeanVerifier<TT;>;>;"
    .local p7, "resultantBeanQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/opencsv/bean/concurrent/OrderedObject<TT;>;>;"
    .local p8, "thrownExceptionsQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/opencsv/bean/concurrent/OrderedObject<Lcom/opencsv/exceptions/CsvException;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide p1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->lineNumber:J

    .line 70
    iput-object p3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->mapper:Lcom/opencsv/bean/MappingStrategy;

    .line 71
    iput-object p4, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->verifiers:Ljava/util/List;

    .line 73
    invoke-static {p6}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->line:[Ljava/lang/String;

    .line 74
    iput-object p7, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->resultantBeanQueue:Ljava/util/concurrent/BlockingQueue;

    .line 75
    iput-object p8, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    .line 76
    iput-boolean p9, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->throwExceptions:Z

    .line 77
    return-void
.end method

.method private processLine()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBeanIntrospectionException;,
            Lcom/opencsv/exceptions/CsvBadConverterException;,
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/opencsv/bean/concurrent/ProcessCsvLine;, "Lcom/opencsv/bean/concurrent/ProcessCsvLine<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->mapper:Lcom/opencsv/bean/MappingStrategy;

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->line:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/opencsv/bean/MappingStrategy;->populateNewBean([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 82
    .local p0, "this":Lcom/opencsv/bean/concurrent/ProcessCsvLine;, "Lcom/opencsv/bean/concurrent/ProcessCsvLine<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->line:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/opencsv/bean/CsvToBeanFilter;->allowLine([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->processLine()Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->verifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 85
    .local v1, "verifierList":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/opencsv/bean/BeanVerifier<TT;>;>;"
    const/4 v2, 0x1

    .line 86
    .local v2, "keep":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/BeanVerifier;

    invoke-interface {v3, v0}, Lcom/opencsv/bean/BeanVerifier;->verifyBean(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    goto :goto_0

    .line 89
    :cond_1
    if-eqz v2, :cond_2

    .line 90
    iget-object v3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->resultantBeanQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v4, Lcom/opencsv/bean/concurrent/OrderedObject;

    iget-wide v5, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->lineNumber:J

    invoke-direct {v4, v5, v6, v0}, Lcom/opencsv/bean/concurrent/OrderedObject;-><init>(JLjava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/opencsv/bean/OpencsvUtils;->queueRefuseToAcceptDefeat(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/opencsv/exceptions/CsvException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    .end local v1    # "verifierList":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/opencsv/bean/BeanVerifier<TT;>;>;"
    .end local v2    # "keep":Z
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Lcom/opencsv/exceptions/CsvException;
    iget-wide v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->lineNumber:J

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/exceptions/CsvException;->setLineNumber(J)V

    .line 97
    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->line:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/opencsv/exceptions/CsvException;->setLine([Ljava/lang/String;)V

    .line 98
    iget-boolean v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->throwExceptions:Z

    if-nez v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->thrownExceptionsQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/opencsv/bean/concurrent/OrderedObject;

    iget-wide v3, p0, Lcom/opencsv/bean/concurrent/ProcessCsvLine;->lineNumber:J

    invoke-direct {v2, v3, v4, v0}, Lcom/opencsv/bean/concurrent/OrderedObject;-><init>(JLjava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/opencsv/bean/OpencsvUtils;->queueRefuseToAcceptDefeat(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V

    .line 105
    .end local v0    # "e":Lcom/opencsv/exceptions/CsvException;
    :cond_2
    :goto_1
    nop

    .line 106
    return-void

    .line 99
    .restart local v0    # "e":Lcom/opencsv/exceptions/CsvException;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
