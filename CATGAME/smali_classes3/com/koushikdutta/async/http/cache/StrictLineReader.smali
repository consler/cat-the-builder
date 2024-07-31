.class Lcom/koushikdutta/async/http/cache/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 69
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;-><init>(Ljava/io/InputStream;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "capacity"    # I

    .line 81
    sget-object v0, Lcom/koushikdutta/async/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "capacity"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-eqz p1, :cond_4

    .line 111
    if-eqz p3, :cond_3

    .line 114
    if-ltz p2, :cond_2

    .line 117
    sget-object v0, Lcom/koushikdutta/async/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/koushikdutta/async/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->in:Ljava/io/InputStream;

    .line 122
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    .line 123
    return-void

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 94
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/cache/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 95
    return-void
.end method

.method private fillBuf()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 234
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 237
    iput v3, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    .line 238
    iput v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    .line 239
    return-void

    .line 235
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    .line 136
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 138
    :cond_0
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasUnterminatedLine()Z
    .locals 2

    .line 222
    iget v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "intString":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    if-eqz v1, :cond_7

    .line 158
    iget v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    iget v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    if-lt v1, v2, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->fillBuf()V

    .line 162
    :cond_0
    iget v1, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_3

    .line 163
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    aget-byte v2, v2, v1

    if-ne v2, v3, :cond_2

    .line 164
    iget v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, -0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 165
    .local v2, "lineEnd":I
    :goto_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    iget v5, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    iget v6, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    sub-int v6, v2, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    .line 166
    .local v3, "res":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    .line 167
    monitor-exit v0

    return-object v3

    .line 162
    .end local v2    # "lineEnd":I
    .end local v3    # "res":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;

    iget v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    iget v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/koushikdutta/async/http/cache/StrictLineReader$1;-><init>(Lcom/koushikdutta/async/http/cache/StrictLineReader;I)V

    .line 181
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :goto_2
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    iget v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    iget v5, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    iget v6, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 183
    const/4 v2, -0x1

    iput v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    .line 184
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/StrictLineReader;->fillBuf()V

    .line 186
    iget v2, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    .local v2, "i":I
    :goto_3
    iget v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->end:I

    if-eq v2, v4, :cond_6

    .line 187
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_5

    .line 188
    iget v3, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    if-eq v2, v3, :cond_4

    .line 189
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->buf:[B

    iget v4, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    iget v5, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    sub-int v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 191
    :cond_4
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/koushikdutta/async/http/cache/StrictLineReader;->pos:I

    .line 192
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 186
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    :cond_6
    goto :goto_2

    .line 152
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
