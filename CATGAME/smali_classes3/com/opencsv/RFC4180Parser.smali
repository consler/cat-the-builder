.class public Lcom/opencsv/RFC4180Parser;
.super Lcom/opencsv/AbstractCSVParser;
.source "RFC4180Parser.java"


# static fields
.field private static final SPECIAL_REGEX_CHARS:Ljava/util/regex/Pattern;


# instance fields
.field private final quoteCharString:Ljava/lang/String;

.field private final separatorAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[{}()\\[\\].+*?^$\\\\|]"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/opencsv/RFC4180Parser;->SPECIAL_REGEX_CHARS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x2c

    .line 54
    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    const/16 v2, 0x22

    invoke-direct {p0, v2, v0, v1}, Lcom/opencsv/RFC4180Parser;-><init>(CCLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V

    return-void
.end method

.method constructor <init>(CCLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V
    .locals 0

    .line 65
    invoke-direct {p0, p2, p1, p3}, Lcom/opencsv/AbstractCSVParser;-><init>(CCLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V

    .line 66
    sget-object p3, Lcom/opencsv/RFC4180Parser;->SPECIAL_REGEX_CHARS:Ljava/util/regex/Pattern;

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const-string p3, "\\\\$0"

    invoke-virtual {p2, p3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/opencsv/RFC4180Parser;->separatorAsString:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    return-void
.end method

.method private findEndOfFieldFromPosition(Ljava/lang/String;I)I
    .locals 4

    .line 200
    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    const/4 v0, 0x0

    .line 203
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/opencsv/RFC4180Parser;->haveNotFoundLastQuote(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lcom/opencsv/RFC4180Parser;->separator:C

    if-ne v2, v3, :cond_1

    return v1

    .line 209
    :cond_1
    iget-char v1, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    xor-int/lit8 v0, v0, 0x1

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/opencsv/RFC4180Parser;->haveNotFoundLastQuote(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method private handleEmptySeparators([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_SEPARATORS:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->BOTH:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 138
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 139
    aput-object v1, p1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private handleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 224
    invoke-direct {p0, p1}, Lcom/opencsv/RFC4180Parser;->hasOnlyOneQuote(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 226
    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->BOTH:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_QUOTES:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method

.method private hasOddQuotes(Ljava/lang/String;)Z
    .locals 1

    .line 188
    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->countMatches(Ljava/lang/CharSequence;C)I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasOnlyOneQuote(Ljava/lang/String;)Z
    .locals 1

    .line 192
    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->countMatches(Ljava/lang/CharSequence;C)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private haveNotFoundLastQuote(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ge p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lastElementStartedWithQuoteButDidNotEndInOne(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 183
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 184
    invoke-direct {p0, p1}, Lcom/opencsv/RFC4180Parser;->startsButDoesNotEndWithQuote(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/opencsv/RFC4180Parser;->hasOnlyOneQuote(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/opencsv/RFC4180Parser;->hasOddQuotes(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private splitWhileNotInQuotes(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 5

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 153
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 154
    iget-char v2, p0, Lcom/opencsv/RFC4180Parser;->separator:C

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 155
    iget-char v3, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eq v3, v4, :cond_3

    if-gt v3, v2, :cond_3

    if-eq v3, v1, :cond_1

    goto :goto_2

    .line 164
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/opencsv/RFC4180Parser;->findEndOfFieldFromPosition(Ljava/lang/String;I)I

    move-result v2

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 161
    :cond_3
    :goto_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 173
    invoke-direct {p0, v0}, Lcom/opencsv/RFC4180Parser;->lastElementStartedWithQuoteButDidNotEndInOne(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 176
    :cond_5
    iget-char p2, p0, Lcom/opencsv/RFC4180Parser;->separator:C

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_6

    const-string p1, ""

    .line 177
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private startsButDoesNotEndWithQuote(Ljava/lang/String;)Z
    .locals 1

    .line 196
    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private tokenizeStringIntoArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->separatorAsString:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected convertToCsvValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {v0, v1}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 73
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const/16 v2, 0x10

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    :goto_1
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-nez p2, :cond_4

    .line 75
    invoke-virtual {p0, p1, v4}, Lcom/opencsv/RFC4180Parser;->isSurroundWithQuotes(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :cond_4
    :goto_3
    if-nez v4, :cond_5

    goto :goto_4

    .line 77
    :cond_5
    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v2, :cond_6

    .line 80
    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_7

    .line 86
    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPendingText()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nullFieldIndicator()Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-object v0
.end method

.method protected parseLine(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 102
    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 103
    iput-object v0, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    aput-object p1, p2, v1

    return-object p2

    :cond_1
    return-object v0

    :cond_2
    if-eqz p2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    :cond_3
    iput-object v0, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    .line 118
    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 119
    invoke-direct {p0, p1}, Lcom/opencsv/RFC4180Parser;->tokenizeStringIntoArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/opencsv/RFC4180Parser;->handleEmptySeparators([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 121
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/opencsv/RFC4180Parser;->splitWhileNotInQuotes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/opencsv/RFC4180Parser;->handleEmptySeparators([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 122
    :goto_0
    array-length p2, p1

    if-ge v1, p2, :cond_6

    .line 123
    aget-object p2, p1, v1

    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 124
    aget-object p2, p1, v1

    invoke-direct {p0, p2}, Lcom/opencsv/RFC4180Parser;->handleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-object p1
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 0

    return-void
.end method
