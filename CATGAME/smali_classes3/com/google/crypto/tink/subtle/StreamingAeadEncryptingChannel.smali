.class Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;
.super Ljava/lang/Object;
.source "StreamingAeadEncryptingChannel.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# instance fields
.field private ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

.field ctBuffer:Ljava/nio/ByteBuffer;

.field private encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

.field open:Z

.field private plaintextSegmentSize:I

.field ptBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;Ljava/nio/channels/WritableByteChannel;[B)V
    .locals 3
    .param p1, "streamAead"    # Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;
    .param p2, "ciphertextChannel"    # Ljava/nio/channels/WritableByteChannel;
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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->open:Z

    .line 41
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

    .line 42
    invoke-virtual {p1, p3}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newStreamSegmentEncrypter([B)Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    .line 43
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getPlaintextSegmentSize()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->plaintextSegmentSize:I

    .line 44
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    .line 45
    iget v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->plaintextSegmentSize:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 46
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextSegmentSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    .line 50
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    invoke-interface {v1}, Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 51
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p2, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 53
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
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->open:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 95
    monitor-exit p0

    return-void

    .line 100
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 102
    .local v0, "n":I
    if-lez v0, :cond_1

    .line 105
    .end local v0    # "n":I
    goto :goto_0

    .line 103
    .restart local v0    # "n":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to write ciphertext before closing"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local v0    # "n":I
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 108
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;->encryptSegment(Ljava/nio/ByteBuffer;ZLjava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    nop

    .line 114
    :try_start_3
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 115
    :goto_1
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 117
    .restart local v0    # "n":I
    if-lez v0, :cond_3

    .line 120
    .end local v0    # "n":I
    goto :goto_1

    .line 118
    .restart local v0    # "n":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to write ciphertext before closing"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    .end local v0    # "n":I
    :cond_4
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->open:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    .end local v0    # "ex":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->open:Z

    return v0
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "pt"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->open:Z

    if-eqz v0, :cond_4

    .line 60
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 63
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 64
    .local v0, "startPosition":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 65
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v0

    monitor-exit p0

    return v1

    .line 68
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 69
    .local v1, "sliceSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 70
    .local v2, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 71
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 74
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 75
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v5, v2, v4, v6}, Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;->encryptSegment(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZLjava/nio/ByteBuffer;)V

    goto :goto_1

    .line 78
    :cond_2
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v5, v4, v6}, Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;->encryptSegment(Ljava/nio/ByteBuffer;ZLjava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :goto_1
    nop

    .line 83
    :try_start_3
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 84
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 85
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 86
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->plaintextSegmentSize:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 87
    nop

    .end local v1    # "sliceSize":I
    .end local v2    # "slice":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 80
    .restart local v1    # "sliceSize":I
    .restart local v2    # "slice":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    .line 81
    .local v3, "ex":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 88
    .end local v1    # "sliceSize":I
    .end local v2    # "slice":Ljava/nio/ByteBuffer;
    .end local v3    # "ex":Ljava/security/GeneralSecurityException;
    :cond_3
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v1, v0

    monitor-exit p0

    return v1

    .line 58
    .end local v0    # "startPosition":I
    :cond_4
    :try_start_4
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    .end local p1    # "pt":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
