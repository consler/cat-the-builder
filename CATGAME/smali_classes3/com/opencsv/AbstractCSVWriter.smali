.class public abstract Lcom/opencsv/AbstractCSVWriter;
.super Ljava/lang/Object;
.source "AbstractCSVWriter.java"

# interfaces
.implements Lcom/opencsv/ICSVWriter;


# instance fields
.field protected volatile exception:Ljava/io/IOException;

.field protected lineEnd:Ljava/lang/String;

.field protected resultService:Lcom/opencsv/ResultSetHelper;

.field protected final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "lineEnd"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/opencsv/AbstractCSVWriter;->writer:Ljava/io/Writer;

    .line 29
    iput-object p2, p0, Lcom/opencsv/AbstractCSVWriter;->lineEnd:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public checkError()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/opencsv/AbstractCSVWriter;->writer:Ljava/io/Writer;

    instance-of v1, v0, Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    .line 111
    check-cast v0, Ljava/io/PrintWriter;

    .line 112
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v1

    return v1

    .line 115
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :cond_0
    invoke-virtual {p0}, Lcom/opencsv/AbstractCSVWriter;->flushQuietly()V

    .line 116
    iget-object v0, p0, Lcom/opencsv/AbstractCSVWriter;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/opencsv/AbstractCSVWriter;->flush()V

    .line 104
    iget-object v0, p0, Lcom/opencsv/AbstractCSVWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 105
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/opencsv/AbstractCSVWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 99
    return-void
.end method

.method public synthetic flushQuietly()V
    .locals 0

    invoke-static {p0}, Lcom/opencsv/ICSVWriter$-CC;->$default$flushQuietly(Lcom/opencsv/ICSVWriter;)V

    return-void
.end method

.method protected resultService()Lcom/opencsv/ResultSetHelper;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/opencsv/AbstractCSVWriter;->resultService:Lcom/opencsv/ResultSetHelper;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/opencsv/ResultSetHelperService;

    invoke-direct {v0}, Lcom/opencsv/ResultSetHelperService;-><init>()V

    iput-object v0, p0, Lcom/opencsv/AbstractCSVWriter;->resultService:Lcom/opencsv/ResultSetHelper;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/opencsv/AbstractCSVWriter;->resultService:Lcom/opencsv/ResultSetHelper;

    return-object v0
.end method

.method public setResultService(Lcom/opencsv/ResultSetHelper;)V
    .locals 0
    .param p1, "resultService"    # Lcom/opencsv/ResultSetHelper;

    .line 121
    iput-object p1, p0, Lcom/opencsv/AbstractCSVWriter;->resultService:Lcom/opencsv/ResultSetHelper;

    .line 122
    return-void
.end method

.method public synthetic writeAll(Ljava/sql/ResultSet;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/opencsv/ICSVWriter$-CC;->$default$writeAll(Lcom/opencsv/ICSVWriter;Ljava/sql/ResultSet;Z)I

    move-result p1

    return p1
.end method

.method public synthetic writeAll(Ljava/sql/ResultSet;ZZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/opencsv/ICSVWriter$-CC;->$default$writeAll(Lcom/opencsv/ICSVWriter;Ljava/sql/ResultSet;ZZ)I

    move-result p1

    return p1
.end method

.method public writeAll(Ljava/sql/ResultSet;ZZZ)I
    .locals 2
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "includeColumnNames"    # Z
    .param p3, "trim"    # Z
    .param p4, "applyQuotesToAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "linesWritten":I
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p0, p1, p4}, Lcom/opencsv/AbstractCSVWriter;->writeColumnNames(Ljava/sql/ResultSet;Z)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 65
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/opencsv/AbstractCSVWriter;->resultService()Lcom/opencsv/ResultSetHelper;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/opencsv/ResultSetHelper;->getColumnValues(Ljava/sql/ResultSet;Z)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/opencsv/AbstractCSVWriter;->writeNext([Ljava/lang/String;Z)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    return v0
.end method

.method public synthetic writeAll(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/opencsv/ICSVWriter$-CC;->$default$writeAll(Lcom/opencsv/ICSVWriter;Ljava/lang/Iterable;)V

    return-void
.end method

.method public writeAll(Ljava/lang/Iterable;Z)V
    .locals 4
    .param p2, "applyQuotesToAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 34
    .local p1, "allLines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 37
    .local v2, "line":[Ljava/lang/String;
    invoke-virtual {p0, v2, p2, v0}, Lcom/opencsv/AbstractCSVWriter;->writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V

    .line 38
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v2    # "line":[Ljava/lang/String;
    goto :goto_0

    .line 42
    :cond_0
    goto :goto_1

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/io/IOException;
    iput-object v1, p0, Lcom/opencsv/AbstractCSVWriter;->exception:Ljava/io/IOException;

    .line 43
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public synthetic writeAll(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/opencsv/ICSVWriter$-CC;->$default$writeAll(Lcom/opencsv/ICSVWriter;Ljava/util/List;)V

    return-void
.end method

.method public synthetic writeAll(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/opencsv/ICSVWriter$-CC;->$default$writeAll(Lcom/opencsv/ICSVWriter;Ljava/util/List;Z)V

    return-void
.end method

.method protected writeColumnNames(Ljava/sql/ResultSet;Z)V
    .locals 1
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "applyQuotesToAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/opencsv/AbstractCSVWriter;->resultService()Lcom/opencsv/ResultSetHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/opencsv/ResultSetHelper;->getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/opencsv/AbstractCSVWriter;->writeNext([Ljava/lang/String;Z)V

    .line 54
    return-void
.end method

.method public synthetic writeNext([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/opencsv/ICSVWriter$-CC;->$default$writeNext(Lcom/opencsv/ICSVWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public writeNext([Ljava/lang/String;Z)V
    .locals 2
    .param p1, "nextLine"    # [Ljava/lang/String;
    .param p2, "applyQuotesToAll"    # Z

    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/opencsv/AbstractCSVWriter;->writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/opencsv/AbstractCSVWriter;->exception:Ljava/io/IOException;

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected abstract writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
