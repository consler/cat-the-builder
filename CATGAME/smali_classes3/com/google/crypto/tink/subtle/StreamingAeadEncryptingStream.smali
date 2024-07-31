.class Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;
.super Ljava/io/FilterOutputStream;
.source "StreamingAeadEncryptingStream.java"


# instance fields
.field ctBuffer:Ljava/nio/ByteBuffer;

.field private encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

.field open:Z

.field private plaintextSegmentSize:I

.field ptBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;Ljava/io/OutputStream;[B)V
    .locals 3
    .param p1, "streamAead"    # Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;
    .param p2, "ciphertextChannel"    # Ljava/io/OutputStream;
    .param p3, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamAead",
            "ciphertextChannel",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    invoke-virtual {p1, p3}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newStreamSegmentEncrypter([B)Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    .line 41
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getPlaintextSegmentSize()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->plaintextSegmentSize:I

    .line 42
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ptBuffer:Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextSegmentSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    .line 44
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ptBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->plaintextSegmentSize:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 45
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    invoke-interface {v0}, Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    .local v0, "header":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 47
    .local v1, "headerBytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 48
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 49
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->open:Z

    .line 50
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->open:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 95
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 99
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 100
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ptBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;->encryptSegment(Ljava/nio/ByteBuffer;ZLjava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    nop

    .line 110
    :try_start_2
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 111
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->open:Z

    .line 113
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 101
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ptBuffer.remaining():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ptBuffer:Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ctBuffer.remaining():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    .end local v0    # "ex":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
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

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->write([B)V

    .line 55
    return-void
.end method

.method public write([B)V
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

    .line 59
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->write([BII)V

    .line 60
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 8
    .param p1, "pt"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pt",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->open:Z

    if-eqz v0, :cond_1

    .line 70
    move v0, p2

    .line 71
    .local v0, "startPosition":I
    move v1, p3

    .line 72
    .local v1, "remaining":I
    :goto_0
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 74
    .local v2, "sliceSize":I
    invoke-static {p1, v0, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .local v3, "slice":Ljava/nio/ByteBuffer;
    add-int/2addr v0, v2

    .line 76
    sub-int/2addr v1, v2

    .line 78
    :try_start_1
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 79
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 80
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ptBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v5, v3, v6, v7}, Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;->encryptSegment(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZLjava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    nop

    .line 84
    :try_start_2
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 85
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget-object v7, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 86
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 87
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ptBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->plaintextSegmentSize:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 88
    nop

    .end local v2    # "sliceSize":I
    .end local v3    # "slice":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 81
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;
    .restart local v2    # "sliceSize":I
    .restart local v3    # "slice":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v4

    .line 82
    .local v4, "ex":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 89
    .end local v2    # "sliceSize":I
    .end local v3    # "slice":Ljava/nio/ByteBuffer;
    .end local v4    # "ex":Ljava/security/GeneralSecurityException;
    :cond_0
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingStream;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 68
    .end local v0    # "startPosition":I
    .end local v1    # "remaining":I
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Trying to write to closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    .end local p1    # "pt":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
