.class public Lcom/opencsv/CSVParserWriter;
.super Lcom/opencsv/AbstractCSVWriter;
.source "CSVParserWriter.java"


# instance fields
.field protected final parser:Lcom/opencsv/ICSVParser;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lcom/opencsv/ICSVParser;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p3}, Lcom/opencsv/AbstractCSVWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lcom/opencsv/CSVParserWriter;->parser:Lcom/opencsv/ICSVParser;

    return-void
.end method


# virtual methods
.method protected writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/opencsv/CSVParserWriter;->parser:Lcom/opencsv/ICSVParser;

    invoke-interface {v0, p1, p2}, Lcom/opencsv/ICSVParser;->parseToLine([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 48
    iget-object p1, p0, Lcom/opencsv/CSVParserWriter;->lineEnd:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 49
    iget-object p1, p0, Lcom/opencsv/CSVParserWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
