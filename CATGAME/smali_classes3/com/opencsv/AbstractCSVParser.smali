.class public abstract Lcom/opencsv/AbstractCSVParser;
.super Ljava/lang/Object;
.source "AbstractCSVParser.java"

# interfaces
.implements Lcom/opencsv/ICSVParser;


# instance fields
.field protected final nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field protected pending:Ljava/lang/String;

.field protected final quotechar:C

.field protected final separator:C


# direct methods
.method public constructor <init>(CCLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-char p1, p0, Lcom/opencsv/AbstractCSVParser;->separator:C

    .line 44
    iput-char p2, p0, Lcom/opencsv/AbstractCSVParser;->quotechar:C

    .line 45
    iput-object p3, p0, Lcom/opencsv/AbstractCSVParser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-void
.end method


# virtual methods
.method protected abstract convertToCsvValue(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public getPendingText()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/opencsv/AbstractCSVParser;->pending:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuotechar()C
    .locals 1

    .line 55
    iget-char v0, p0, Lcom/opencsv/AbstractCSVParser;->quotechar:C

    return v0
.end method

.method public getSeparator()C
    .locals 1

    .line 50
    iget-char v0, p0, Lcom/opencsv/AbstractCSVParser;->separator:C

    return v0
.end method

.method public isPending()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/opencsv/AbstractCSVParser;->pending:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isSurroundWithQuotes(Ljava/lang/String;Z)Z
    .locals 0

    if-nez p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/opencsv/AbstractCSVParser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object p2, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_QUOTES:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {p1, p2}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-nez p2, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/opencsv/AbstractCSVParser;->getSeparator()C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method synthetic lambda$parseToLine$0$com-opencsv-AbstractCSVParser(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-virtual {p0, p2, p1}, Lcom/opencsv/AbstractCSVParser;->convertToCsvValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nullFieldIndicator()Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/opencsv/AbstractCSVParser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object v0
.end method

.method public parseLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/opencsv/AbstractCSVParser;->parseLine(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract parseLine(Ljava/lang/String;Z)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public parseLineMulti(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/opencsv/AbstractCSVParser;->parseLine(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseToLine([Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 76
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/opencsv/AbstractCSVParser$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/opencsv/AbstractCSVParser$$ExternalSyntheticLambda0;-><init>(Lcom/opencsv/AbstractCSVParser;Z)V

    .line 77
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lcom/opencsv/AbstractCSVParser;->getSeparator()C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
