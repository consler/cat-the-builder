.class public Lcom/thoughtworks/xstream/core/util/QuickWriter;
.super Ljava/lang/Object;
.source "QuickWriter.java"


# instance fields
.field private buffer:[C

.field private pointer:I

.field private final writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/16 v0, 0x400

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    .line 31
    new-array p1, p2, [C

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    return-void
.end method

.method private raw(C)V
    .locals 1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 103
    iget-object p1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 105
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private raw([C)V
    .locals 1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    .line 94
    iget-object p1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 96
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 84
    iput v3, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    .line 85
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 4

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 74
    iput v3, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    .line 75
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(C)V
    .locals 3

    .line 48
    iget v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    .line 50
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    array-length v0, v0

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->raw(C)V

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    aput-char p1, v0, v1

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 4

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 36
    iget v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    .line 38
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->raw([C)V

    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 44
    iget p1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    return-void
.end method

.method public write([C)V
    .locals 4

    .line 59
    array-length v0, p1

    .line 60
    iget v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->flush()V

    .line 62
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/QuickWriter;->raw([C)V

    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->buffer:[C

    iget v2, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget p1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/thoughtworks/xstream/core/util/QuickWriter;->pointer:I

    return-void
.end method
