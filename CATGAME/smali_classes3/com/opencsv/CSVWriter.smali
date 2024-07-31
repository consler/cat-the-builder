.class public Lcom/opencsv/CSVWriter;
.super Lcom/opencsv/AbstractCSVWriter;
.source "CSVWriter.java"


# instance fields
.field protected final escapechar:C

.field protected final quotechar:C

.field protected final separator:C


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;

    .line 39
    const/16 v2, 0x2c

    const/16 v3, 0x22

    const/16 v4, 0x22

    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CCCLjava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CCCLjava/lang/String;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "separator"    # C
    .param p3, "quotechar"    # C
    .param p4, "escapechar"    # C
    .param p5, "lineEnd"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1, p5}, Lcom/opencsv/AbstractCSVWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 53
    iput-char p4, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    .line 54
    iput-char p3, p0, Lcom/opencsv/CSVWriter;->quotechar:C

    .line 55
    iput-char p2, p0, Lcom/opencsv/CSVWriter;->separator:C

    .line 56
    return-void
.end method

.method private appendQuoteCharacterIfNeeded(ZLjava/lang/Appendable;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "applyQuotesToAll"    # Z
    .param p2, "appendable"    # Ljava/lang/Appendable;
    .param p3, "stringContainsSpecialCharacters"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    if-nez p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-char v0, p0, Lcom/opencsv/CSVWriter;->quotechar:C

    if-eqz v0, :cond_1

    .line 96
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 98
    :cond_1
    return-void
.end method


# virtual methods
.method protected checkCharactersToEscape(C)Z
    .locals 3
    .param p1, "nextChar"    # C

    .line 148
    iget-char v0, p0, Lcom/opencsv/CSVWriter;->quotechar:C

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-eq p1, v0, :cond_1

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    if-eq p1, v0, :cond_1

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->separator:C

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_0
    if-eq p1, v0, :cond_1

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    if-ne p1, v0, :cond_2

    :cond_1
    :goto_0
    move v1, v2

    :cond_2
    return v1
.end method

.method protected processCharacter(Ljava/lang/Appendable;C)V
    .locals 1
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .param p2, "nextChar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-char v0, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/opencsv/CSVWriter;->checkCharactersToEscape(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-char v0, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 136
    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 137
    return-void
.end method

.method protected processLine(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "nextElement"    # Ljava/lang/String;
    .param p2, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 122
    .local v1, "nextChar":C
    invoke-virtual {p0, p2, v1}, Lcom/opencsv/CSVWriter;->processCharacter(Ljava/lang/Appendable;C)V

    .line 120
    .end local v1    # "nextChar":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "j":I
    :cond_0
    return-void
.end method

.method protected stringContainsSpecialCharacters(Ljava/lang/String;)Z
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .line 106
    iget-char v0, p0, Lcom/opencsv/CSVWriter;->quotechar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-char v0, p0, Lcom/opencsv/CSVWriter;->separator:C

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 109
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 106
    :goto_1
    return v0
.end method

.method protected writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V
    .locals 4
    .param p1, "nextLine"    # [Ljava/lang/String;
    .param p2, "applyQuotesToAll"    # Z
    .param p3, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    if-nez p1, :cond_0

    .line 62
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 67
    if-eqz v0, :cond_1

    .line 68
    iget-char v1, p0, Lcom/opencsv/CSVWriter;->separator:C

    invoke-interface {p3, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 71
    :cond_1
    aget-object v1, p1, v0

    .line 73
    .local v1, "nextElement":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 74
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {p0, v1}, Lcom/opencsv/CSVWriter;->stringContainsSpecialCharacters(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 79
    .local v2, "stringContainsSpecialCharacters":Ljava/lang/Boolean;
    invoke-direct {p0, p2, p3, v2}, Lcom/opencsv/CSVWriter;->appendQuoteCharacterIfNeeded(ZLjava/lang/Appendable;Ljava/lang/Boolean;)V

    .line 81
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    invoke-virtual {p0, v1, p3}, Lcom/opencsv/CSVWriter;->processLine(Ljava/lang/String;Ljava/lang/Appendable;)V

    goto :goto_1

    .line 84
    :cond_3
    invoke-interface {p3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 87
    :goto_1
    invoke-direct {p0, p2, p3, v2}, Lcom/opencsv/CSVWriter;->appendQuoteCharacterIfNeeded(ZLjava/lang/Appendable;Ljava/lang/Boolean;)V

    .line 65
    .end local v1    # "nextElement":Ljava/lang/String;
    .end local v2    # "stringContainsSpecialCharacters":Ljava/lang/Boolean;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/opencsv/CSVWriter;->lineEnd:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 91
    iget-object v0, p0, Lcom/opencsv/CSVWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 92
    return-void
.end method
