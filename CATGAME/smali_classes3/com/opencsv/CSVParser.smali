.class public Lcom/opencsv/CSVParser;
.super Lcom/opencsv/AbstractCSVParser;
.source "CSVParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opencsv/CSVParser$StringFragmentCopier;
    }
.end annotation


# static fields
.field private static final BEGINNING_OF_LINE:I = 0x3


# instance fields
.field private errorLocale:Ljava/util/Locale;

.field private final escape:C

.field private final ignoreLeadingWhiteSpace:Z

.field private final ignoreQuotations:Z

.field private inField:Z

.field private final strictQuotes:Z

.field private tokensOnLastCompleteLine:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 73
    sget-object v7, Lcom/opencsv/CSVParser;->DEFAULT_NULL_FIELD_INDICATOR:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 73
    const/16 v1, 0x2c

    const/16 v2, 0x22

    const/16 v3, 0x5c

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/opencsv/CSVParser;-><init>(CCCZZZLcom/opencsv/enums/CSVReaderNullFieldIndicator;Ljava/util/Locale;)V

    .line 78
    return-void
.end method

.method constructor <init>(CCCZZZLcom/opencsv/enums/CSVReaderNullFieldIndicator;Ljava/util/Locale;)V
    .locals 3
    .param p1, "separator"    # C
    .param p2, "quotechar"    # C
    .param p3, "escape"    # C
    .param p4, "strictQuotes"    # Z
    .param p5, "ignoreLeadingWhiteSpace"    # Z
    .param p6, "ignoreQuotations"    # Z
    .param p7, "nullFieldIndicator"    # Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
    .param p8, "errorLocale"    # Ljava/util/Locale;

    .line 97
    invoke-direct {p0, p1, p2, p7}, Lcom/opencsv/AbstractCSVParser;-><init>(CCLcom/opencsv/enums/CSVReaderNullFieldIndicator;)V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/opencsv/CSVParser;->tokensOnLastCompleteLine:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/opencsv/CSVParser;->inField:Z

    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p8, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/CSVParser;->errorLocale:Ljava/util/Locale;

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/opencsv/CSVParser;->anyCharactersAreTheSame(CCC)Z

    move-result v0

    const-string v1, "opencsv"

    if-nez v0, :cond_1

    .line 102
    if-eqz p1, :cond_0

    .line 105
    iput-char p3, p0, Lcom/opencsv/CSVParser;->escape:C

    .line 106
    iput-boolean p4, p0, Lcom/opencsv/CSVParser;->strictQuotes:Z

    .line 107
    iput-boolean p5, p0, Lcom/opencsv/CSVParser;->ignoreLeadingWhiteSpace:Z

    .line 108
    iput-boolean p6, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    .line 109
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v2, p0, Lcom/opencsv/CSVParser;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "define.separator"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v2, p0, Lcom/opencsv/CSVParser;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "special.characters.must.differ"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private anyCharactersAreTheSame(CCC)Z
    .locals 1
    .param p1, "separator"    # C
    .param p2, "quotechar"    # C
    .param p3, "escape"    # C

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/opencsv/CSVParser;->isSameCharacter(CC)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/opencsv/CSVParser;->isSameCharacter(CC)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/opencsv/CSVParser;->isSameCharacter(CC)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private convertEmptyToNullIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "fromQuotedField"    # Z

    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/opencsv/CSVParser;->shouldConvertEmptyToNull(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x0

    return-object v0

    .line 299
    :cond_0
    return-object p1
.end method

.method private handleEscapeCharacter(Ljava/lang/String;Lcom/opencsv/CSVParser$StringFragmentCopier;Z)V
    .locals 2
    .param p1, "nextLine"    # Ljava/lang/String;
    .param p2, "sfc"    # Lcom/opencsv/CSVParser$StringFragmentCopier;
    .param p3, "inQuotes"    # Z

    .line 289
    invoke-direct {p0, p3}, Lcom/opencsv/CSVParser;->inQuotes(Z)Z

    move-result v0

    invoke-static {p2}, Lcom/opencsv/CSVParser$StringFragmentCopier;->access$000(Lcom/opencsv/CSVParser$StringFragmentCopier;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/opencsv/CSVParser;->isNextCharacterEscapable(Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p2}, Lcom/opencsv/CSVParser$StringFragmentCopier;->takeInput()C

    .line 291
    invoke-virtual {p2}, Lcom/opencsv/CSVParser$StringFragmentCopier;->appendPrev()V

    .line 293
    :cond_0
    return-void
.end method

.method private handleQuoteCharButNotStrictQuotes(Ljava/lang/String;Lcom/opencsv/CSVParser$StringFragmentCopier;)V
    .locals 3
    .param p1, "nextLine"    # Ljava/lang/String;
    .param p2, "sfc"    # Lcom/opencsv/CSVParser$StringFragmentCopier;

    .line 271
    iget-boolean v0, p0, Lcom/opencsv/CSVParser;->strictQuotes:Z

    if-nez v0, :cond_1

    .line 272
    invoke-static {p2}, Lcom/opencsv/CSVParser$StringFragmentCopier;->access$000(Lcom/opencsv/CSVParser$StringFragmentCopier;)I

    move-result v0

    .line 273
    .local v0, "i":I
    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x2

    .line 274
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p0, Lcom/opencsv/CSVParser;->separator:C

    if-eq v1, v2, :cond_1

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p0, Lcom/opencsv/CSVParser;->separator:C

    if-eq v1, v2, :cond_1

    .line 279
    iget-boolean v1, p0, Lcom/opencsv/CSVParser;->ignoreLeadingWhiteSpace:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/opencsv/CSVParser$StringFragmentCopier;->isEmptyOutput()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/opencsv/CSVParser$StringFragmentCopier;->peekOutput()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isWhitespace(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p2}, Lcom/opencsv/CSVParser$StringFragmentCopier;->clearOutput()V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p2}, Lcom/opencsv/CSVParser$StringFragmentCopier;->appendPrev()V

    .line 286
    .end local v0    # "i":I
    :cond_1
    :goto_0
    return-void
.end method

.method private inQuotes(Z)Z
    .locals 1
    .param p1, "inQuotes"    # Z

    .line 322
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/opencsv/CSVParser;->inField:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCharacterEscapable(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 370
    invoke-direct {p0, p1}, Lcom/opencsv/CSVParser;->isCharacterQuoteCharacter(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/opencsv/CSVParser;->isCharacterEscapeCharacter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isCharacterEscapeCharacter(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 358
    iget-char v0, p0, Lcom/opencsv/CSVParser;->escape:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCharacterQuoteCharacter(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 348
    iget-char v0, p0, Lcom/opencsv/CSVParser;->quotechar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNextCharacterEscapedQuote(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "nextLine"    # Ljava/lang/String;
    .param p2, "inQuotes"    # Z
    .param p3, "i"    # I

    .line 336
    if-eqz p2, :cond_0

    .line 337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p3, 0x1

    .line 338
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/opencsv/CSVParser;->isCharacterQuoteCharacter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    return v0
.end method

.method private isSameCharacter(CC)Z
    .locals 1
    .param p1, "c1"    # C
    .param p2, "c2"    # C

    .line 160
    if-eqz p1, :cond_0

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldConvertEmptyToNull(Z)Z
    .locals 2
    .param p1, "fromQuotedField"    # Z

    .line 303
    sget-object v0, Lcom/opencsv/CSVParser$1;->$SwitchMap$com$opencsv$enums$CSVReaderNullFieldIndicator:[I

    iget-object v1, p0, Lcom/opencsv/CSVParser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {v1}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 311
    const/4 v0, 0x0

    return v0

    .line 309
    :cond_0
    return p1

    .line 307
    :cond_1
    xor-int/lit8 v0, p1, 0x1

    return v0

    .line 305
    :cond_2
    return v1
.end method


# virtual methods
.method protected convertToCsvValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "applyQuotestoAll"    # Z

    .line 165
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/opencsv/CSVParser;->nullFieldIndicator:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {v0, v1}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 166
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

    .line 167
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getQuotechar()C

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

    .line 168
    .local v4, "containsQuoteChar":Z
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getEscape()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v3

    .line 169
    .local v5, "containsEscapeChar":Z
    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getSeparator()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v3

    .line 170
    .local v6, "containsSeparatorChar":Z
    :goto_4
    if-nez p2, :cond_6

    invoke-virtual {p0, p1, v6}, Lcom/opencsv/CSVParser;->isSurroundWithQuotes(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    .line 172
    .local v2, "surroundWithQuotes":Z
    :cond_6
    :goto_5
    if-nez v4, :cond_7

    move-object v3, v0

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getQuotechar()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getQuotechar()C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getQuotechar()C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "convertedString":Ljava/lang/String;
    :goto_6
    if-nez v5, :cond_8

    move-object v7, v3

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getEscape()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getEscape()C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getEscape()C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :goto_7
    move-object v3, v7

    .line 175
    if-eqz v2, :cond_9

    .line 176
    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getQuotechar()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    if-eqz v2, :cond_a

    .line 182
    invoke-virtual {p0}, Lcom/opencsv/CSVParser;->getQuotechar()C

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getEscape()C
    .locals 1

    .line 115
    iget-char v0, p0, Lcom/opencsv/CSVParser;->escape:C

    return v0
.end method

.method public isIgnoreLeadingWhiteSpace()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/opencsv/CSVParser;->ignoreLeadingWhiteSpace:Z

    return v0
.end method

.method public isIgnoreQuotations()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    return v0
.end method

.method protected isNextCharacterEscapable(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "nextLine"    # Ljava/lang/String;
    .param p2, "inQuotes"    # Z
    .param p3, "i"    # I

    .line 387
    if-eqz p2, :cond_0

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p3, 0x1

    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/opencsv/CSVParser;->isCharacterEscapable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 387
    :goto_0
    return v0
.end method

.method public isStrictQuotes()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/opencsv/CSVParser;->strictQuotes:Z

    return v0
.end method

.method protected parseLine(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9
    .param p1, "nextLine"    # Ljava/lang/String;
    .param p2, "multi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 192
    iput-object v0, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    .line 195
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 196
    iget-object v3, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 197
    iget-object v3, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    .line 198
    .local v3, "s":Ljava/lang/String;
    iput-object v0, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    .line 199
    new-array v0, v2, [Ljava/lang/String;

    aput-object v3, v0, v1

    return-object v0

    .line 201
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 204
    :cond_2
    iget v3, p0, Lcom/opencsv/CSVParser;->tokensOnLastCompleteLine:I

    if-gtz v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    iget v4, p0, Lcom/opencsv/CSVParser;->tokensOnLastCompleteLine:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v3, "tokensOnThisLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v4, Lcom/opencsv/CSVParser$StringFragmentCopier;

    invoke-direct {v4, p1}, Lcom/opencsv/CSVParser$StringFragmentCopier;-><init>(Ljava/lang/String;)V

    .line 206
    .local v4, "sfc":Lcom/opencsv/CSVParser$StringFragmentCopier;
    const/4 v5, 0x0

    .line 207
    .local v5, "inQuotes":Z
    const/4 v6, 0x0

    .line 208
    .local v6, "fromQuotedField":Z
    iget-object v7, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 209
    iget-object v7, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/opencsv/CSVParser$StringFragmentCopier;->append(Ljava/lang/String;)V

    .line 210
    iput-object v0, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    .line 211
    iget-boolean v0, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    xor-int/2addr v0, v2

    move v5, v0

    .line 213
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->isEmptyInput()Z

    move-result v0

    if-nez v0, :cond_e

    .line 214
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->takeInput()C

    move-result v0

    .line 215
    .local v0, "c":C
    iget-char v7, p0, Lcom/opencsv/CSVParser;->escape:C

    if-ne v0, v7, :cond_5

    .line 216
    invoke-direct {p0, p1, v4, v5}, Lcom/opencsv/CSVParser;->handleEscapeCharacter(Ljava/lang/String;Lcom/opencsv/CSVParser$StringFragmentCopier;Z)V

    goto :goto_4

    .line 217
    :cond_5
    iget-char v7, p0, Lcom/opencsv/CSVParser;->quotechar:C

    if-ne v0, v7, :cond_9

    .line 218
    invoke-direct {p0, v5}, Lcom/opencsv/CSVParser;->inQuotes(Z)Z

    move-result v7

    invoke-static {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->access$000(Lcom/opencsv/CSVParser$StringFragmentCopier;)I

    move-result v8

    sub-int/2addr v8, v2

    invoke-direct {p0, p1, v7, v8}, Lcom/opencsv/CSVParser;->isNextCharacterEscapedQuote(Ljava/lang/String;ZI)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 219
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->takeInput()C

    .line 220
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->appendPrev()V

    goto :goto_3

    .line 223
    :cond_6
    if-nez v5, :cond_7

    move v7, v2

    goto :goto_2

    :cond_7
    move v7, v1

    :goto_2
    move v5, v7

    .line 224
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->isEmptyOutput()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 225
    const/4 v6, 0x1

    .line 229
    :cond_8
    invoke-direct {p0, p1, v4}, Lcom/opencsv/CSVParser;->handleQuoteCharButNotStrictQuotes(Ljava/lang/String;Lcom/opencsv/CSVParser$StringFragmentCopier;)V

    .line 231
    :goto_3
    iget-boolean v7, p0, Lcom/opencsv/CSVParser;->inField:Z

    xor-int/2addr v7, v2

    iput-boolean v7, p0, Lcom/opencsv/CSVParser;->inField:Z

    goto :goto_4

    .line 232
    :cond_9
    iget-char v7, p0, Lcom/opencsv/CSVParser;->separator:C

    if-ne v0, v7, :cond_b

    if-eqz v5, :cond_a

    iget-boolean v7, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    if-eqz v7, :cond_b

    .line 233
    :cond_a
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->takeOutput()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/opencsv/CSVParser;->convertEmptyToNullIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const/4 v6, 0x0

    .line 235
    iput-boolean v1, p0, Lcom/opencsv/CSVParser;->inField:Z

    goto :goto_4

    .line 237
    :cond_b
    iget-boolean v7, p0, Lcom/opencsv/CSVParser;->strictQuotes:Z

    if-eqz v7, :cond_c

    if-eqz v5, :cond_d

    iget-boolean v7, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    if-nez v7, :cond_d

    .line 238
    :cond_c
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->appendPrev()V

    .line 239
    iput-boolean v2, p0, Lcom/opencsv/CSVParser;->inField:Z

    .line 240
    const/4 v6, 0x1

    .line 244
    .end local v0    # "c":C
    :cond_d
    :goto_4
    goto :goto_1

    .line 247
    :cond_e
    if-eqz v5, :cond_10

    iget-boolean v0, p0, Lcom/opencsv/CSVParser;->ignoreQuotations:Z

    if-nez v0, :cond_10

    .line 248
    if-eqz p2, :cond_f

    .line 250
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->append(C)V

    .line 251
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->peekOutput()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVParser;->pending:Ljava/lang/String;

    .line 252
    goto :goto_5

    .line 254
    :cond_f
    new-instance v0, Ljava/io/IOException;

    iget-object v7, p0, Lcom/opencsv/CSVParser;->errorLocale:Ljava/util/Locale;

    .line 255
    const-string v8, "opencsv"

    invoke-static {v8, v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v7

    const-string v8, "unterminated.quote"

    invoke-virtual {v7, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    .line 256
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->peekOutput()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v1

    .line 254
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_10
    iput-boolean v1, p0, Lcom/opencsv/CSVParser;->inField:Z

    .line 262
    invoke-virtual {v4}, Lcom/opencsv/CSVParser$StringFragmentCopier;->takeOutput()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/opencsv/CSVParser;->convertEmptyToNullIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/opencsv/CSVParser;->tokensOnLastCompleteLine:I

    .line 266
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 394
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/CSVParser;->errorLocale:Ljava/util/Locale;

    .line 395
    return-void
.end method
