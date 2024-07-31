.class public Lcom/opencsv/CSVReaderHeaderAware;
.super Lcom/opencsv/CSVReader;
.source "CSVReaderHeaderAware.java"


# instance fields
.field private final headerIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/CSVReaderHeaderAware;->headerIndex:Ljava/util/Map;

    .line 34
    invoke-direct {p0}, Lcom/opencsv/CSVReaderHeaderAware;->initializeHeader()V

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;Lcom/opencsv/validators/LineValidatorAggregator;Lcom/opencsv/validators/RowValidatorAggregator;)V
    .locals 11
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "skipLines"    # I
    .param p3, "parser"    # Lcom/opencsv/ICSVParser;
    .param p4, "keepCR"    # Z
    .param p5, "verifyReader"    # Z
    .param p6, "multilineLimit"    # I
    .param p7, "errorLocale"    # Ljava/util/Locale;
    .param p8, "lineValidatorAggregator"    # Lcom/opencsv/validators/LineValidatorAggregator;
    .param p9, "rowValidatorAggregator"    # Lcom/opencsv/validators/RowValidatorAggregator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;Lcom/opencsv/validators/LineValidatorAggregator;Lcom/opencsv/validators/RowValidatorAggregator;Lcom/opencsv/processor/RowProcessor;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, p0

    iput-object v0, v1, Lcom/opencsv/CSVReaderHeaderAware;->headerIndex:Ljava/util/Map;

    .line 56
    invoke-direct {p0}, Lcom/opencsv/CSVReaderHeaderAware;->initializeHeader()V

    .line 57
    return-void
.end method

.method private initializeHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-super {p0}, Lcom/opencsv/CSVReader;->readNextSilently()[Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "headers":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/opencsv/CSVReaderHeaderAware;->headerIndex:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$readMap$0([Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 2
    .param p0, "strings"    # [Ljava/lang/String;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 124
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$readMap$1(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 125
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$readMap$2([Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "strings"    # [Ljava/lang/String;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 125
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, p0, v0

    return-object v0
.end method


# virtual methods
.method public readMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAware;->readNext()[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "strings":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 115
    const/4 v1, 0x0

    return-object v1

    .line 117
    :cond_0
    array-length v1, v0

    iget-object v2, p0, Lcom/opencsv/CSVReaderHeaderAware;->headerIndex:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 123
    iget-object v1, p0, Lcom/opencsv/CSVReaderHeaderAware;->headerIndex:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$XUJ-XG8VWznGgj1dKgl3kLHw7lI;

    invoke-direct {v2, v0}, Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$XUJ-XG8VWznGgj1dKgl3kLHw7lI;-><init>([Ljava/lang/String;)V

    .line 124
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$qlkDZ6bgZnIrVpJYpCk3G_Yp_3E;->INSTANCE:Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$qlkDZ6bgZnIrVpJYpCk3G_Yp_3E;

    new-instance v3, Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$S8S4-pDYfuBz-gQehqS9SsgnqWM;

    invoke-direct {v3, v0}, Lcom/opencsv/-$$Lambda$CSVReaderHeaderAware$S8S4-pDYfuBz-gQehqS9SsgnqWM;-><init>([Ljava/lang/String;)V

    .line 125
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 123
    return-object v1

    .line 118
    :cond_1
    new-instance v1, Ljava/io/IOException;

    iget-object v2, p0, Lcom/opencsv/CSVReaderHeaderAware;->errorLocale:Ljava/util/Locale;

    .line 119
    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    .line 120
    const-string v3, "header.data.mismatch.with.line.number"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAware;->getRecordsRead()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 118
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs readNext([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "headerNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 70
    if-nez p1, :cond_0

    .line 71
    invoke-super {p0}, Lcom/opencsv/CSVReader;->readNextSilently()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAware;->readNext()[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "strings":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 76
    const/4 v1, 0x0

    return-object v1

    .line 79
    :cond_1
    array-length v1, v0

    iget-object v2, p0, Lcom/opencsv/CSVReaderHeaderAware;->headerIndex:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "opencsv"

    const/4 v5, 0x1

    if-ne v1, v2, :cond_4

    .line 86
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 88
    .local v1, "response":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_3

    .line 89
    aget-object v6, p1, v2

    .line 91
    .local v6, "headerName":Ljava/lang/String;
    iget-object v7, p0, Lcom/opencsv/CSVReaderHeaderAware;->headerIndex:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 92
    .local v7, "index":Ljava/lang/Integer;
    if-eqz v7, :cond_2

    .line 99
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v0, v8

    aput-object v8, v1, v2

    .line 88
    .end local v6    # "headerName":Ljava/lang/String;
    .end local v7    # "index":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .restart local v6    # "headerName":Ljava/lang/String;
    .restart local v7    # "index":Ljava/lang/Integer;
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    iget-object v9, p0, Lcom/opencsv/CSVReaderHeaderAware;->errorLocale:Ljava/util/Locale;

    .line 94
    invoke-static {v4, v9}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    .line 95
    const-string v9, "header.nonexistant"

    invoke-virtual {v4, v9}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v3

    .line 93
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 101
    .end local v2    # "i":I
    .end local v6    # "headerName":Ljava/lang/String;
    .end local v7    # "index":Ljava/lang/Integer;
    :cond_3
    return-object v1

    .line 80
    .end local v1    # "response":[Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    iget-object v2, p0, Lcom/opencsv/CSVReaderHeaderAware;->errorLocale:Ljava/util/Locale;

    .line 81
    invoke-static {v4, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    .line 82
    const-string v4, "header.data.mismatch.with.line.number"

    invoke-virtual {v2, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAware;->getRecordsRead()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    .line 80
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
