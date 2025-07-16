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

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/opencsv/CSVParserBuilder;

    invoke-direct {v0}, Lcom/opencsv/CSVParserBuilder;-><init>()V

    iput-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->parserBuilder:Lcom/opencsv/CSVParserBuilder;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/opencsv/CSVReaderBuilder;->skipLines:I

    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Lcom/opencsv/CSVReaderBuilder;->icsvParser:Lcom/opencsv/ICSVParser;

    const/4 v2, 0x1

    .line 59
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

    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->reader:Ljava/io/Reader;

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "opencsv"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "reader.null"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/opencsv/CSVReader;
    .locals 12

    .line 147
    invoke-virtual {p0}, Lcom/opencsv/CSVReaderBuilder;->getOrCreateCsvParser()Lcom/opencsv/ICSVParser;

    move-result-object v3

    .line 148
    new-instance v11, Lcom/opencsv/CSVReader;

    iget-object v1, p0, Lcom/opencsv/CSVReaderBuilder;->reader:Ljava/io/Reader;

    iget v2, p0, Lcom/opencsv/CSVReaderBuilder;->skipLines:I

    iget-boolean v4, p0, Lcom/opencsv/CSVReaderBuilder;->keepCR:Z

    iget-boolean v5, p0, Lcom/opencsv/CSVReaderBuilder;->verifyReader:Z

    iget v6, p0, Lcom/opencsv/CSVReaderBuilder;->multilineLimit:I

    iget-object v7, p0, Lcom/opencsv/CSVReaderBuilder;->errorLocale:Ljava/util/Locale;

    iget-object v8, p0, Lcom/opencsv/CSVReaderBuilder;->lineValidatorAggregator:Lcom/opencsv/validators/LineValidatorAggregator;

    iget-object v9, p0, Lcom/opencsv/CSVReaderBuilder;->rowValidatorAggregator:Lcom/opencsv/validators/RowValidatorAggregator;

    iget-object v10, p0, Lcom/opencsv/CSVReaderBuilder;->rowProcessor:Lcom/opencsv/processor/RowProcessor;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;ILcom/opencsv/ICSVParser;ZZILjava/util/Locale;Lcom/opencsv/validators/LineValidatorAggregator;Lcom/opencsv/validators/RowValidatorAggregator;Lcom/opencsv/processor/RowProcessor;)V

    return-object v11
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

    .line 137
    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->icsvParser:Lcom/opencsv/ICSVParser;

    return-object p0
.end method

.method public withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVReaderBuilder;
    .locals 1

    .line 241
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->errorLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/CSVReaderBuilder;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object p0
.end method

.method public withKeepCarriageReturn(Z)Lcom/opencsv/CSVReaderBuilder;
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/opencsv/CSVReaderBuilder;->keepCR:Z

    return-object p0
.end method

.method public withLineValidator(Lcom/opencsv/validators/LineValidator;)Lcom/opencsv/CSVReaderBuilder;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->lineValidatorAggregator:Lcom/opencsv/validators/LineValidatorAggregator;

    invoke-virtual {v0, p1}, Lcom/opencsv/validators/LineValidatorAggregator;->addValidator(Lcom/opencsv/validators/LineValidator;)V

    return-object p0
.end method

.method public withMultilineLimit(I)Lcom/opencsv/CSVReaderBuilder;
    .locals 0

    .line 229
    iput p1, p0, Lcom/opencsv/CSVReaderBuilder;->multilineLimit:I

    return-object p0
.end method

.method public withRowProcessor(Lcom/opencsv/processor/RowProcessor;)Lcom/opencsv/CSVReaderBuilder;
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/opencsv/CSVReaderBuilder;->rowProcessor:Lcom/opencsv/processor/RowProcessor;

    return-object p0
.end method

.method public withRowValidator(Lcom/opencsv/validators/RowValidator;)Lcom/opencsv/CSVReaderBuilder;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/opencsv/CSVReaderBuilder;->rowValidatorAggregator:Lcom/opencsv/validators/RowValidatorAggregator;

    invoke-virtual {v0, p1}, Lcom/opencsv/validators/RowValidatorAggregator;->addValidator(Lcom/opencsv/validators/RowValidator;)V

    return-object p0
.end method

.method public withSkipLines(I)Lcom/opencsv/CSVReaderBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/opencsv/CSVReaderBuilder;->skipLines:I

    return-object p0
.end method

.method public withVerifyReader(Z)Lcom/opencsv/CSVReaderBuilder;
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/opencsv/CSVReaderBuilder;->verifyReader:Z

    return-object p0
.end method
