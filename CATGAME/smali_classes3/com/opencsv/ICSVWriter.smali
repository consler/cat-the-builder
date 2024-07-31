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

.method public abstract flushQuietly()V
.end method

.method public abstract setResultService(Lcom/opencsv/ResultSetHelper;)V
.end method

.method public abstract writeAll(Ljava/sql/ResultSet;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeAll(Ljava/sql/ResultSet;ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeAll(Ljava/sql/ResultSet;ZZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeAll(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
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

.method public abstract writeAll(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract writeAll(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract writeNext([Ljava/lang/String;)V
.end method

.method public abstract writeNext([Ljava/lang/String;Z)V
.end method
