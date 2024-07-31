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
    .param p1, "is"    # Ljava/io/InputStream;

    .line 25
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;-><init>(Ljava/io/InputStream;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "bufsize"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->eof:Z

    .line 18
    const/4 v1, 0x1

    iput-boolean v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->closeStream:Z

    .line 19
    iput-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->failIfNoFeed:Z

    .line 29
    iput-object p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->stream:Ljava/io/InputStream;

    .line 30
    if-ge p2, v1, :cond_0

    const/16 v0, 0x2000

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->buf:[B

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->eof:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->buf:[B

    .line 141
    const/4 v1, 0x0

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

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 150
    :cond_0
    :goto_0
    iput-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->stream:Ljava/io/InputStream;

    .line 151
    return-void
.end method

.method public feed(Lar/com/hjg/pngj/IBytesConsumer;)I
    .locals 1
    .param p1, "consumer"    # Lar/com/hjg/pngj/IBytesConsumer;

    .line 48
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;I)I

    move-result v0

    return v0
.end method

.method public feed(Lar/com/hjg/pngj/IBytesConsumer;I)I
    .locals 4
    .param p1, "consumer"    # Lar/com/hjg/pngj/IBytesConsumer;
    .param p2, "maxbytes"    # I

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "n":I
    iget v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->refillBuffer()V

    .line 60
    :cond_0
    if-lez p2, :cond_1

    iget v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    if-ge p2, v1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    iget v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    .line 61
    .local v1, "tofeed":I
    :goto_0
    if-lez v1, :cond_2

    .line 62
    iget-object v2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->buf:[B

    iget v3, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->offset:I

    invoke-interface {p1, v2, v3, v1}, Lar/com/hjg/pngj/IBytesConsumer;->consume([BII)I

    move-result v0

    .line 63
    if-lez v0, :cond_2

    .line 64
    iget v2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->offset:I

    .line 65
    iget v2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    sub-int/2addr v2, v0

    iput v2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    .line 68
    :cond_2
    const/4 v2, 0x1

    if-ge v0, v2, :cond_4

    iget-boolean v2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->failIfNoFeed:Z

    if-nez v2, :cond_3

    goto :goto_1

    .line 69
    :cond_3
    new-instance v2, Lar/com/hjg/pngj/PngjInputException;

    const-string v3, "failed feed bytes"

    invoke-direct {v2, v3}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_4
    :goto_1
    return v0
.end method

.method public feedFixed(Lar/com/hjg/pngj/IBytesConsumer;I)Z
    .locals 3
    .param p1, "consumer"    # Lar/com/hjg/pngj/IBytesConsumer;
    .param p2, "nbytes"    # I

    .line 81
    move v0, p2

    .line 82
    .local v0, "remain":I
    :goto_0
    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 83
    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;I)I

    move-result v2

    .line 84
    .local v2, "n":I
    if-ge v2, v1, :cond_0

    .line 85
    const/4 v1, 0x0

    return v1

    .line 86
    :cond_0
    sub-int/2addr v0, v2

    .line 87
    .end local v2    # "n":I
    goto :goto_0

    .line 88
    :cond_1
    return v1
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

    .line 99
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->offset:I

    .line 100
    iget-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->stream:Ljava/io/InputStream;

    iget-object v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->buf:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->pendinglen:I

    .line 101
    if-gez v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 105
    :cond_1
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    return-void
.end method

.method public setCloseStream(Z)V
    .locals 0
    .param p1, "closeStream"    # Z

    .line 126
    iput-boolean p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->closeStream:Z

    .line 127
    return-void
.end method

.method public setFailIfNoFeed(Z)V
    .locals 0
    .param p1, "failIfNoFeed"    # Z

    .line 178
    iput-boolean p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->failIfNoFeed:Z

    .line 179
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .line 160
    iput-object p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->stream:Ljava/io/InputStream;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->eof:Z

    .line 162
    return-void
.end method
