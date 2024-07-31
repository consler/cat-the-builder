.class public Lcom/opencsv/CSVReaderBuilder;
.super Ljava/lang/Object;
.source "CSVReaderBuilder.java"


# instance fields
.field private errorLocale:Ljava/util/Locale;

.field private icsvParser:Lcom/opencsv/ICSVParser;

.field private keepCR:Z

.field private lineValidatorAggregator:Lcom/opencsv/validators/LineValidatorAggregator;

.field private multilineLimit:I

.field private nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field private final parserBuilder:Lcom/opencsv/CSVParserBuilder;

.field private final reader:Ljava/io/Reader;

.field private rowProcessor:Lcom/opencsv/processor/RowProcessor;

.field private rowValidatorAggregator:Lcom/opencsv/validators/RowValidatorAggregator;

.field private skipLines:I

.field private verifyReader:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/opencsv/CSVParserBuilder;

    invoke-direct {v0}, Lcom/opencsv/CSVParserBuilder;-><init>()V

    iput-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->parserBuilder:Lcom/opencsv/CSVParserBuilder;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/opencsv/CSVReaderBuilder;->skipLines:I

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/opencsv/CSVReaderBuilder;->icsvParser:Lcom/opencsv/ICSVParser;

    .line 59
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/opencsv/CSVReaderBuilder;->verifyReader:Z

    .line 60
    sget-object v2, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    iput-object v2, p0, Lcom/opencsv/CSVReaderBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 61
    iput v0, p0, Lcom/opencsv/CSVReaderBuilder;->multilineLimit:I

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->errorLocale:Ljava/util/Locale;

    .line 63
    new-instance v0, Lcom/opencsv/validators/LineValidatorAggregator;

    invoke-direct {v0}, Lcom/opencsv/validators/LineValidatorAggregator;-><init>()V

    iput-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->lineValidatorAggregator:Lcom/opencsv/validators/LineValidatorAggregator;

    .line 64
    new-instance v0, Lcom/opencsv/validators/RowValidatorAggregator;

    invoke-direct {v0}, Lcom/opencsv/validators/RowValidatorAggregator;-><init>()V

    iput-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->rowValidatorAggregator:Lcom/opencsv/validators/RowValidatorAggregator;

    .line 65
    iput-object v1, p0, Lcom/opencsv/CSVReaderBuilder;->rowProcessor:Lcom/opencsv/processor/RowProcessor;

    .line 74
    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->reader:Ljava/io/Reader;

    .line 78
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "opencsv"

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "reader.null"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/opencsv/CSVReader;
    .locals 13

    .line 147
    invoke-virtual {p0}, Lcom/opencsv/CSVReaderBuilder;->getOrCreateCsvParser()Lcom/opencsv/ICSVParser;

    move-result-object v11

    .line 148
    .local v11, "parser":Lcom/opencsv/ICSVParser;
    new-instance v12, Lcom/opencsv/CSVReader;

    iget-object v1, p0, Lcom/opencsv/CSVReaderBuilder;->reader:Ljava/io/Reader;

    iget v2, p0, Lcom/opencsv/CSVReaderBuilder;->skipLines:I

    iget-boolean v4, p0, Lcom/opencsv/CSVReaderBuilder;->keepCR:Z

    iget-boolean v5, p0, Lcom/opencsv/CSVReaderBuilder;->verifyReader:Z

    iget v6, p0, Lcom/opencsv/CSVReaderBuilder;->multilineLimit:I

    iget-object v7, p0, Lcom/opencsv/CSVReaderBuilder;->errorLocale:Ljava/util/Locale;

    iget-object v8, p0, Lcom/opencsv/CSVReaderBuilder;->lineValidatorAggregator:Lcom/opencsv/validators/LineValidatorAggregator;

    iget-object v9, p0, Lcom/opencsv/CSVReaderBuilder;->rowValidatorAggregator:Lcom/opencsv/validators/RowValidatorAggregator;

    iget-object v10, p0, Lcom/opencsv/CSVReaderBuilder;->rowProcessor:Lcom/opencsv/processor/RowProcessor;

    move-object v0, v12

    move-object v3, v11

    invoke-direct/range {v0 .. v10}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;Lcom/opencsv/validators/LineValidatorAggregator;Lcom/opencsv/validators/RowValidatorAggregator;Lcom/opencsv/processor/RowProcessor;)V

    return-object v12
.end method

.method protected getCsvParser()Lcom/opencsv/ICSVParser;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->icsvParser:Lcom/opencsv/ICSVParser;

    return-object v0
.end method

.method public getErrorLocale()Ljava/util/Locale;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->errorLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLineValidatorAggregator()Lcom/opencsv/validators/LineValidatorAggregator;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->lineValidatorAggregator:Lcom/opencsv/validators/LineValidatorAggregator;

    return-object v0
.end method

.method protected getMultilineLimit()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/opencsv/CSVReaderBuilder;->multilineLimit:I

    return v0
.end method

.method protected getOrCreateCsvParser()Lcom/opencsv/ICSVParser;
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->icsvParser:Lcom/opencsv/ICSVParser;

    iget-object v1, p0, Lcom/opencsv/CSVReaderBuilder;->parserBuilder:Lcom/opencsv/CSVParserBuilder;

    iget-object v2, p0, Lcom/opencsv/CSVReaderBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 180
    invoke-virtual {v1, v2}, Lcom/opencsv/CSVParserBuilder;->withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/CSVParserBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/opencsv/CSVReaderBuilder;->errorLocale:Ljava/util/Locale;

    .line 181
    invoke-virtual {v1, v2}, Lcom/opencsv/CSVParserBuilder;->withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVParserBuilder;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/opencsv/CSVParserBuilder;->build()Lcom/opencsv/CSVParser;

    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/ICSVParser;

    return-object v0
.end method

.method protected getReader()Ljava/io/Reader;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public getRowValidatorAggregator()Lcom/opencsv/validators/RowValidatorAggregator;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->rowValidatorAggregator:Lcom/opencsv/validators/RowValidatorAggregator;

    return-object v0
.end method

.method protected getSkipLines()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/opencsv/CSVReaderBuilder;->skipLines:I

    return v0
.end method

.method public isVerifyReader()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/opencsv/CSVReaderBuilder;->verifyReader:Z

    return v0
.end method

.method protected keepCarriageReturn()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/opencsv/CSVReaderBuilder;->keepCR:Z

    return v0
.end method

.method public withCSVParser(Lcom/opencsv/ICSVParser;)Lcom/opencsv/CSVReaderBuilder;
    .locals 0
    .param p1, "icsvParser"    # Lcom/opencsv/ICSVParser;

    .line 137
    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->icsvParser:Lcom/opencsv/ICSVParser;

    .line 138
    return-object p0
.end method

.method public withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVReaderBuilder;
    .locals 1
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 241
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->errorLocale:Ljava/util/Locale;

    .line 242
    return-object p0
.end method

.method public withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/CSVReaderBuilder;
    .locals 0
    .param p1, "indicator"    # Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 216
    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 217
    return-object p0
.end method

.method public withKeepCarriageReturn(Z)Lcom/opencsv/CSVReaderBuilder;
    .locals 0
    .param p1, "keepCR"    # Z

    .line 159
    iput-boolean p1, p0, Lcom/opencsv/CSVReaderBuilder;->keepCR:Z

    .line 160
    return-object p0
.end method

.method public withLineValidator(Lcom/opencsv/validators/LineValidator;)Lcom/opencsv/CSVReaderBuilder;
    .locals 1
    .param p1, "lineValidator"    # Lcom/opencsv/validators/LineValidator;

    .line 275
    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->lineValidatorAggregator:Lcom/opencsv/validators/LineValidatorAggregator;

    invoke-virtual {v0, p1}, Lcom/opencsv/validators/LineValidatorAggregator;->addValidator(Lcom/opencsv/validators/LineValidator;)V

    .line 276
    return-object p0
.end method

.method public withMultilineLimit(I)Lcom/opencsv/CSVReaderBuilder;
    .locals 0
    .param p1, "multilineLimit"    # I

    .line 229
    iput p1, p0, Lcom/opencsv/CSVReaderBuilder;->multilineLimit:I

    .line 230
    return-object p0
.end method

.method public withRowProcessor(Lcom/opencsv/processor/RowProcessor;)Lcom/opencsv/CSVReaderBuilder;
    .locals 0
    .param p1, "rowProcessor"    # Lcom/opencsv/processor/RowProcessor;

    .line 302
    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->rowProcessor:Lcom/opencsv/processor/RowProcessor;

    .line 303
    return-object p0
.end method

.method public withRowValidator(Lcom/opencsv/validators/RowValidator;)Lcom/opencsv/CSVReaderBuilder;
    .locals 1
    .param p1, "rowValidator"    # Lcom/opencsv/validators/RowValidator;

    .line 288
    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->rowValidatorAggregator:Lcom/opencsv/validators/RowValidatorAggregator;

    invoke-virtual {v0, p1}, Lcom/opencsv/validators/RowValidatorAggregator;->addValidator(Lcom/opencsv/validators/RowValidator;)V

    .line 289
    return-object p0
.end method

.method public withSkipLines(I)Lcom/opencsv/CSVReaderBuilder;
    .locals 1
    .param p1, "skipLines"    # I

    .line 124
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/opencsv/CSVReaderBuilder;->skipLines:I

    .line 125
    return-object p0
.end method

.method public withVerifyReader(Z)Lcom/opencsv/CSVReaderBuilder;
    .locals 0
    .param p1, "verifyReader"    # Z

    .line 198
    iput-boolean p1, p0, Lcom/opencsv/CSVReaderBuilder;->verifyReader:Z

    .line 199
    return-object p0
.end method
