.class public final synthetic Lcom/opencsv/ICSVWriter$-CC;
.super Ljava/lang/Object;
.source "ICSVWriter.java"


# direct methods
.method public static $default$flushQuietly(Lcom/opencsv/ICSVWriter;)V
    .locals 1
    .param p0, "_this"    # Lcom/opencsv/ICSVWriter;

    .line 185
    :try_start_0
    invoke-interface {p0}, Lcom/opencsv/ICSVWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 189
    :goto_0
    return-void
.end method

.method public static $default$writeAll(Lcom/opencsv/ICSVWriter;Ljava/sql/ResultSet;Z)I
    .locals 2
    .param p0, "_this"    # Lcom/opencsv/ICSVWriter;
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "includeColumnNames"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/opencsv/ICSVWriter;->writeAll(Ljava/sql/ResultSet;ZZZ)I

    move-result v0

    return v0
.end method

.method public static $default$writeAll(Lcom/opencsv/ICSVWriter;Ljava/sql/ResultSet;ZZ)I
    .locals 1
    .param p0, "_this"    # Lcom/opencsv/ICSVWriter;
    .param p1, "rs"    # Ljava/sql/ResultSet;
    .param p2, "includeColumnNames"    # Z
    .param p3, "trim"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/opencsv/ICSVWriter;->writeAll(Ljava/sql/ResultSet;ZZZ)I

    move-result v0

    return v0
.end method

.method public static $default$writeAll(Lcom/opencsv/ICSVWriter;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "_this"    # Lcom/opencsv/ICSVWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p1, "allLines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/opencsv/ICSVWriter;->writeAll(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public static $default$writeAll(Lcom/opencsv/ICSVWriter;Ljava/util/List;)V
    .locals 0
    .param p0, "_this"    # Lcom/opencsv/ICSVWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p1, "allLines":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Lcom/opencsv/ICSVWriter;->writeAll(Ljava/lang/Iterable;)V

    .line 93
    return-void
.end method

.method public static $default$writeAll(Lcom/opencsv/ICSVWriter;Ljava/util/List;Z)V
    .locals 0
    .param p0, "_this"    # Lcom/opencsv/ICSVWriter;
    .param p2, "applyQuotesToAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 73
    .local p1, "allLines":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {p0, p1, p2}, Lcom/opencsv/ICSVWriter;->writeAll(Ljava/lang/Iterable;Z)V

    .line 74
    return-void
.end method

.method public static $default$writeNext(Lcom/opencsv/ICSVWriter;[Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Lcom/opencsv/ICSVWriter;
    .param p1, "nextLine"    # [Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/opencsv/ICSVWriter;->writeNext([Ljava/lang/String;Z)V

    .line 163
    return-void
.end method
