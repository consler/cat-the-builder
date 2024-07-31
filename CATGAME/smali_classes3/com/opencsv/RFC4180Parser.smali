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

    .line 38
    const-string v0, "[{}()\\[\\].+*?^$\\\\|]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/opencsv/RFC4180Parser;->SPECIAL_REGEX_CHARS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 54
    sget-object v0, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    const/16 v1, 0x22

    const/16 v2, 0x2c

    invoke-direct {p0, v1, v2, v0}, Lcom/opencsv/RFC4180Parser;-><init>(CCLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V

    .line 55
    return-void
.end method

.method constructor <init>(CCLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V
    .locals 2
    .param p1, "quoteChar"    # C
    .param p2, "separator"    # C
    .param p3, "nullFieldIndicator"    # Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 65
    invoke-direct {p0, p2, p1, p3}, Lcom/opencsv/AbstractCSVParser;-><init>(CCLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V

    .line 66
    sget-object v0, Lcom/opencsv/RFC4180Parser;->SPECIAL_REGEX_CHARS:Ljava/util/regex/Pattern;

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "\\\\$0"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/RFC4180Parser;->separatorAsString:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private findEndOfFieldFromPosition(Ljava/lang/String;I)I
    .locals 4
    .param p1, "nextLine"    # Ljava/lang/String;
    .param p2, "currentPosition"    # I

    .line 200
    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 202
    .local v0, "nextQuote":I
    const/4 v1, 0x0

    .line 203
    .local v1, "inQuote":Z
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/opencsv/RFC4180Parser;->haveNotFoundLastQuote(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    if-nez v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lcom/opencsv/RFC4180Parser;->separator:C

    if-ne v2, v3, :cond_1

    .line 205
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 209
    :cond_1
    iget-char v2, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 210
    if-nez v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/opencsv/RFC4180Parser;->haveNotFoundLastQuote(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    return v2
.end method

.method private handleEmptySeparators([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "strings"    # [Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_SEPARATORS:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->BOTH:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-ne v0, v1, :cond_2

    .line 137
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 138
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_2
    return-object p1
.end method

.method private handleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "element"    # Ljava/lang/String;

    .line 222
    move-object v0, p1

    .line 224
    .local v0, "ret":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/opencsv/RFC4180Parser;->hasOnlyOneQuote(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/opencsv/RFC4180Parser;->quoteCharString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v2, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->BOTH:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v2, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_QUOTES:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    if-ne v1, v2, :cond_2

    .line 230
    :cond_1
    const/4 v0, 0x0

    .line 232
    :cond_2
    return-object v0
.end method

.method private hasOddQuotes(Ljava/lang/String;)Z
    .locals 1
    .param p1, "lastElement"    # Ljava/lang/String;

    .line 188
    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->countMatches(Ljava/lang/CharSequence;C)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasOnlyOneQuote(Ljava/lang/String;)Z
    .locals 2
    .param p1, "lastElement"    # Ljava/lang/String;

    .line 192
    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->countMatches(Ljava/lang/CharSequence;C)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private haveNotFoundLastQuote(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "nextLine"    # Ljava/lang/String;
    .param p2, "nextQuote"    # I

    .line 218
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lastElementStartedWithQuoteButDidNotEndInOne(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 183
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    .local v0, "lastElement":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/opencsv/RFC4180Parser;->startsButDoesNotEndWithQuote(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/opencsv/RFC4180Parser;->hasOnlyOneQuote(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/opencsv/RFC4180Parser;->hasOddQuotes(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private splitWhileNotInQuotes(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 6
    .param p1, "nextLine"    # Ljava/lang/String;
    .param p2, "multi"    # Z

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "currentPosition":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 154
    iget-char v2, p0, Lcom/opencsv/RFC4180Parser;->separator:C

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 155
    .local v2, "nextSeparator":I
    iget-char v3, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 157
    .local v3, "nextQuote":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 160
    :cond_0
    if-eq v3, v4, :cond_3

    if-gt v3, v2, :cond_3

    if-eq v3, v0, :cond_1

    goto :goto_2

    .line 164
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/opencsv/RFC4180Parser;->findEndOfFieldFromPosition(Ljava/lang/String;I)I

    move-result v4

    .line 166
    .local v4, "fieldEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v0, v4, 0x1

    .line 169
    .end local v4    # "fieldEnd":I
    goto :goto_0

    .line 161
    :cond_3
    :goto_2
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "nextSeparator":I
    .end local v3    # "nextQuote":I
    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, v1}, Lcom/opencsv/RFC4180Parser;->lastElementStartedWithQuoteButDidNotEndInOne(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    .line 175
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 176
    :cond_5
    iget-char v2, p0, Lcom/opencsv/RFC4180Parser;->separator:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_6

    .line 177
    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private startsButDoesNotEndWithQuote(Ljava/lang/String;)Z
    .locals 1
    .param p1, "lastElement"    # Ljava/lang/String;

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

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private tokenizeStringIntoArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "nextLine"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/opencsv/RFC4180Parser;->separatorAsString:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected convertToCsvValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "applyQuotesToAll"    # Z

    .line 72
    if-nez p1, :cond_0

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
    .local v0, "testValue":Ljava/lang/String;
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

    .line 74
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

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

    .line 75
    .local v4, "containsQuoteChar":Z
    :goto_2
    if-nez p2, :cond_4

    invoke-virtual {p0, p1, v4}, Lcom/opencsv/RFC4180Parser;->isSurroundWithQuotes(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    .line 77
    .local v2, "surroundWithQuotes":Z
    :cond_4
    :goto_3
    if-nez v4, :cond_5

    move-object v3, v0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "convertedString":Ljava/lang/String;
    :goto_4
    if-eqz v2, :cond_6

    .line 80
    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    if-eqz v2, :cond_7

    .line 86
    invoke-virtual {p0}, Lcom/opencsv/RFC4180Parser;->getQuotechar()C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
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
    .locals 5
    .param p1, "nextLine"    # Ljava/lang/String;
    .param p2, "multi"    # Z

    .line 102
    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 103
    iput-object v0, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    .line 106
    :cond_0
    if-nez p1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    .line 109
    .local v1, "s":Ljava/lang/String;
    iput-object v0, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0

    .line 112
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 115
    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 116
    .local v1, "lineToProcess":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/opencsv/RFC4180Parser;->pending:Ljava/lang/String;

    .line 118
    iget-char v0, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 119
    invoke-direct {p0, v1}, Lcom/opencsv/RFC4180Parser;->tokenizeStringIntoArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/opencsv/RFC4180Parser;->handleEmptySeparators([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "elements":[Ljava/lang/String;
    goto :goto_2

    .line 121
    .end local v0    # "elements":[Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/opencsv/RFC4180Parser;->splitWhileNotInQuotes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/opencsv/RFC4180Parser;->handleEmptySeparators([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 122
    .restart local v0    # "elements":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_6

    .line 123
    aget-object v3, v0, v2

    iget-char v4, p0, Lcom/opencsv/RFC4180Parser;->quotechar:C

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 124
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/opencsv/RFC4180Parser;->handleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 122
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    .end local v2    # "i":I
    :cond_6
    :goto_2
    return-object v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 249
    return-void
.end method
