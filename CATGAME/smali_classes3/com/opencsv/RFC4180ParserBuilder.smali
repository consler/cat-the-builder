.class public Lcom/opencsv/RFC4180ParserBuilder;
.super Ljava/lang/Object;
.source "RFC4180ParserBuilder.java"


# instance fields
.field private nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field private quoteChar:C

.field private separator:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/opencsv/RFC4180ParserBuilder;->separator:C

    .line 22
    const/16 v0, 0x22

    iput-char v0, p0, Lcom/opencsv/RFC4180ParserBuilder;->quoteChar:C

    .line 23
    sget-object v0, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    iput-object v0, p0, Lcom/opencsv/RFC4180ParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 29
    return-void
.end method


# virtual methods
.method public build()Lcom/opencsv/RFC4180Parser;
    .locals 4

    .line 59
    new-instance v0, Lcom/opencsv/RFC4180Parser;

    iget-char v1, p0, Lcom/opencsv/RFC4180ParserBuilder;->quoteChar:C

    iget-char v2, p0, Lcom/opencsv/RFC4180ParserBuilder;->separator:C

    iget-object v3, p0, Lcom/opencsv/RFC4180ParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-direct {v0, v1, v2, v3}, Lcom/opencsv/RFC4180Parser;-><init>(CCLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V

    return-object v0
.end method

.method public getQuoteChar()C
    .locals 1

    .line 42
    iget-char v0, p0, Lcom/opencsv/RFC4180ParserBuilder;->quoteChar:C

    return v0
.end method

.method public getSeparator()C
    .locals 1

    .line 35
    iget-char v0, p0, Lcom/opencsv/RFC4180ParserBuilder;->separator:C

    return v0
.end method

.method public nullFieldIndicator()Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/opencsv/RFC4180ParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object v0
.end method

.method public withFieldAsNull(Lcom/opencsv/enums/CSVReaderNullFieldIndicator;)Lcom/opencsv/RFC4180ParserBuilder;
    .locals 0
    .param p1, "fieldIndicator"    # Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 95
    iput-object p1, p0, Lcom/opencsv/RFC4180ParserBuilder;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 96
    return-object p0
.end method

.method public withQuoteChar(C)Lcom/opencsv/RFC4180ParserBuilder;
    .locals 0
    .param p1, "quoteChar"    # C

    .line 84
    iput-char p1, p0, Lcom/opencsv/RFC4180ParserBuilder;->quoteChar:C

    .line 85
    return-object p0
.end method

.method public withSeparator(C)Lcom/opencsv/RFC4180ParserBuilder;
    .locals 0
    .param p1, "separator"    # C

    .line 71
    iput-char p1, p0, Lcom/opencsv/RFC4180ParserBuilder;->separator:C

    .line 72
    return-object p0
.end method
