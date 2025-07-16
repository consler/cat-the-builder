.class public Lar/com/hjg/pngj/BufferedStreamFeeder;
.super Ljava/lang/Object;
.source "BufferedStreamFeeder.java"


# static fields
.field private static final DEFAULTSIZE:I = 0x2000


# instance fields
.field private buf:[B

.field private closeStream:Z

.field private eof:Z

.field private failIfNoFeed:Z

.field private offset:I

.field private pendinglen:I

.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x2000

    .line 25
    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->eof:Z

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->closeStream:Z

    .line 19
    iput-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->failIfNoFeed:Z

    .line 29
    iput-object p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->stream:Ljava/io/InputStream;

    if-ge p2, v1, :cond_0

    const/16 p2, 0x2000

    .line 30
    :cond_0
    new-array p1, p2, [B

    iput-object p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->buf:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->eof:Z

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->buf:[B

    const/4 v1, 0x0

    .line 141
    iput v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    .line 142
    iput v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->offset:I

    .line 143
    iget-object v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->stream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->closeStream:Z

    if-eqz v2, :cond_0

    .line 145
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    :cond_0
    iput-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->stream:Ljava/io/InputStream;

    return-void
.end method

.method public feed(Lar/com/hjg/pngj/IBytesConsumer;)I
    .locals 1

    const/4 v0, -0x1

    .line 48
    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;I)I

    move-result p1

    return p1
.end method

.method public feed(Lar/com/hjg/pngj/IBytesConsumer;I)I
    .locals 2

    .line 57
    iget v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->refillBuffer()V

    :cond_0
    if-lez p2, :cond_1

    .line 60
    iget v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    if-ge p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    :goto_0
    if-lez p2, :cond_2

    .line 62
    iget-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->buf:[B

    iget v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->offset:I

    invoke-interface {p1, v0, v1, p2}, Lar/com/hjg/pngj/IBytesConsumer;->consume([BII)I

    move-result p1

    if-lez p1, :cond_3

    .line 64
    iget p2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->offset:I

    add-int/2addr p2, p1

    iput p2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->offset:I

    .line 65
    iget p2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    sub-int/2addr p2, p1

    iput p2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_1
    const/4 p2, 0x1

    if-ge p1, p2, :cond_5

    .line 68
    iget-boolean p2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->failIfNoFeed:Z

    if-nez p2, :cond_4

    goto :goto_2

    .line 69
    :cond_4
    new-instance p1, Lar/com/hjg/pngj/PngjInputException;

    const-string p2, "failed feed bytes"

    invoke-direct {p1, p2}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return p1
.end method

.method public feedFixed(Lar/com/hjg/pngj/IBytesConsumer;I)Z
    .locals 2

    :goto_0
    const/4 v0, 0x1

    if-lez p2, :cond_1

    .line 83
    invoke-virtual {p0, p1, p2}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;I)I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-int/2addr p2, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1

    .line 39
    iget-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public hasMoreToFeed()Z
    .locals 3

    .line 115
    iget-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->eof:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 116
    iget v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 118
    :cond_1
    invoke-virtual {p0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->refillBuffer()V

    .line 119
    iget v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public isEof()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->eof:Z

    return v0
.end method

.method protected refillBuffer()V
    .locals 2

    .line 95
    iget v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->eof:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99
    :try_start_0
    iput v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->offset:I

    .line 100
    iget-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->stream:Ljava/io/InputStream;

    iget-object v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->buf:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    if-gez v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public setCloseStream(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->closeStream:Z

    return-void
.end method

.method public setFailIfNoFeed(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->failIfNoFeed:Z

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->stream:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->eof:Z

    return-void
.end method
