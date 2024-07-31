.class public Lcom/opencsv/CSVWriterBuilder;
.super Ljava/lang/Object;
.source "CSVWriterBuilder.java"


# instance fields
.field private escapechar:Ljava/lang/Character;

.field private lineEnd:Ljava/lang/String;

.field private parser:Lcom/opencsv/ICSVParser;

.field private quotechar:Ljava/lang/Character;

.field private separator:Ljava/lang/Character;

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "\n"

    iput-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->lineEnd:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/opencsv/CSVWriterBuilder;->writer:Ljava/io/Writer;

    .line 53
    return-void
.end method

.method private createCSVParserWriter()Lcom/opencsv/ICSVWriter;
    .locals 4

    .line 141
    new-instance v0, Lcom/opencsv/CSVParserWriter;

    iget-object v1, p0, Lcom/opencsv/CSVWriterBuilder;->writer:Ljava/io/Writer;

    iget-object v2, p0, Lcom/opencsv/CSVWriterBuilder;->parser:Lcom/opencsv/ICSVParser;

    iget-object v3, p0, Lcom/opencsv/CSVWriterBuilder;->lineEnd:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/opencsv/CSVParserWriter;-><init>(Ljava/io/Writer;Lcom/opencsv/ICSVParser;Ljava/lang/String;)V

    return-object v0
.end method

.method private createCSVWriter()Lcom/opencsv/ICSVWriter;
    .locals 7

    .line 145
    iget-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->separator:Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 146
    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->separator:Ljava/lang/Character;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->quotechar:Ljava/lang/Character;

    const/16 v1, 0x22

    if-nez v0, :cond_1

    .line 149
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->quotechar:Ljava/lang/Character;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->escapechar:Ljava/lang/Character;

    if-nez v0, :cond_2

    .line 152
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->escapechar:Ljava/lang/Character;

    .line 154
    :cond_2
    new-instance v0, Lcom/opencsv/CSVWriter;

    iget-object v2, p0, Lcom/opencsv/CSVWriterBuilder;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/opencsv/CSVWriterBuilder;->separator:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v3

    iget-object v1, p0, Lcom/opencsv/CSVWriterBuilder;->quotechar:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v1, p0, Lcom/opencsv/CSVWriterBuilder;->escapechar:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v5

    iget-object v6, p0, Lcom/opencsv/CSVWriterBuilder;->lineEnd:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CCCLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/opencsv/ICSVWriter;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->parser:Lcom/opencsv/ICSVParser;

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/opencsv/CSVWriterBuilder;->createCSVParserWriter()Lcom/opencsv/ICSVWriter;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/opencsv/CSVWriterBuilder;->createCSVWriter()Lcom/opencsv/ICSVWriter;

    move-result-object v0

    return-object v0
.end method

.method public withEscapeChar(C)Lcom/opencsv/CSVWriterBuilder;
    .locals 2
    .param p1, "escapeChar"    # C

    .line 110
    iget-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->parser:Lcom/opencsv/ICSVParser;

    if-nez v0, :cond_0

    .line 113
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->escapechar:Ljava/lang/Character;

    .line 114
    return-object p0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot set the escape character in the builder if you have a ICSVParser set.  Set the escape character in the parser instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withLineEnd(Ljava/lang/String;)Lcom/opencsv/CSVWriterBuilder;
    .locals 0
    .param p1, "lineEnd"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/opencsv/CSVWriterBuilder;->lineEnd:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public withParser(Lcom/opencsv/ICSVParser;)Lcom/opencsv/CSVWriterBuilder;
    .locals 2
    .param p1, "parser"    # Lcom/opencsv/ICSVParser;

    .line 65
    iget-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->separator:Ljava/lang/Character;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->quotechar:Ljava/lang/Character;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->escapechar:Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/opencsv/CSVWriterBuilder;->parser:Lcom/opencsv/ICSVParser;

    .line 69
    return-object p0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot set the parser in the builder if you have set the separator, quote, or escape character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withQuoteChar(C)Lcom/opencsv/CSVWriterBuilder;
    .locals 2
    .param p1, "quoteChar"    # C

    .line 95
    iget-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->parser:Lcom/opencsv/ICSVParser;

    if-nez v0, :cond_0

    .line 98
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->quotechar:Ljava/lang/Character;

    .line 99
    return-object p0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot set the quote character in the builder if you have a ICSVParser set.  Set the quote character in the parser instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withSeparator(C)Lcom/opencsv/CSVWriterBuilder;
    .locals 2
    .param p1, "separator"    # C

    .line 80
    iget-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->parser:Lcom/opencsv/ICSVParser;

    if-nez v0, :cond_0

    .line 83
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/CSVWriterBuilder;->separator:Ljava/lang/Character;

    .line 84
    return-object p0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot set the separator in the builder if you have a ICSVParser set.  Set the separator in the parser instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
