.class public Lcom/opencsv/CSVReader;
.super Ljava/lang/Object;
.source "CSVReader.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Iterable<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final CONTEXT_MULTILINE_EXCEPTION_MESSAGE_SIZE:I = 0x64

.field public static final DEFAULT_KEEP_CR:Z = false

.field public static final DEFAULT_MULTILINE_LIMIT:I = 0x0

.field public static final DEFAULT_SKIP_LINES:I = 0x0

.field public static final DEFAULT_VERIFY_READER:Z = true

.field private static final MAX_WIDTH:I = 0x64

.field private static final PASSTHROUGH_EXCEPTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/io/IOException;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final READ_AHEAD_LIMIT:I = 0x2


# instance fields
.field protected br:Ljava/io/BufferedReader;

.field protected errorLocale:Ljava/util/Locale;

.field protected hasNext:Z

.field protected keepCR:Z

.field protected lineReader:Lcom/opencsv/stream/reader/LineReader;

.field private final lineValidatorAggregator:Lcom/opencsv/validators/LineValidatorAggregator;

.field protected linesRead:J

.field protected linesSkipped:Z

.field protected multilineLimit:I

.field protected parser:Lcom/opencsv/ICSVParser;

.field protected peekedLine:[Ljava/lang/String;

.field protected recordsRead:J

.field private final rowProcessor:Lcom/opencsv/processor/RowProcessor;

.field private final rowValidatorAggregator:Lcom/opencsv/validators/RowValidatorAggregator;

.field protected skipLines:I

.field protected verifyReader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 53
    const-class v2, Ljava/nio/charset/CharacterCodingException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/io/CharConversionException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/io/UnsupportedEncodingException;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/io/UTFDataFormatException;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljava/util/zip/ZipException;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Ljava/io/FileNotFoundException;

    aput-object v2, v0, v1

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/opencsv/CSVReader;->PASSTHROUGH_EXCEPTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 13

    const/4 v2, 0x0

    .line 85
    new-instance v12, Lcom/opencsv/CSVParser;

    const/16 v4, 0x2c

    const/16 v5, 0x22

    const/16 v6, 0x5c

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v10, Lcom/opencsv/ICSVParser;->DEFAULT_NULL_FIELD_INDICATOR:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/opencsv/CSVParser;-><init>(CCCZZZLcom/opencsv/enums/CSVReaderNullFieldIndicator;Ljava/util/Locale;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-instance v8, Lcom/opencsv/validators/LineValidatorAggregator;

    invoke-direct {v8}, Lcom/opencsv/validators/LineValidatorAggregator;-><init>()V

    new-instance v9, Lcom/opencsv/validators/RowValidatorAggregator;

    invoke-direct {v9}, Lcom/opencsv/validators/RowValidatorAggregator;-><init>()V

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 85
    invoke-direct/range {v0 .. v10}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;Lcom/opencsv/validators/LineValidatorAggregator;Lcom/opencsv/validators/RowValidatorAggregator;Lcom/opencsv/processor/RowProcessor;)V

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;Lcom/opencsv/validators/LineValidatorAggregator;Lcom/opencsv/validators/RowValidatorAggregator;Lcom/opencsv/processor/RowProcessor;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/opencsv/CSVReader;->multilineLimit:I

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, p0, Lcom/opencsv/CSVReader;->linesRead:J

    .line 72
    iput-wide v0, p0, Lcom/opencsv/CSVReader;->recordsRead:J

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/opencsv/CSVReader;->peekedLine:[Ljava/lang/String;

    .line 121
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    .line 125
    new-instance p1, Lcom/opencsv/stream/reader/LineReader;

    iget-object v0, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-direct {p1, v0, p4}, Lcom/opencsv/stream/reader/LineReader;-><init>(Ljava/io/BufferedReader;Z)V

    iput-object p1, p0, Lcom/opencsv/CSVReader;->lineReader:Lcom/opencsv/stream/reader/LineReader;

    .line 126
    iput p2, p0, Lcom/opencsv/CSVReader;->skipLines:I

    .line 127
    iput-object p3, p0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    .line 128
    iput-boolean p4, p0, Lcom/opencsv/CSVReader;->keepCR:Z

    .line 129
    iput-boolean p5, p0, Lcom/opencsv/CSVReader;->verifyReader:Z

    .line 130
    iput p6, p0, Lcom/opencsv/CSVReader;->multilineLimit:I

    .line 131
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p7, p1}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    .line 132
    iput-object p8, p0, Lcom/opencsv/CSVReader;->lineValidatorAggregator:Lcom/opencsv/validators/LineValidatorAggregator;

    .line 133
    iput-object p9, p0, Lcom/opencsv/CSVReader;->rowValidatorAggregator:Lcom/opencsv/validators/RowValidatorAggregator;

    .line 134
    iput-object p10, p0, Lcom/opencsv/CSVReader;->rowProcessor:Lcom/opencsv/processor/RowProcessor;

    return-void
.end method

.method private readNext(Z)[Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 232
    iget-object v2, v0, Lcom/opencsv/CSVReader;->peekedLine:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 234
    iput-object v3, v0, Lcom/opencsv/CSVReader;->peekedLine:[Ljava/lang/String;

    return-object v2

    .line 240
    :cond_0
    iget-wide v4, v0, Lcom/opencsv/CSVReader;->linesRead:J

    const/4 v2, 0x0

    move v6, v2

    .line 242
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/opencsv/CSVReader;->getNextLine()Ljava/lang/String;

    move-result-object v7

    .line 243
    invoke-direct {v0, v1, v4, v5, v7}, Lcom/opencsv/CSVReader;->validateLine(ZJLjava/lang/String;)V

    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 245
    iget-boolean v9, v0, Lcom/opencsv/CSVReader;->hasNext:Z

    const-string v10, "opencsv"

    const/16 v11, 0x64

    const-wide/16 v12, 0x1

    if-nez v9, :cond_3

    .line 246
    iget-object v6, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v6}, Lcom/opencsv/ICSVParser;->isPending()Z

    move-result v6

    if-nez v6, :cond_2

    add-long/2addr v4, v12

    .line 251
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/opencsv/CSVReader;->validateResult([Ljava/lang/String;JZ)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 247
    :cond_2
    new-instance v1, Lcom/opencsv/exceptions/CsvMalformedLineException;

    iget-object v3, v0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    .line 248
    invoke-static {v10, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v6, "unterminated.quote"

    invoke-virtual {v3, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    .line 249
    invoke-interface {v7}, Lcom/opencsv/ICSVParser;->getPendingText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 247
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-long/2addr v4, v12

    iget-object v3, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    .line 249
    invoke-interface {v3}, Lcom/opencsv/ICSVParser;->getPendingText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/opencsv/exceptions/CsvMalformedLineException;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    throw v1

    .line 253
    :cond_3
    iget v9, v0, Lcom/opencsv/CSVReader;->multilineLimit:I

    if-lez v9, :cond_5

    if-le v6, v9, :cond_5

    .line 256
    iget-wide v3, v0, Lcom/opencsv/CSVReader;->recordsRead:J

    add-long v16, v3, v12

    .line 258
    iget-object v1, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v1}, Lcom/opencsv/ICSVParser;->getPendingText()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v11, :cond_4

    .line 263
    invoke-virtual {v1, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 266
    :cond_4
    iget-object v3, v0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    invoke-static {v10, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3

    const-string v4, "multiline.limit.broken"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    iget-object v4, v0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/opencsv/CSVReader;->multilineLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x2

    aput-object v1, v5, v2

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 268
    new-instance v1, Lcom/opencsv/exceptions/CsvMultilineLimitBrokenException;

    iget-object v2, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v2}, Lcom/opencsv/ICSVParser;->getPendingText()Ljava/lang/String;

    move-result-object v18

    iget v2, v0, Lcom/opencsv/CSVReader;->multilineLimit:I

    move-object v14, v1

    move/from16 v19, v2

    invoke-direct/range {v14 .. v19}, Lcom/opencsv/exceptions/CsvMultilineLimitBrokenException;-><init>(Ljava/lang/String;JLjava/lang/String;I)V

    throw v1

    .line 270
    :cond_5
    iget-object v8, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v8, v7}, Lcom/opencsv/ICSVParser;->parseLineMulti(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 271
    array-length v8, v7

    if-lez v8, :cond_7

    if-nez v3, :cond_6

    move-object v3, v7

    goto :goto_0

    .line 275
    :cond_6
    invoke-virtual {v0, v3, v7}, Lcom/opencsv/CSVReader;->combineResultsFromMultipleReads([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 278
    :cond_7
    :goto_0
    iget-object v7, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v7}, Lcom/opencsv/ICSVParser;->isPending()Z

    move-result v7

    if-nez v7, :cond_1

    add-long/2addr v4, v12

    .line 280
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/opencsv/CSVReader;->validateResult([Ljava/lang/String;JZ)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private validateLine(ZJLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 286
    :try_start_0
    iget-object p1, p0, Lcom/opencsv/CSVReader;->lineValidatorAggregator:Lcom/opencsv/validators/LineValidatorAggregator;

    invoke-virtual {p1, p4}, Lcom/opencsv/validators/LineValidatorAggregator;->validate(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/opencsv/exceptions/CsvValidationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    .line 288
    invoke-virtual {p1, p2, p3}, Lcom/opencsv/exceptions/CsvValidationException;->setLineNumber(J)V

    .line 289
    throw p1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method protected combineResultsFromMultipleReads([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 328
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 329
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getLinesRead()J
    .locals 2

    .line 483
    iget-wide v0, p0, Lcom/opencsv/CSVReader;->linesRead:J

    return-wide v0
.end method

.method public getMultilineLimit()I
    .locals 1

    .line 369
    iget v0, p0, Lcom/opencsv/CSVReader;->multilineLimit:I

    return v0
.end method

.method protected getNextLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lcom/opencsv/CSVReader;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 343
    iput-boolean v2, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    return-object v1

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/opencsv/CSVReader;->linesSkipped:Z

    const-wide/16 v3, 0x1

    if-nez v0, :cond_2

    move v0, v2

    .line 348
    :goto_0
    iget v5, p0, Lcom/opencsv/CSVReader;->skipLines:I

    if-ge v0, v5, :cond_1

    .line 349
    iget-object v5, p0, Lcom/opencsv/CSVReader;->lineReader:Lcom/opencsv/stream/reader/LineReader;

    invoke-virtual {v5}, Lcom/opencsv/stream/reader/LineReader;->readLine()Ljava/lang/String;

    .line 350
    iget-wide v5, p0, Lcom/opencsv/CSVReader;->linesRead:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/opencsv/CSVReader;->linesRead:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcom/opencsv/CSVReader;->linesSkipped:Z

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/opencsv/CSVReader;->lineReader:Lcom/opencsv/stream/reader/LineReader;

    invoke-virtual {v0}, Lcom/opencsv/stream/reader/LineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 356
    iput-boolean v2, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    goto :goto_1

    .line 358
    :cond_3
    iget-wide v5, p0, Lcom/opencsv/CSVReader;->linesRead:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/opencsv/CSVReader;->linesRead:J

    .line 361
    :goto_1
    iget-boolean v2, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    if-eqz v2, :cond_4

    move-object v1, v0

    :cond_4
    return-object v1
.end method

.method public getParser()Lcom/opencsv/ICSVParser;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    return-object v0
.end method

.method public getRecordsRead()J
    .locals 2

    .line 521
    iget-wide v0, p0, Lcom/opencsv/CSVReader;->recordsRead:J

    return-wide v0
.end method

.method public getSkipLines()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/opencsv/CSVReader;->skipLines:I

    return v0
.end method

.method protected isClosed()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iget-boolean v0, p0, Lcom/opencsv/CSVReader;->verifyReader:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 393
    :try_start_0
    iget-object v2, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->mark(I)V

    .line 394
    iget-object v2, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v2

    .line 395
    iget-object v3, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v1, v0

    :cond_1
    return v1

    :catch_0
    move-exception v1

    .line 398
    sget-object v2, Lcom/opencsv/CSVReader;->PASSTHROUGH_EXCEPTIONS:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 399
    :cond_2
    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 423
    :try_start_0
    new-instance v0, Lcom/opencsv/CSVIterator;

    invoke-direct {v0, p0}, Lcom/opencsv/CSVIterator;-><init>(Lcom/opencsv/CSVReader;)V

    .line 424
    iget-object v1, p0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVIterator;->setErrorLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/opencsv/exceptions/CsvValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 427
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public keepCarriageReturns()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/opencsv/CSVReader;->keepCR:Z

    return v0
.end method

.method public peek()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/opencsv/CSVReader;->peekedLine:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/opencsv/CSVReader;->readNextSilently()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVReader;->peekedLine:[Ljava/lang/String;

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/opencsv/CSVReader;->peekedLine:[Ljava/lang/String;

    return-object v0
.end method

.method public readAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvException;
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 178
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readNext()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 197
    invoke-direct {p0, v0}, Lcom/opencsv/CSVReader;->readNext(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readNextSilently()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 211
    :try_start_0
    invoke-direct {p0, v0}, Lcom/opencsv/CSVReader;->readNext(Z)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/opencsv/exceptions/CsvValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 213
    new-instance v1, Lcom/opencsv/exceptions/CsvRuntimeException;

    const-string v2, "A CSValidationException was thrown from the runNextSilently method which should not happen"

    invoke-direct {v1, v2, v0}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1

    .line 543
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    .line 544
    iget-object v0, p0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    if-eqz v0, :cond_0

    .line 545
    invoke-interface {v0, p1}, Lcom/opencsv/ICSVParser;->setErrorLocale(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method public skip(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/opencsv/CSVReader;->readNextSilently()[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected validateResult([Ljava/lang/String;JZ)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    .line 306
    iget-object p4, p0, Lcom/opencsv/CSVReader;->rowProcessor:Lcom/opencsv/processor/RowProcessor;

    if-eqz p4, :cond_0

    .line 307
    invoke-interface {p4, p1}, Lcom/opencsv/processor/RowProcessor;->processRow([Ljava/lang/String;)V

    .line 310
    :cond_0
    :try_start_0
    iget-object p4, p0, Lcom/opencsv/CSVReader;->rowValidatorAggregator:Lcom/opencsv/validators/RowValidatorAggregator;

    invoke-virtual {p4, p1}, Lcom/opencsv/validators/RowValidatorAggregator;->validate([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/opencsv/exceptions/CsvValidationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p1, p2, p3}, Lcom/opencsv/exceptions/CsvValidationException;->setLineNumber(J)V

    .line 313
    throw p1

    .line 316
    :cond_1
    :goto_0
    iget-wide p2, p0, Lcom/opencsv/CSVReader;->recordsRead:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/opencsv/CSVReader;->recordsRead:J

    :cond_2
    return-object p1
.end method

.method public verifyReader()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/opencsv/CSVReader;->verifyReader:Z

    return v0
.end method
