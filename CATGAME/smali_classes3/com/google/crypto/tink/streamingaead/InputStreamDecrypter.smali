.class final Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;
.super Ljava/io/InputStream;
.source "InputStreamDecrypter.java"


# instance fields
.field associatedData:[B

.field attemptedMatching:Z

.field ciphertextStream:Ljava/io/InputStream;

.field matchingStream:Ljava/io/InputStream;

.field primitives:Lcom/google/crypto/tink/PrimitiveSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/StreamingAead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/PrimitiveSet;Ljava/io/InputStream;[B)V
    .locals 2
    .param p2, "ciphertextStream"    # Ljava/io/InputStream;
    .param p3, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "primitives",
            "ciphertextStream",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/StreamingAead;",
            ">;",
            "Ljava/io/InputStream;",
            "[B)V"
        }
    .end annotation

    .line 59
    .local p1, "primitives":Lcom/google/crypto/tink/PrimitiveSet;, "Lcom/google/crypto/tink/PrimitiveSet<Lcom/google/crypto/tink/StreamingAead;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->attemptedMatching:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->matchingStream:Ljava/io/InputStream;

    .line 62
    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    .line 64
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-object p2, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->ciphertextStream:Ljava/io/InputStream;

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->ciphertextStream:Ljava/io/InputStream;

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->ciphertextStream:Ljava/io/InputStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 75
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->associatedData:[B

    .line 76
    return-void
.end method

.method private disableRewinding()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->ciphertextStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 95
    return-void
.end method

.method private rewind()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->ciphertextStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 84
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->matchingStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->matchingStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 109
    .end local p0    # "this":Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->ciphertextStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 182
    .end local p0    # "this":Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 120
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [B

    .line 121
    .local v1, "oneByte":[B
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 122
    const/4 v0, 0x0

    aget-byte v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 124
    .end local p0    # "this":Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;
    :cond_0
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 119
    .end local v1    # "oneByte":[B
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 130
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 130
    .end local p0    # "this":Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;
    .end local p1    # "b":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "offset",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 136
    if-nez p3, :cond_0

    .line 137
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->matchingStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->matchingStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 142
    .end local p0    # "this":Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->attemptedMatching:Z

    if-nez v0, :cond_4

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->attemptedMatching:Z

    .line 146
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->primitives:Lcom/google/crypto/tink/PrimitiveSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/PrimitiveSet;->getRawPrimitives()Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/StreamingAead;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/PrimitiveSet$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .local v2, "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/StreamingAead;>;"
    nop

    .line 150
    :try_start_2
    invoke-virtual {v2}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getPrimitive()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/StreamingAead;

    iget-object v4, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->ciphertextStream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->associatedData:[B

    invoke-interface {v3, v4, v5}, Lcom/google/crypto/tink/StreamingAead;->newDecryptingStream(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v3

    .line 151
    .local v3, "attemptedStream":Ljava/io/InputStream;
    invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 152
    .local v4, "retValue":I
    if-eqz v4, :cond_2

    .line 160
    iput-object v3, p0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->matchingStream:Ljava/io/InputStream;

    .line 161
    invoke-direct {p0}, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->disableRewinding()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    monitor-exit p0

    return v4

    .line 154
    :cond_2
    :try_start_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Could not read bytes from the ciphertext stream"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/StreamingAead;>;>;"
    .end local v2    # "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/StreamingAead;>;"
    .end local p1    # "b":[B
    .end local p2    # "offset":I
    .end local p3    # "len":I
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    .end local v3    # "attemptedStream":Ljava/io/InputStream;
    .end local v4    # "retValue":I
    .restart local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/StreamingAead;>;>;"
    .restart local v2    # "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/StreamingAead;>;"
    .restart local p1    # "b":[B
    .restart local p2    # "offset":I
    .restart local p3    # "len":I
    :catch_0
    move-exception v3

    .line 172
    .local v3, "e":Ljava/security/GeneralSecurityException;
    :try_start_4
    invoke-direct {p0}, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->rewind()V

    .line 173
    goto :goto_0

    .line 163
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v3

    .line 168
    .local v3, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;->rewind()V

    .line 169
    goto :goto_0

    .line 176
    .end local v2    # "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/StreamingAead;>;"
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No matching key found for the ciphertext in the stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/StreamingAead;>;>;"
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No matching key found for the ciphertext in the stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    .end local p1    # "b":[B
    .end local p2    # "offset":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
