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
    .param p1, "escapechar"    # C
    .param p2, "lineEnd"    # Ljava/lang/String;
    .param p4, "quotechar"    # C
    .param p5, "separator"    # C
    .param p6, "throwExceptions"    # Z
    .param p7, "writer"    # Ljava/io/Writer;
    .param p8, "applyQuotesToAll"    # Z
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
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    .local p3, "mappingStrategy":Lcom/opencsv/bean/MappingStrategy;, "Lcom/opencsv/bean/MappingStrategy<TT;>;"
    .local p9, "ignoredFields":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    .line 65
    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->orderedResults:Z

    .line 72
    const/4 v0, 0x0

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

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/opencsv/bean/MappingStrategy;ZZLcom/opencsv/ICSVWriter;Lorg/apache/commons/collections4/MultiValuedMap;)V
    .locals 3
    .param p2, "throwExceptions"    # Z
    .param p3, "applyQuotesToAll"    # Z
    .param p4, "csvWriter"    # Lcom/opencsv/ICSVWriter;
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
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    .local p1, "mappingStrategy":Lcom/opencsv/bean/MappingStrategy;, "Lcom/opencsv/bean/MappingStrategy<TT;>;"
    .local p5, "ignoredFields":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    .line 65
    iput-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->orderedResults:Z

    .line 72
    const/4 v1, 0x0

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

    .line 130
    const-string v2, ""

    iput-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineEnd:Ljava/lang/String;

    .line 131
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->quotechar:C

    .line 132
    iput-char v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->separator:C

    .line 133
    iput-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->writer:Ljava/io/Writer;

    .line 134
    iput-object p5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;

    .line 135
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
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TT;"
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

    move-result-object v0

    .line 170
    .local v0, "header":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/ICSVWriter;

    iget-boolean v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->applyQuotesToAll:Z

    invoke-interface {v1, v0, v2}, Lcom/opencsv/ICSVWriter;->writeNext([Ljava/lang/String;Z)V

    .line 173
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    .line 174
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
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    .local p1, "beans":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 242
    .local v0, "bean":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 243
    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    iget v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-boolean v6, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->throwExceptions:Z

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/opencsv/bean/concurrent/BeanExecutor;->submitBean(JLcom/opencsv/bean/MappingStrategy;Ljava/lang/Object;Z)V

    .line 245
    .end local v0    # "bean":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/BeanExecutor;->complete()V

    .line 247
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
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    .line 380
    .local v0, "intermediate":Ljava/util/List;, "Ljava/util/List<Lcom/opencsv/exceptions/CsvException;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    .line 381
    return-object v0
.end method

.method public isThrowExceptions()Z
    .locals 1

    .line 362
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    iget-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->throwExceptions:Z

    return v0
.end method

.method public synthetic lambda$write$0$StatefulBeanToCsv([Ljava/lang/String;)V
    .locals 2
    .param p1, "l"    # [Ljava/lang/String;

    .line 324
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/ICSVWriter;

    iget-boolean v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->applyQuotesToAll:Z

    invoke-interface {v0, p1, v1}, Lcom/opencsv/ICSVWriter;->writeNext([Ljava/lang/String;Z)V

    return-void
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 392
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    .line 393
    return-void
.end method

.method public setOrderedResults(Z)V
    .locals 0
    .param p1, "orderedResults"    # Z

    .line 354
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    iput-boolean p1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->orderedResults:Z

    .line 355
    return-void
.end method

.method public write(Ljava/lang/Object;)V
    .locals 10
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

    .line 192
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_6

    .line 193
    iget-boolean v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0, p1}, Lcom/opencsv/bean/StatefulBeanToCsv;->beforeFirstWrite(Ljava/lang/Object;)V

    .line 198
    :cond_0
    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 199
    .local v6, "resultantLineQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/opencsv/bean/concurrent/OrderedObject<[Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 200
    .local v7, "thrownExceptionsQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/opencsv/bean/concurrent/OrderedObject<Lcom/opencsv/exceptions/CsvException;>;>;"
    new-instance v9, Lcom/opencsv/bean/concurrent/ProcessCsvBean;

    iget v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->lineNumber:I

    int-to-long v2, v1

    iget-object v4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-boolean v8, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->throwExceptions:Z

    move-object v1, v9

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/opencsv/bean/concurrent/ProcessCsvBean;-><init>(JLcom/opencsv/bean/MappingStrategy;Ljava/lang/Object;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Z)V

    move-object v0, v9

    .line 204
    .local v0, "proc":Lcom/opencsv/bean/concurrent/ProcessCsvBean;, "Lcom/opencsv/bean/concurrent/ProcessCsvBean<TT;>;"
    :try_start_0
    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/ProcessCsvBean;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    nop

    .line 224
    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 225
    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/concurrent/OrderedObject;

    .line 226
    .local v1, "o":Lcom/opencsv/bean/concurrent/OrderedObject;, "Lcom/opencsv/bean/concurrent/OrderedObject<Lcom/opencsv/exceptions/CsvException;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v1    # "o":Lcom/opencsv/bean/concurrent/OrderedObject;, "Lcom/opencsv/bean/concurrent/OrderedObject<Lcom/opencsv/exceptions/CsvException;>;"
    :cond_1
    goto :goto_0

    .line 231
    :cond_2
    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/concurrent/OrderedObject;

    .line 232
    .local v1, "result":Lcom/opencsv/bean/concurrent/OrderedObject;, "Lcom/opencsv/bean/concurrent/OrderedObject<[Ljava/lang/String;>;"
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 233
    iget-object v2, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->csvwriter:Lcom/opencsv/ICSVWriter;

    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/OrderedObject;->getElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-boolean v4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->applyQuotesToAll:Z

    invoke-interface {v2, v3, v4}, Lcom/opencsv/ICSVWriter;->writeNext([Ljava/lang/String;Z)V

    goto :goto_0

    .line 205
    .end local v1    # "result":Lcom/opencsv/bean/concurrent/OrderedObject;, "Lcom/opencsv/bean/concurrent/OrderedObject<[Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 206
    .local v1, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 207
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/opencsv/exceptions/CsvRuntimeException;

    if-nez v2, :cond_4

    .line 213
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    if-nez v2, :cond_3

    .line 216
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    if-eqz v2, :cond_5

    .line 217
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    throw v2

    .line 214
    :cond_3
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    throw v2

    .line 211
    :cond_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/opencsv/exceptions/CsvRuntimeException;

    throw v2

    .line 220
    :cond_5
    throw v1

    .line 237
    .end local v0    # "proc":Lcom/opencsv/bean/concurrent/ProcessCsvBean;, "Lcom/opencsv/bean/concurrent/ProcessCsvBean<TT;>;"
    .end local v1    # "re":Ljava/lang/RuntimeException;
    .end local v6    # "resultantLineQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/opencsv/bean/concurrent/OrderedObject<[Ljava/lang/String;>;>;"
    .end local v7    # "thrownExceptionsQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/opencsv/bean/concurrent/OrderedObject<Lcom/opencsv/exceptions/CsvException;>;>;"
    :cond_6
    :goto_0
    return-void
.end method

.method public write(Ljava/util/Iterator;)V
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
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 278
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    .local p1, "iBeans":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    const-string v0, "error.writing.beans"

    const-string v1, "opencsv"

    new-instance v2, Lorg/apache/commons/collections4/iterators/PeekingIterator;

    invoke-direct {v2, p1}, Lorg/apache/commons/collections4/iterators/PeekingIterator;-><init>(Ljava/util/Iterator;)V

    .line 279
    .local v2, "beans":Lorg/apache/commons/collections4/iterators/PeekingIterator;, "Lorg/apache/commons/collections4/iterators/PeekingIterator<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/collections4/iterators/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v3

    .line 281
    .local v3, "firstBean":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2}, Lorg/apache/commons/collections4/iterators/PeekingIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    return-void

    .line 286
    :cond_0
    iget-boolean v4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->headerWritten:Z

    if-nez v4, :cond_1

    .line 287
    invoke-direct {p0, v3}, Lcom/opencsv/bean/StatefulBeanToCsv;->beforeFirstWrite(Ljava/lang/Object;)V

    .line 290
    :cond_1
    new-instance v4, Lcom/opencsv/bean/concurrent/BeanExecutor;

    iget-boolean v5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->orderedResults:Z

    invoke-direct {v4, v5}, Lcom/opencsv/bean/concurrent/BeanExecutor;-><init>(Z)V

    iput-object v4, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    .line 291
    invoke-virtual {v4}, Lcom/opencsv/bean/concurrent/BeanExecutor;->prepare()V

    .line 295
    :try_start_0
    invoke-direct {p0, v2}, Lcom/opencsv/bean/StatefulBeanToCsv;->submitAllLines(Ljava/util/Iterator;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    nop

    .line 323
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->capturedExceptions:Ljava/util/List;

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getCapturedExceptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/BeanExecutor;->resultStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/-$$Lambda$StatefulBeanToCsv$_us2tCx6oNRMuMMrODV-BkUU2ZY;

    invoke-direct {v1, p0}, Lcom/opencsv/bean/-$$Lambda$StatefulBeanToCsv$_us2tCx6oNRMuMMrODV-BkUU2ZY;-><init>(Lcom/opencsv/bean/StatefulBeanToCsv;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 325
    return-void

    .line 311
    :catch_0
    move-exception v4

    .line 315
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v5}, Lcom/opencsv/bean/concurrent/BeanExecutor;->shutdownNow()Ljava/util/List;

    .line 316
    iget-object v5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v5}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_2

    .line 317
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 319
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    iget-object v6, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 320
    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 296
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 299
    .local v4, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v5}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/RuntimeException;

    if-nez v5, :cond_5

    .line 302
    iget-object v5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v5}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    if-nez v5, :cond_4

    .line 305
    iget-object v5, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v5}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    if-eqz v5, :cond_3

    .line 306
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    .line 307
    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;

    throw v0

    .line 309
    :cond_3
    new-instance v5, Ljava/lang/RuntimeException;

    iget-object v6, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 310
    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v1}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 303
    :cond_4
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/opencsv/exceptions/CsvDataTypeMismatchException;

    throw v0

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/opencsv/bean/StatefulBeanToCsv;->executor:Lcom/opencsv/bean/concurrent/BeanExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/BeanExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
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
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    .local p1, "beans":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/opencsv/bean/StatefulBeanToCsv;->write(Ljava/util/Iterator;)V

    .line 265
    :cond_0
    return-void
.end method

.method public write(Ljava/util/stream/Stream;)V
    .locals 1
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
    .local p0, "this":Lcom/opencsv/bean/StatefulBeanToCsv;, "Lcom/opencsv/bean/StatefulBeanToCsv<TT;>;"
    .local p1, "beans":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    invoke-interface {p1}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/opencsv/bean/StatefulBeanToCsv;->write(Ljava/util/Iterator;)V

    .line 338
    return-void
.end method
