.class public Lcom/opencsv/bean/CsvToBean;
.super Ljava/lang/Object;
.source "CsvToBean.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final capturedExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;"
        }
    .end annotation
.end field

.field private csvReader:Lcom/opencsv/CSVReader;

.field private errorLocale:Ljava/util/Locale;

.field private executor:Lcom/opencsv/bean/concurrent/LineExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/concurrent/LineExecutor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private filter:Lcom/opencsv/bean/CsvToBeanFilter;

.field private line:[Ljava/lang/String;

.field private lineProcessed:J

.field private mappingStrategy:Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opencsv/bean/MappingStrategy<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private orderedResults:Z

.field private throwExceptions:Z

.field private verifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opencsv/bean/BeanVerifier<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->capturedExceptions:Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/opencsv/bean/CsvToBean;->throwExceptions:Z

    .line 70
    iput-boolean v0, p0, Lcom/opencsv/bean/CsvToBean;->orderedResults:Z

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->verifiers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/opencsv/bean/CsvToBean;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->capturedExceptions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/opencsv/bean/CsvToBean;)[Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->line:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/opencsv/bean/CsvToBean;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->line:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/CSVReader;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->csvReader:Lcom/opencsv/CSVReader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/opencsv/bean/CsvToBean;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/opencsv/bean/CsvToBean;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/bean/MappingStrategy;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    return-object p0
.end method

.method static synthetic access$500(Lcom/opencsv/bean/CsvToBean;)Lcom/opencsv/bean/CsvToBeanFilter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/opencsv/bean/CsvToBean;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->verifiers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/opencsv/bean/CsvToBean;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/opencsv/bean/CsvToBean;->throwExceptions:Z

    return p0
.end method

.method static synthetic access$800(Lcom/opencsv/bean/CsvToBean;)Ljava/util/Locale;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    return-object p0
.end method

.method private prepareToReadInput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    const-string v1, "opencsv"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean;->csvReader:Lcom/opencsv/CSVReader;

    if-eqz v2, :cond_0

    .line 268
    :try_start_0
    invoke-interface {v0, v2}, Lcom/opencsv/bean/MappingStrategy;->captureHeader(Lcom/opencsv/CSVReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    .line 274
    iput-wide v0, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->line:[Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    .line 270
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v3, "header.error"

    invoke-virtual {v1, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "specify.strategy.reader"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private submitAllBeans()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->csvReader:Lcom/opencsv/CSVReader;

    invoke-virtual {v0}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/CsvToBean;->line:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->csvReader:Lcom/opencsv/CSVReader;

    invoke-virtual {v0}, Lcom/opencsv/CSVReader;->getLinesRead()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    .line 102
    iget-object v1, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/LineExecutor;

    iget-object v4, p0, Lcom/opencsv/bean/CsvToBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    iget-object v5, p0, Lcom/opencsv/bean/CsvToBean;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    iget-object v6, p0, Lcom/opencsv/bean/CsvToBean;->verifiers:Ljava/util/List;

    iget-object v7, p0, Lcom/opencsv/bean/CsvToBean;->line:[Ljava/lang/String;

    iget-boolean v8, p0, Lcom/opencsv/bean/CsvToBean;->throwExceptions:Z

    invoke-virtual/range {v1 .. v8}, Lcom/opencsv/bean/concurrent/LineExecutor;->submitLine(JLcom/opencsv/bean/MappingStrategy;Lcom/opencsv/bean/CsvToBeanFilter;Ljava/util/List;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/LineExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/LineExecutor;->complete()V

    return-void
.end method


# virtual methods
.method public getCapturedExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opencsv/exceptions/CsvException;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/LineExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/LineExecutor;->getCapturedExceptions()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->capturedExceptions:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean;->prepareToReadInput()V

    .line 292
    new-instance v0, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;

    invoke-direct {v0, p0}, Lcom/opencsv/bean/CsvToBean$CsvToBeanIterator;-><init>(Lcom/opencsv/bean/CsvToBean;)V

    return-object v0
.end method

.method public parse()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/opencsv/bean/CsvToBean;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public setCsvReader(Lcom/opencsv/CSVReader;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->csvReader:Lcom/opencsv/CSVReader;

    return-void
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1

    .line 239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    .line 240
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->csvReader:Lcom/opencsv/CSVReader;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1}, Lcom/opencsv/CSVReader;->setErrorLocale(Ljava/util/Locale;)V

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/opencsv/bean/CsvToBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    if-eqz p1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-interface {p1, v0}, Lcom/opencsv/bean/MappingStrategy;->setErrorLocale(Ljava/util/Locale;)V

    :cond_1
    return-void
.end method

.method public setFilter(Lcom/opencsv/bean/CsvToBeanFilter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->filter:Lcom/opencsv/bean/CsvToBeanFilter;

    return-void
.end method

.method public setMappingStrategy(Lcom/opencsv/bean/MappingStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/MappingStrategy<",
            "+TT;>;)V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->mappingStrategy:Lcom/opencsv/bean/MappingStrategy;

    return-void
.end method

.method public setOrderedResults(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/opencsv/bean/CsvToBean;->orderedResults:Z

    return-void
.end method

.method public setThrowExceptions(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/opencsv/bean/CsvToBean;->throwExceptions:Z

    return-void
.end method

.method public setVerifiers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opencsv/bean/BeanVerifier<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 256
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/opencsv/bean/CsvToBean;->verifiers:Ljava/util/List;

    return-void
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "parsing.error.full"

    const-string v1, "opencsv"

    .line 134
    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean;->prepareToReadInput()V

    .line 135
    new-instance v2, Lcom/opencsv/bean/concurrent/LineExecutor;

    iget-boolean v3, p0, Lcom/opencsv/bean/CsvToBean;->orderedResults:Z

    invoke-direct {v2, v3}, Lcom/opencsv/bean/concurrent/LineExecutor;-><init>(Z)V

    iput-object v2, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/LineExecutor;

    .line 136
    invoke-virtual {v2}, Lcom/opencsv/bean/concurrent/LineExecutor;->prepare()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/opencsv/bean/CsvToBean;->submitAllBeans()V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/opencsv/exceptions/CsvMalformedLineException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/LineExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/LineExecutor;->resultStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v5

    .line 157
    iget-object v6, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/LineExecutor;

    invoke-virtual {v6}, Lcom/opencsv/bean/concurrent/LineExecutor;->shutdownNow()Ljava/util/List;

    .line 158
    new-instance v6, Ljava/lang/RuntimeException;

    iget-object v7, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/opencsv/bean/CsvToBean;->lineProcessed:J

    .line 159
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/opencsv/bean/CsvToBean;->line:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 158
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v5

    .line 152
    iget-object v6, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/LineExecutor;

    invoke-virtual {v6}, Lcom/opencsv/bean/concurrent/LineExecutor;->shutdownNow()Ljava/util/List;

    .line 153
    new-instance v6, Ljava/lang/RuntimeException;

    iget-object v7, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 154
    invoke-virtual {v5}, Lcom/opencsv/exceptions/CsvMalformedLineException;->getLineNumber()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v5}, Lcom/opencsv/exceptions/CsvMalformedLineException;->getContext()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 153
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 144
    :catch_2
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/LineExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/LineExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/opencsv/exceptions/CsvException;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/LineExecutor;

    invoke-virtual {v0}, Lcom/opencsv/bean/concurrent/LineExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/opencsv/exceptions/CsvException;

    .line 146
    new-instance v5, Ljava/lang/RuntimeException;

    iget-object v6, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v6, "parsing.error.linenumber"

    invoke-virtual {v1, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    .line 147
    invoke-virtual {v0}, Lcom/opencsv/exceptions/CsvException;->getLineNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v3, ","

    invoke-virtual {v0}, Lcom/opencsv/exceptions/CsvException;->getLine()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 146
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "parsing.error"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/opencsv/bean/CsvToBean;->executor:Lcom/opencsv/bean/concurrent/LineExecutor;

    invoke-virtual {v2}, Lcom/opencsv/bean/concurrent/LineExecutor;->getTerminalException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
