.class public interface abstract Lcom/opencsv/ICSVWriter;
.super Ljava/lang/Object;
.source "ICSVWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field public static final DEFAULT_ESCAPE_CHARACTER:C = '\"'

.field public static final DEFAULT_LINE_END:Ljava/lang/String; = "\n"

.field public static final DEFAULT_QUOTE_CHARACTER:C = '\"'

.field public static final DEFAULT_SEPARATOR:C = ','

.field public static final INITIAL_STRING_SIZE:I = 0x400

.field public static final NO_ESCAPE_CHARACTER:C = '\u0000'

.field public static final NO_QUOTE_CHARACTER:C = '\u0000'

.field public static final RFC4180_LINE_END:Ljava/lang/String; = "\r\n"


# virtual methods
.method public abstract checkError()Z
.end method

.method public flushQuietly()V
    .locals 0

    .line 185
    :try_start_0
    invoke-interface {p0}, Lcom/opencsv/ICSVWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public abstract setResultService(Lcom/opencsv/ResultSetHelper;)V
.end method

.method public writeAll(Ljava/sql/ResultSet;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-interface {p0, p1, p2, v0, v1}, Lcom/opencsv/ICSVWriter;->writeAll(Ljava/sql/ResultSet;ZZZ)I

    move-result p1

    return p1
.end method

.method public writeAll(Ljava/sql/ResultSet;ZZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 125
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/opencsv/ICSVWriter;->writeAll(Ljava/sql/ResultSet;ZZZ)I

    move-result p1

    return p1
.end method

.method public abstract writeAll(Ljava/sql/ResultSet;ZZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 82
    invoke-interface {p0, p1, v0}, Lcom/opencsv/ICSVWriter;->writeAll(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public abstract writeAll(Ljava/lang/Iterable;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public writeAll(Ljava/util/List;)V
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

    .line 92
    invoke-interface {p0, p1}, Lcom/opencsv/ICSVWriter;->writeAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public writeAll(Ljava/util/List;Z)V
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

    .line 73
    invoke-interface {p0, p1, p2}, Lcom/opencsv/ICSVWriter;->writeAll(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public writeNext([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 162
    invoke-interface {p0, p1, v0}, Lcom/opencsv/ICSVWriter;->writeNext([Ljava/lang/String;Z)V

    return-void
.end method

.method public abstract writeNext([Ljava/lang/String;Z)V
.end method
