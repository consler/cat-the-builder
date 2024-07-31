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

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

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

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 12
    .param p1, "reader"    # Ljava/io/Reader;

    .line 85
    new-instance v9, Lcom/opencsv/CSVParser;

    sget-object v7, Lcom/opencsv/ICSVParser;->DEFAULT_NULL_FIELD_INDICATOR:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const/16 v1, 0x2c

    const/16 v2, 0x22

    const/16 v3, 0x5c

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/opencsv/CSVParser;-><init>(CCCZZZLcom/opencsv/enums/CSVReaderNullFieldIndicator;Ljava/util/Locale;)V

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-instance v8, Lcom/opencsv/validators/LineValidatorAggregator;

    invoke-direct {v8}, Lcom/opencsv/validators/LineValidatorAggregator;-><init>()V

    new-instance v10, Lcom/opencsv/validators/RowValidatorAggregator;

    invoke-direct {v10}, Lcom/opencsv/validators/RowValidatorAggregator;-><init>()V

    .line 85
    const/4 v2, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v9

    move-object v9, v10

    move-object v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;Lcom/opencsv/validators/LineValidatorAggregator;Lcom/opencsv/validators/RowValidatorAggregator;Lcom/opencsv/processor/RowProcessor;)V

    .line 101
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;Lcom/opencsv/validators/LineValidatorAggregator;Lcom/opencsv/validators/RowValidatorAggregator;Lcom/opencsv/processor/RowProcessor;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "line"    # I
    .param p3, "icsvParser"    # Lcom/opencsv/ICSVParser;
    .param p4, "keepCR"    # Z
    .param p5, "verifyReader"    # Z
    .param p6, "multilineLimit"    # I
    .param p7, "errorLocale"    # Ljava/util/Locale;
    .param p8, "lineValidatorAggregator"    # Lcom/opencsv/validators/LineValidatorAggregator;
    .param p9, "rowValidatorAggregator"    # Lcom/opencsv/validators/RowValidatorAggregator;
    .param p10, "rowProcessor"    # Lcom/opencsv/processor/RowProcessor;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/opencsv/CSVReader;->multilineLimit:I

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/opencsv/CSVReader;->linesRead:J

    .line 72
    iput-wide v0, p0, Lcom/opencsv/CSVReader;->recordsRead:J

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/CSVReader;->peekedLine:[Ljava/lang/String;

    .line 121
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    iput-object v0, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    .line 125
    new-instance v1, Lcom/opencsv/stream/reader/LineReader;

    invoke-direct {v1, v0, p4}, Lcom/opencsv/stream/reader/LineReader;-><init>(Ljava/io/BufferedReader;Z)V

    iput-object v1, p0, Lcom/opencsv/CSVReader;->lineReader:Lcom/opencsv/stream/reader/LineReader;

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

    move-result-object v0

    invoke-static {p7, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    .line 132
    iput-object p8, p0, Lcom/opencsv/CSVReader;->lineValidatorAggregator:Lcom/opencsv/validators/LineValidatorAggregator;

    .line 133
    iput-object p9, p0, Lcom/opencsv/CSVReader;->rowValidatorAggregator:Lcom/opencsv/validators/RowValidatorAggregator;

    .line 134
    iput-object p10, p0, Lcom/opencsv/CSVReader;->rowProcessor:Lcom/opencsv/processor/RowProcessor;

    .line 135
    return-void
.end method

.method private readNext(Z)[Ljava/lang/String;
    .locals 22
    .param p1, "validateData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 232
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/opencsv/CSVReader;->peekedLine:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, v0, Lcom/opencsv/CSVReader;->peekedLine:[Ljava/lang/String;

    .line 234
    .local v2, "l":[Ljava/lang/String;
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/opencsv/CSVReader;->peekedLine:[Ljava/lang/String;

    .line 235
    return-object v2

    .line 238
    .end local v2    # "l":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 239
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 240
    .local v3, "linesInThisRecord":I
    iget-wide v4, v0, Lcom/opencsv/CSVReader;->linesRead:J

    .line 242
    .local v4, "lastSuccessfulLineRead":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/opencsv/CSVReader;->getNextLine()Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "nextLine":Ljava/lang/String;
    invoke-direct {v0, v1, v4, v5, v6}, Lcom/opencsv/CSVReader;->validateLine(ZJLjava/lang/String;)V

    .line 244
    const/4 v7, 0x1

    add-int/2addr v3, v7

    .line 245
    iget-boolean v8, v0, Lcom/opencsv/CSVReader;->hasNext:Z

    const-string v9, "opencsv"

    const/16 v10, 0x64

    const/4 v11, 0x0

    const-wide/16 v12, 0x1

    if-nez v8, :cond_2

    .line 246
    iget-object v8, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v8}, Lcom/opencsv/ICSVParser;->isPending()Z

    move-result v8

    if-nez v8, :cond_1

    .line 251
    add-long/2addr v12, v4

    invoke-virtual {v0, v2, v12, v13, v1}, Lcom/opencsv/CSVReader;->validateResult([Ljava/lang/String;JZ)[Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 247
    :cond_1
    new-instance v8, Lcom/opencsv/exceptions/CsvMalformedLineException;

    iget-object v14, v0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    .line 248
    invoke-static {v9, v14}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v9

    const-string v14, "unterminated.quote"

    invoke-virtual {v9, v14}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v14, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    .line 249
    invoke-interface {v14}, Lcom/opencsv/ICSVParser;->getPendingText()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v10}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v11

    .line 247
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    add-long/2addr v12, v4

    iget-object v9, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    .line 249
    invoke-interface {v9}, Lcom/opencsv/ICSVParser;->getPendingText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v12, v13, v9}, Lcom/opencsv/exceptions/CsvMalformedLineException;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    throw v8

    .line 253
    :cond_2
    iget v8, v0, Lcom/opencsv/CSVReader;->multilineLimit:I

    if-lez v8, :cond_4

    if-le v3, v8, :cond_4

    .line 256
    iget-wide v14, v0, Lcom/opencsv/CSVReader;->recordsRead:J

    add-long/2addr v14, v12

    .line 258
    .local v14, "row":J
    iget-object v8, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v8}, Lcom/opencsv/ICSVParser;->getPendingText()Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, "context":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v10, :cond_3

    .line 263
    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 266
    :cond_3
    iget-object v10, v0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    invoke-static {v9, v10}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v9

    const-string v10, "multiline.limit.broken"

    invoke-virtual {v9, v10}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "messageFormat":Ljava/lang/String;
    iget-object v10, v0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    iget v13, v0, Lcom/opencsv/CSVReader;->multilineLimit:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v12, v7

    const/4 v7, 0x2

    aput-object v8, v12, v7

    invoke-static {v10, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, "message":Ljava/lang/String;
    new-instance v10, Lcom/opencsv/exceptions/CsvMultilineLimitBrokenException;

    iget-object v11, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v11}, Lcom/opencsv/ICSVParser;->getPendingText()Ljava/lang/String;

    move-result-object v20

    iget v11, v0, Lcom/opencsv/CSVReader;->multilineLimit:I

    move-object/from16 v16, v10

    move-object/from16 v17, v7

    move-wide/from16 v18, v14

    move/from16 v21, v11

    invoke-direct/range {v16 .. v21}, Lcom/opencsv/exceptions/CsvMultilineLimitBrokenException;-><init>(Ljava/lang/String;JLjava/lang/String;I)V

    throw v10

    .line 270
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "context":Ljava/lang/String;
    .end local v9    # "messageFormat":Ljava/lang/String;
    .end local v14    # "row":J
    :cond_4
    iget-object v7, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v7, v6}, Lcom/opencsv/ICSVParser;->parseLineMulti(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "r":[Ljava/lang/String;
    array-length v8, v7

    if-lez v8, :cond_6

    .line 272
    if-nez v2, :cond_5

    .line 273
    move-object v2, v7

    goto :goto_1

    .line 275
    :cond_5
    invoke-virtual {v0, v2, v7}, Lcom/opencsv/CSVReader;->combineResultsFromMultipleReads([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 278
    .end local v6    # "nextLine":Ljava/lang/String;
    .end local v7    # "r":[Ljava/lang/String;
    :cond_6
    :goto_1
    iget-object v6, v0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v6}, Lcom/opencsv/ICSVParser;->isPending()Z

    move-result v6

    if-nez v6, :cond_7

    .line 280
    add-long/2addr v12, v4

    invoke-virtual {v0, v2, v12, v13, v1}, Lcom/opencsv/CSVReader;->validateResult([Ljava/lang/String;JZ)[Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 278
    :cond_7
    goto/16 :goto_0
.end method

.method private validateLine(ZJLjava/lang/String;)V
    .locals 3
    .param p1, "validateData"    # Z
    .param p2, "lastSuccessfulLineRead"    # J
    .param p4, "nextLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 284
    if-eqz p1, :cond_0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/opencsv/CSVReader;->lineValidatorAggregator:Lcom/opencsv/validators/LineValidatorAggregator;

    invoke-virtual {v0, p4}, Lcom/opencsv/validators/LineValidatorAggregator;->validate(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/opencsv/exceptions/CsvValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "cve":Lcom/opencsv/exceptions/CsvValidationException;
    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/opencsv/exceptions/CsvValidationException;->setLineNumber(J)V

    .line 289
    throw v0

    .line 292
    .end local v0    # "cve":Lcom/opencsv/exceptions/CsvValidationException;
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

    .line 414
    return-void
.end method

.method protected combineResultsFromMultipleReads([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "buffer"    # [Ljava/lang/String;
    .param p2, "lastRead"    # [Ljava/lang/String;

    .line 328
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 329
    .local v0, "t":[Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    array-length v1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
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

    .line 344
    return-object v1

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/opencsv/CSVReader;->linesSkipped:Z

    const-wide/16 v3, 0x1

    if-nez v0, :cond_2

    .line 348
    const/4 v0, 0x0

    .local v0, "i":I
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

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/opencsv/CSVReader;->linesSkipped:Z

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/opencsv/CSVReader;->lineReader:Lcom/opencsv/stream/reader/LineReader;

    invoke-virtual {v0}, Lcom/opencsv/stream/reader/LineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "nextLine":Ljava/lang/String;
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

    .line 390
    return v1

    .line 393
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->mark(I)V

    .line 394
    iget-object v2, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v2

    .line 395
    .local v2, "nextByte":I
    iget-object v3, p0, Lcom/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v1, v0

    :cond_1
    return v1

    .line 397
    .end local v2    # "nextByte":I
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/opencsv/CSVReader;->PASSTHROUGH_EXCEPTIONS:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 402
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
    .local v0, "it":Lcom/opencsv/CSVIterator;
    iget-object v1, p0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/opencsv/CSVIterator;->setErrorLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/opencsv/exceptions/CsvValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    return-object v0

    .line 426
    .end local v0    # "it":Lcom/opencsv/CSVIterator;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
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
    .local v0, "allElements":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :goto_0
    iget-boolean v1, p0, Lcom/opencsv/CSVReader;->hasNext:Z

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "nextLineAsTokens":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v1    # "nextLineAsTokens":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 184
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

    .line 197
    const/4 v0, 0x1

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

    .line 211
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/opencsv/CSVReader;->readNext(Z)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/opencsv/exceptions/CsvValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Lcom/opencsv/exceptions/CsvValidationException;
    new-instance v1, Lcom/opencsv/exceptions/CsvRuntimeException;

    const-string v2, "A CSValidationException was thrown from the runNextSilently method which should not happen"

    invoke-direct {v1, v2, v0}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 543
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/CSVReader;->errorLocale:Ljava/util/Locale;

    .line 544
    iget-object v1, p0, Lcom/opencsv/CSVReader;->parser:Lcom/opencsv/ICSVParser;

    if-eqz v1, :cond_0

    .line 545
    invoke-interface {v1, v0}, Lcom/opencsv/ICSVParser;->setErrorLocale(Ljava/util/Locale;)V

    .line 547
    :cond_0
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "numberOfLinesToSkip"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/opencsv/CSVReader;->readNextSilently()[Ljava/lang/String;

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "j":I
    :cond_0
    return-void
.end method

.method protected validateResult([Ljava/lang/String;JZ)[Ljava/lang/String;
    .locals 4
    .param p1, "result"    # [Ljava/lang/String;
    .param p2, "lineStartOfRow"    # J
    .param p4, "useRowValidators"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 304
    if-eqz p1, :cond_2

    .line 305
    if-eqz p4, :cond_1

    .line 306
    iget-object v0, p0, Lcom/opencsv/CSVReader;->rowProcessor:Lcom/opencsv/processor/RowProcessor;

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0, p1}, Lcom/opencsv/processor/RowProcessor;->processRow([Ljava/lang/String;)V

    .line 310
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/opencsv/CSVReader;->rowValidatorAggregator:Lcom/opencsv/validators/RowValidatorAggregator;

    invoke-virtual {v0, p1}, Lcom/opencsv/validators/RowValidatorAggregator;->validate([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/opencsv/exceptions/CsvValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "cve":Lcom/opencsv/exceptions/CsvValidationException;
    invoke-virtual {v0, p2, p3}, Lcom/opencsv/exceptions/CsvValidationException;->setLineNumber(J)V

    .line 313
    throw v0

    .line 316
    .end local v0    # "cve":Lcom/opencsv/exceptions/CsvValidationException;
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/opencsv/CSVReader;->recordsRead:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/opencsv/CSVReader;->recordsRead:J

    .line 318
    :cond_2
    return-object p1
.end method

.method public verifyReader()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/opencsv/CSVReader;->verifyReader:Z

    return v0
.end method
