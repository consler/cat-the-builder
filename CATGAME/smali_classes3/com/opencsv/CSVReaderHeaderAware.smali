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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/opencsv/CSVReaderHeaderAware;->headerIndex:Ljava/util/Map;

    .line 34
    invoke-direct {p0}, Lcom/opencsv/CSVReaderHeaderAware;->initializeHeader()V

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;Lcom/opencsv/validators/LineValidatorAggregator;Lcom/opencsv/validators/RowValidatorAggregator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    .line 55
    invoke-direct/range {v0 .. v10}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;Lcom/opencsv/validators/LineValidatorAggregator;Lcom/opencsv/validators/RowValidatorAggregator;Lcom/opencsv/processor/RowProcessor;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, p0

    iput-object v0, v1, Lcom/opencsv/CSVReaderHeaderAware;->headerIndex:Ljava/util/Map;

    .line 56
    invoke-direct {p0}, Lcom/opencsv/CSVReaderHeaderAware;->initializeHeader()V

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

    const/4 v1, 0x0

    .line 130
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/opencsv/CSVReaderHeaderAware;->headerIndex:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$readMap$0([Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 124
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    array-length p0, p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$readMap$1(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    .line 125
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$readMap$2([Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    .line 125
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method


# virtual methods
.method public readMap()Ljava/util/Map;
    .locals 5
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

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

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

    new-instance v2, Lcom/opencsv/CSVReaderHeaderAware$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/opencsv/CSVReaderHeaderAware$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    .line 124
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/opencsv/CSVReaderHeaderAware$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/opencsv/CSVReaderHeaderAware$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Lcom/opencsv/CSVReaderHeaderAware$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/opencsv/CSVReaderHeaderAware$$ExternalSyntheticLambda2;-><init>([Ljava/lang/String;)V

    .line 125
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 118
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "opencsv"

    iget-object v2, p0, Lcom/opencsv/CSVReaderHeaderAware;->errorLocale:Ljava/util/Locale;

    .line 119
    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "header.data.mismatch.with.line.number"

    .line 120
    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAware;->getRecordsRead()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 118
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs readNext([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 71
    invoke-super {p0}, Lcom/opencsv/CSVReader;->readNextSilently()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAware;->readNext()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 79
    :cond_1
    array-length v1, v0

    iget-object v2, p0, Lcom/opencsv/CSVReaderHeaderAware;->headerIndex:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const-string v3, "opencsv"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_4

    .line 86
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    move v2, v5

    .line 88
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_3

    .line 89
    aget-object v6, p1, v2

    .line 91
    iget-object v7, p0, Lcom/opencsv/CSVReaderHeaderAware;->headerIndex:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 99
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v0, v6

    aput-object v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/opencsv/CSVReaderHeaderAware;->errorLocale:Ljava/util/Locale;

    .line 94
    invoke-static {v3, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "header.nonexistant"

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v6, v1, v5

    .line 93
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object v1

    .line 80
    :cond_4
    new-instance p1, Ljava/io/IOException;

    iget-object v0, p0, Lcom/opencsv/CSVReaderHeaderAware;->errorLocale:Ljava/util/Locale;

    .line 81
    invoke-static {v3, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "header.data.mismatch.with.line.number"

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/opencsv/CSVReaderHeaderAware;->getRecordsRead()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    .line 80
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
