.class public Lcom/opencsv/CSVParserWriter;
.super Lcom/opencsv/AbstractCSVWriter;
.source "CSVParserWriter.java"


# instance fields
.field protected final parser:Lcom/opencsv/ICSVParser;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lcom/opencsv/ICSVParser;Ljava/lang/String;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "parser"    # Lcom/opencsv/ICSVParser;
    .param p3, "lineEnd"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1, p3}, Lcom/opencsv/AbstractCSVWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lcom/opencsv/CSVParserWriter;->parser:Lcom/opencsv/ICSVParser;

    .line 43
    return-void
.end method


# virtual methods
.method protected writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V
    .locals 2
    .param p1, "nextLine"    # [Ljava/lang/String;
    .param p2, "applyQuotesToAll"    # Z
    .param p3, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/opencsv/CSVParserWriter;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v0, p1, p2}, Lcom/opencsv/ICSVParser;->parseToLine([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 48
    iget-object v0, p0, Lcom/opencsv/CSVParserWriter;->lineEnd:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 49
    iget-object v0, p0, Lcom/opencsv/CSVParserWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 50
    return-void
.end method
