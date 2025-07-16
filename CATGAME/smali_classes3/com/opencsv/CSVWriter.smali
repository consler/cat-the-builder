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

    const/16 v2, 0x2c

    const/16 v3, 0x22

    const/16 v4, 0x22

    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CCCLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CCCLjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p5}, Lcom/opencsv/AbstractCSVWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 53
    iput-char p4, p0, Lcom/opencsv/CSVWriter;->escapechar:C

    .line 54
    iput-char p3, p0, Lcom/opencsv/CSVWriter;->quotechar:C

    .line 55
    iput-char p2, p0, Lcom/opencsv/CSVWriter;->separator:C

    return-void
.end method

.method private appendQuoteCharacterIfNeeded(ZLjava/lang/Appendable;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 95
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-char p1, p0, Lcom/opencsv/CSVWriter;->quotechar:C

    if-eqz p1, :cond_1

    .line 96
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    return-void
.end method


# virtual methods
.method protected checkCharactersToEscape(C)Z
    .locals 3

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

    return-void
.end method

.method protected processLine(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 122
    invoke-virtual {p0, p2, v1}, Lcom/opencsv/CSVWriter;->processCharacter(Ljava/lang/Appendable;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected stringContainsSpecialCharacters(Ljava/lang/String;)Z
    .locals 2

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

    const-string v0, "\n"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\r"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    if-eqz v0, :cond_1

    .line 68
    iget-char v1, p0, Lcom/opencsv/CSVWriter;->separator:C

    invoke-interface {p3, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 71
    :cond_1
    aget-object v1, p1, v0

    if-nez v1, :cond_2

    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {p0, v1}, Lcom/opencsv/CSVWriter;->stringContainsSpecialCharacters(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 79
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

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_4
    iget-object p1, p0, Lcom/opencsv/CSVWriter;->lineEnd:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 91
    iget-object p1, p0, Lcom/opencsv/CSVWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
