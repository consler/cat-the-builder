.class public Lcom/opencsv/CSVParserBuilder;
.super Ljava/lang/Object;
.source "CSVParserBuilder.java"


# instance fields
.field private errorLocale:Ljava/util/Locale;

.field private escapeChar:C

.field private ignoreLeadingWhiteSpace:Z

.field private ignoreQuotations:Z

.field private nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field private quoteChar:C

.field private separator:C

.field private strictQuotes:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/opencsv/CSVParserBuilder;->separator:C

    .line 39
    const/16 v0, 0x22

    iput-char v0, p0, Lcom/opencsv/CSVParserBuilder;->quoteChar:C

    .line 40
    const/16 v0, 0x5c

    iput-char v0, p0, Lcom/opencsv/CSVParserBuilder;->escapeChar:C

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opencsv/CSVParserBuilder;->strictQuotes:Z

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/opencsv/CSVParserBuilder;->ignoreLeadingWhiteSpace:Z

    .line 43
    iput-boolean v0, p0, Lcom/opencsv/CSVParserBuilder;->ignoreQuotations:Z

    .line 44
    sget-object v0, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    iput-object v0, p0, Lcom/opencsv/CSVParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVParserBuilder;->errorLocale:Ljava/util/Locale;

    .line 52
    return-void
.end method


# virtual methods
.method public build()Lcom/opencsv/CSVParser;
    .locals 10

    .line 138
    new-instance v9, Lcom/opencsv/CSVParser;

    iget-char v1, p0, Lcom/opencsv/CSVParserBuilder;->separator:C

    iget-char v2, p0, Lcom/opencsv/CSVParserBuilder;->quoteChar:C

    iget-char v3, p0, Lcom/opencsv/CSVParserBuilder;->escapeChar:C

    iget-boolean v4, p0, Lcom/opencsv/CSVParserBuilder;->strictQuotes:Z

    iget-boolean v5, p0, Lcom/opencsv/CSVParserBuilder;->ignoreLeadingWhiteSpace:Z

    iget-boolean v6, p0, Lcom/opencsv/CSVParserBuilder;->ignoreQuotations:Z

    iget-object v7, p0, Lcom/opencsv/CSVParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    iget-object v8, p0, Lcom/opencsv/CSVParserBuilder;->errorLocale:Ljava/util/Locale;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/opencsv/CSVParser;-><init>(CCCZZZLcom/opencsv/enums/CSVReaderNullFieldIndicator;Ljava/util/Locale;)V

    return-object v9
.end method

.method public getEscapeChar()C
    .locals 1

    .line 167
    iget-char v0, p0, Lcom/opencsv/CSVParserBuilder;->escapeChar:C

    return v0
.end method

.method public getQuoteChar()C
    .locals 1

    .line 160
    iget-char v0, p0, Lcom/opencsv/CSVParserBuilder;->quoteChar:C

    return v0
.end method

.method public getSeparator()C
    .locals 1

    .line 153
    iget-char v0, p0, Lcom/opencsv/CSVParserBuilder;->separator:C

    return v0
.end method

.method public isIgnoreLeadingWhiteSpace()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/opencsv/CSVParserBuilder;->ignoreLeadingWhiteSpace:Z

    return v0
.end method

.method public isIgnoreQuotations()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/opencsv/CSVParserBuilder;->ignoreQuotations:Z

    return v0
.end method

.method public isStrictQuotes()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/opencsv/CSVParserBuilder;->strictQuotes:Z

    return v0
.end method

.method public nullFieldIndicator()Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/opencsv/CSVParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object v0
.end method

.method public withErrorLocale(Ljava/util/Locale;)Lcom/opencsv/CSVParserBuilder;
    .locals 1
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 210
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/CSVParserBuilder;->errorLocale:Ljava/util/Locale;

    .line 211
    return-object p0
.end method

.method public withEscapeChar(C)Lcom/opencsv/CSVParserBuilder;
    .locals 0
    .param p1, "escapeChar"    # C

    .line 88
    iput-char p1, p0, Lcom/opencsv/CSVParserBuilder;->escapeChar:C

    .line 89
    return-object p0
.end method

.method public withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/CSVParserBuilder;
    .locals 0
    .param p1, "fieldIndicator"    # Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 198
    iput-object p1, p0, Lcom/opencsv/CSVParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 199
    return-object p0
.end method

.method public withIgnoreLeadingWhiteSpace(Z)Lcom/opencsv/CSVParserBuilder;
    .locals 0
    .param p1, "ignoreLeadingWhiteSpace"    # Z

    .line 115
    iput-boolean p1, p0, Lcom/opencsv/CSVParserBuilder;->ignoreLeadingWhiteSpace:Z

    .line 116
    return-object p0
.end method

.method public withIgnoreQuotations(Z)Lcom/opencsv/CSVParserBuilder;
    .locals 0
    .param p1, "ignoreQuotations"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/opencsv/CSVParserBuilder;->ignoreQuotations:Z

    .line 128
    return-object p0
.end method

.method public withQuoteChar(C)Lcom/opencsv/CSVParserBuilder;
    .locals 0
    .param p1, "quoteChar"    # C

    .line 75
    iput-char p1, p0, Lcom/opencsv/CSVParserBuilder;->quoteChar:C

    .line 76
    return-object p0
.end method

.method public withSeparator(C)Lcom/opencsv/CSVParserBuilder;
    .locals 0
    .param p1, "separator"    # C

    .line 62
    iput-char p1, p0, Lcom/opencsv/CSVParserBuilder;->separator:C

    .line 63
    return-object p0
.end method

.method public withStrictQuotes(Z)Lcom/opencsv/CSVParserBuilder;
    .locals 0
    .param p1, "strictQuotes"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/opencsv/CSVParserBuilder;->strictQuotes:Z

    .line 103
    return-object p0
.end method
