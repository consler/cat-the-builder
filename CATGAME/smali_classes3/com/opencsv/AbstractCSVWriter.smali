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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/opencsv/AbstractCSVWriter;->writer:Ljava/io/Writer;

    .line 29
    iput-object p2, p0, Lcom/opencsv/AbstractCSVWriter;->lineEnd:Ljava/lang/String;

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
    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    return v0

    .line 115
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

    .line 121
    iput-object p1, p0, Lcom/opencsv/AbstractCSVWriter;->resultService:Lcom/opencsv/ResultSetHelper;

    return-void
.end method

.method public writeAll(Ljava/sql/ResultSet;ZZZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p0, p1, p4}, Lcom/opencsv/AbstractCSVWriter;->writeColumnNames(Ljava/sql/ResultSet;Z)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 65
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/opencsv/AbstractCSVWriter;->resultService()Lcom/opencsv/ResultSetHelper;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/opencsv/ResultSetHelper;->getColumnValues(Ljava/sql/ResultSet;Z)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/opencsv/AbstractCSVWriter;->writeNext([Ljava/lang/String;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public writeAll(Ljava/lang/Iterable;Z)V
    .locals 2
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
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 37
    invoke-virtual {p0, v1, p2, v0}, Lcom/opencsv/AbstractCSVWriter;->writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    iput-object p1, p0, Lcom/opencsv/AbstractCSVWriter;->exception:Ljava/io/IOException;

    :cond_0
    return-void
.end method

.method protected writeColumnNames(Ljava/sql/ResultSet;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/opencsv/AbstractCSVWriter;->resultService()Lcom/opencsv/ResultSetHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/opencsv/ResultSetHelper;->getColumnNames(Ljava/sql/ResultSet;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/opencsv/AbstractCSVWriter;->writeNext([Ljava/lang/String;Z)V

    return-void
.end method

.method public writeNext([Ljava/lang/String;Z)V
    .locals 2

    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/opencsv/AbstractCSVWriter;->writeNext([Ljava/lang/String;ZLjava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    iput-object p1, p0, Lcom/opencsv/AbstractCSVWriter;->exception:Ljava/io/IOException;

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
