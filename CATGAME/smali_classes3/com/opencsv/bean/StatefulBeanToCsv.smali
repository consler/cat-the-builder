.class public Lcom/opencsv/bean/StatefulBeanToCsv;
.super Ljava/lang/Object;
.source "StatefulBeanToCsv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NO_CHARACTER:C


# instance fields
.field private applyQuotesToAll:Z

.field private capturedExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;"
        }
    .end annotation
.end field

.field private csvwriter:Lcom/opencsv/ICSVWriter;

.field private errorLocale:Ljava/util/Locale;

.field private final escapechar:C

.field private executor:Lcom/opencsv/bean/concurrent/BeanExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/concurrent/BeanExecutor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private headerWritten:Z

.field private final ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final lineEnd:Ljava/lang/String;

.field private lineNumber:I

.field private mappingStrategy:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private orderedResults:Z

.field private final quotechar:C

.field private final separator:C

.field private throwExceptions:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(CLjava/lang/String;Lcom/opencsv/bean/MappingStrategy;CCZLjava/io/Writer;ZLorg/apache/commons/collections4/MultiValuedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;CCZ",
            "Ljava/io/Writer;",
            "Z",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    .line 65
    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->orderedResults:Z

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    .line 97
    iput-char p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->escapechar:C

    .line 98
    iput-object p2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineEnd:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    .line 100
    iput-char p4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->quotechar:C

    .line 101
    iput-char p5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->separator:C

    .line 102
    iput-boolean p6, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->throwExceptions:Z

    .line 103
    iput-object p7, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->writer:Ljava/io/Writer;

    .line 104
    iput-boolean p8, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->applyQuotesToAll:Z

    .line 105
    iput-object p9, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;

    return-void
.end method

.method public constructor <init>(Lcom/opencsv/bean/MappingStrategy;ZZLcom/opencsv/ICSVWriter;Lorg/apache/commons/collections4/MultiValuedMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "TT;>;ZZ",
            "Lcom/opencsv/ICSVWriter;",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    .line 65
    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->orderedResults:Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    .line 124
    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    .line 125
    iput-boolean p2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->throwExceptions:Z

    .line 126
    iput-boolean p3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->applyQuotesToAll:Z

    .line 127
    iput-object p4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/ICSVWriter;

    .line 129
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->escapechar:C

    const-string p1, ""

    .line 130
    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineEnd:Ljava/lang/String;

    .line 131
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->quotechar:C

    .line 132
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->separator:C

    .line 133
    iput-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->writer:Ljava/io/Writer;

    .line 134
    iput-object p5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;

    return-void
.end method

.method private beforeFirstWrite(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/opencsv/bean/OpencsvUtils;->determineMappingStrategy(Ljava/lang/Class;Ljava/util/Locale;)Lcom/opencsv/bean/MappingStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v0, v1}, Lcom/opencsv/bean/MappingStrategy;->ignoreFields(Lorg/apache/commons/collections4/MultiValuedMap;)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/ICSVWriter;

    if-nez v0, :cond_2

    .line 165
    new-instance v0, Lcom/opencsv/CSVWriter;

    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->writer:Ljava/io/Writer;

    iget-char v3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->separator:C

    iget-char v4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->quotechar:C

    iget-char v5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->escapechar:C

    iget-object v6, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineEnd:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CCCLjava/lang/String;)V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/ICSVWriter;

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    invoke-interface {v0, p1}, Lcom/opencsv/bean/MappingStrategy;->generateHeader(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    .line 170
    array-length v0, p1

    if-lez v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/ICSVWriter;

    iget-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->applyQuotesToAll:Z

    invoke-interface {v0, p1, v1}, Lcom/opencsv/ICSVWriter;->writeNext([Ljava/lang/String;Z)V

    :cond_3
    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    return-void
.end method

.method private submitAllLines(Ljava/util/Iterator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 240
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 243
    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    iget v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    int-to-long v2, v0

    iget-object v4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-boolean v6, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->throwExceptions:Z

    invoke-virtual/range {v1 .. v6}, Lcom/opencsv/bean/concurrent/BeanExecutor;->submitBean(JLcom/opencsv/bean/MappingStrategy;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->complete()V

    return-void
.end method


# virtual methods
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

    .line 379
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    return-object v0
.end method

.method public isThrowExceptions()Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->throwExceptions:Z

    return v0
.end method

.method synthetic lambda$write$0$com-opencsv-bean-StatefulBeanToCsv([Ljava/lang/String;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/ICSVWriter;

    iget-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->applyQuotesToAll:Z

    invoke-interface {v0, p1, v1}, Lcom/opencsv/ICSVWriter;->writeNext([Ljava/lang/String;Z)V

    return-void
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1

    .line 392
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method public setOrderedResults(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->orderedResults:Z

    return-void
.end method

.method public write(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 193
    iget-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0, p1}, Lcom/opencsv/bean/StatefulBeanToCsv;->beforeFirstWrite(Ljava/lang/Object;)V

    .line 198
    :cond_0
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 199
    new-instance v9, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v9, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 200
    new-instance v10, Lcom/opencsv/bean/concurrent/ProcessCsvBean;

    iget v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-boolean v8, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->throwExceptions:Z

    move-object v1, v10

    move-object v5, p1

    move-object v6, v0

    move-object v7, v9

    invoke-direct/range {v1 .. v8}, Lcom/opencsv/bean/concurrent/ProcessCsvBean;-><init>(JLcom/opencsv/bean/MappingStrategy;Ljava/lang/Object;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Z)V

    .line 204
    :try_start_0
    invoke-virtual {v10}, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    invoke-interface {v9}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 225
    invoke-interface {v9}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/opencsv/bean/concurrent/OrderedObject;

    if-eqz p1, :cond_5

    .line 226
    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 227
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/opencsv/bean/concurrent/OrderedObject;

    if-eqz p1, :cond_5

    .line 232
    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 233
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/ICSVWriter;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->applyQuotesToAll:Z

    invoke-interface {v0, p1, v1}, Lcom/opencsv/ICSVWriter;->writeNext([Ljava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 207
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/opencsv/exceptions/CsvRuntimeException;

    if-nez v0, :cond_3

    .line 213
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    if-nez v0, :cond_2

    .line 216
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    if-eqz v0, :cond_4

    .line 217
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    throw p1

    .line 214
    :cond_2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    throw p1

    .line 211
    :cond_3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/opencsv/exceptions/CsvRuntimeException;

    throw p1

    .line 220
    :cond_4
    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method public write(Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    const-string v0, "error.writing.beans"

    const-string v1, "opencsv"

    .line 278
    new-instance v2, Lorg/apache/commons/collections4/iterators/PeekingIterator;

    invoke-direct {v2, p1}, Lorg/apache/commons/collections4/iterators/PeekingIterator;-><init>(Ljava/util/Iterator;)V

    .line 279
    invoke-virtual {v2}, Lorg/apache/commons/collections4/iterators/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object p1

    .line 281
    invoke-virtual {v2}, Lorg/apache/commons/collections4/iterators/PeekingIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 286
    :cond_0
    iget-boolean v3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    if-nez v3, :cond_1

    .line 287
    invoke-direct {p0, p1}, Lcom/opencsv/bean/StatefulBeanToCsv;->beforeFirstWrite(Ljava/lang/Object;)V

    .line 290
    :cond_1
    new-instance p1, Lcom/opencsv/bean/concurrent/BeanExecutor;

    iget-boolean v3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->orderedResults:Z

    invoke-direct {p1, v3}, Lcom/opencsv/bean/concurrent/BeanExecutor;-><init>(Z)V

    iput-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    .line 291
    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->prepare()V

    .line 295
    :try_start_0
    invoke-direct {p0, v2}, Lcom/opencsv/bean/StatefulBeanToCsv;->submitAllLines(Ljava/util/Iterator;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getCapturedExceptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->resultStream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/opencsv/bean/StatefulBeanToCsv$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/opencsv/bean/StatefulBeanToCsv$$ExternalSyntheticLambda0;-><init>(Lcom/opencsv/bean/StatefulBeanToCsv;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catch_0
    move-exception p1

    .line 315
    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v2}, Lcom/opencsv/bean/concurrent/BeanExecutor;->shutdownNow()Ljava/util/List;

    .line 316
    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v2}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    .line 317
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 319
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 320
    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 299
    :catch_1
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/RuntimeException;

    if-nez p1, :cond_5

    .line 302
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    if-nez p1, :cond_4

    .line 305
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    if-eqz p1, :cond_3

    .line 306
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    .line 307
    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    throw p1

    .line 309
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 310
    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 303
    :cond_4
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    throw p1

    .line 300
    :cond_5
    iget-object p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {p1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
.end method

.method public write(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 262
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/StatefulBeanToCsv;->write(Ljava/util/Iterator;)V

    :cond_0
    return-void
.end method

.method public write(Ljava/util/stream/Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 337
    invoke-interface {p1}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/StatefulBeanToCsv;->write(Ljava/util/Iterator;)V

    return-void
.end method
