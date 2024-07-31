.class Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;
.super Ljava/lang/Object;
.source "StreamingAeadSeekableDecryptingChannel.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# static fields
.field private static final PLAINTEXT_SEGMENT_EXTRA_SIZE:I = 0x10


# instance fields
.field private final aad:[B

.field private final ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

.field private final ciphertextChannelSize:J

.field private final ciphertextOffset:I

.field private final ciphertextSegment:Ljava/nio/ByteBuffer;

.field private final ciphertextSegmentSize:I

.field private currentSegmentNr:I

.field private final decrypter:Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

.field private final firstSegmentOffset:I

.field private final header:Ljava/nio/ByteBuffer;

.field private headerRead:Z

.field private isCurrentSegmentDecrypted:Z

.field private isopen:Z

.field private final lastCiphertextSegmentSize:I

.field private final numberOfSegments:I

.field private plaintextPosition:J

.field private final plaintextSegment:Ljava/nio/ByteBuffer;

.field private final plaintextSegmentSize:I

.field private plaintextSize:J


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;Ljava/nio/channels/SeekableByteChannel;[B)V
    .locals 8
    .param p1, "streamAead"    # Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;
    .param p2, "ciphertext"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamAead",
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newStreamSegmentDecrypter()Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->decrypter:Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

    .line 66
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    .line 67
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getHeaderLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextSegmentSize()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegmentSize:I

    .line 69
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getPlaintextSegmentSize()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegmentSize:I

    .line 71
    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->headerRead:Z

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->currentSegmentNr:I

    .line 75
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isCurrentSegmentDecrypted:Z

    .line 76
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannelSize:J

    .line 77
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->aad:[B

    .line 78
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->isOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isopen:Z

    .line 79
    iget-wide v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannelSize:J

    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegmentSize:I

    int-to-long v3, v2

    div-long v3, v0, v3

    long-to-int v3, v3

    .line 80
    .local v3, "fullSegments":I
    int-to-long v4, v2

    rem-long/2addr v0, v4

    long-to-int v0, v0

    .line 81
    .local v0, "remainder":I
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextOverhead()I

    move-result v1

    .line 82
    .local v1, "ciphertextOverhead":I
    if-lez v0, :cond_1

    .line 83
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    .line 84
    if-lt v0, v1, :cond_0

    .line 87
    iput v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->lastCiphertextSegmentSize:I

    goto :goto_0

    .line 85
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Invalid ciphertext size"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_1
    iput v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    .line 90
    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegmentSize:I

    iput v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->lastCiphertextSegmentSize:I

    .line 92
    :goto_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextOffset()I

    move-result v2

    iput v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextOffset:I

    .line 93
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getHeaderLength()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->firstSegmentOffset:I

    .line 94
    if-ltz v2, :cond_3

    .line 97
    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    int-to-long v4, v2

    int-to-long v6, v1

    mul-long/2addr v4, v6

    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextOffset:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    .line 98
    .local v4, "overhead":J
    iget-wide v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannelSize:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    .line 101
    sub-long/2addr v6, v4

    iput-wide v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSize:J

    .line 102
    return-void

    .line 99
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v6, "Ciphertext is too short"

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    .end local v4    # "overhead":J
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Invalid ciphertext offset or header length"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getSegmentNr(J)I
    .locals 4
    .param p1, "plaintextPosition"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plaintextPosition"
        }
    .end annotation

    .line 189
    iget v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegmentSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private reachedEnd()Z
    .locals 3

    .line 253
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isCurrentSegmentDecrypted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->currentSegmentNr:I

    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 253
    :goto_0
    return v1
.end method

.method private tryLoadSegment(I)Z
    .locals 7
    .param p1, "segmentNr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "segmentNr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    if-ge p1, v0, :cond_7

    .line 205
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 206
    .local v0, "isLast":Z
    :goto_0
    iget v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->currentSegmentNr:I

    if-ne p1, v3, :cond_1

    .line 207
    iget-boolean v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isCurrentSegmentDecrypted:Z

    if-eqz v3, :cond_4

    .line 208
    return v1

    .line 212
    :cond_1
    int-to-long v3, p1

    iget v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegmentSize:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    .line 213
    .local v3, "ciphertextPosition":J
    iget v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegmentSize:I

    .line 214
    .local v5, "segmentSize":I
    if-eqz v0, :cond_2

    .line 215
    iget v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->lastCiphertextSegmentSize:I

    .line 217
    :cond_2
    if-nez p1, :cond_3

    .line 218
    iget v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextOffset:I

    sub-int/2addr v5, v6

    .line 219
    int-to-long v3, v6

    .line 221
    :cond_3
    iget-object v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v6, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 222
    iget-object v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 223
    iget-object v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 224
    iput p1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->currentSegmentNr:I

    .line 225
    iput-boolean v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isCurrentSegmentDecrypted:Z

    .line 227
    .end local v3    # "ciphertextPosition":J
    .end local v5    # "segmentSize":I
    :cond_4
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_5

    .line 228
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 230
    :cond_5
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_6

    .line 231
    return v2

    .line 233
    :cond_6
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 234
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->decrypter:Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3, p1, v0, v4}, Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;->decryptSegment(Ljava/nio/ByteBuffer;IZLjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    nop

    .line 243
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 244
    iput-boolean v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isCurrentSegmentDecrypted:Z

    .line 245
    return v1

    .line 237
    :catch_0
    move-exception v1

    .line 240
    .local v1, "ex":Ljava/security/GeneralSecurityException;
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->currentSegmentNr:I

    .line 241
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to decrypt"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 203
    .end local v0    # "isLast":Z
    .end local v1    # "ex":Ljava/security/GeneralSecurityException;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryReadHeader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->firstSegmentOffset:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 172
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 173
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->decrypter:Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->aad:[B

    invoke-interface {v0, v1, v2}, Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;->init(Ljava/nio/ByteBuffer;[B)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->headerRead:Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    nop

    .line 184
    return v0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isopen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 351
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 358
    :try_start_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isopen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 358
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized position()J
    .locals 2

    monitor-enter p0

    .line 147
    :try_start_0
    iget-wide v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 147
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPosition"
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    iput-wide p1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-object p0

    .line 156
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;
    .end local p1    # "newPosition":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dst"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 276
    :try_start_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isopen:Z

    if-eqz v0, :cond_5

    .line 279
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->headerRead:Z

    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->tryReadHeader()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 284
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 285
    .local v0, "startPos":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_3

    iget-wide v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    iget-wide v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSize:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 288
    iget-wide v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    invoke-direct {p0, v1, v2}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->getSegmentNr(J)I

    move-result v1

    .line 290
    .local v1, "segmentNr":I
    if-nez v1, :cond_1

    .line 291
    iget-wide v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    long-to-int v2, v2

    .local v2, "segmentOffset":I
    goto :goto_1

    .line 293
    .end local v2    # "segmentOffset":I
    :cond_1
    iget-wide v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    iget v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextOffset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegmentSize:I

    int-to-long v4, v4

    rem-long/2addr v2, v4

    long-to-int v2, v2

    .line 296
    .restart local v2    # "segmentOffset":I
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->tryLoadSegment(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 297
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 298
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 299
    iget-wide v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    .line 300
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 302
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 303
    .local v3, "sliceSize":I
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 304
    .local v4, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 305
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 306
    iget-wide v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    .line 307
    iget-object v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    .end local v1    # "segmentNr":I
    .end local v2    # "segmentOffset":I
    .end local v3    # "sliceSize":I
    .end local v4    # "slice":Ljava/nio/ByteBuffer;
    :goto_2
    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    .line 314
    .local v1, "read":I
    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->reachedEnd()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    .line 315
    const/4 v2, -0x1

    monitor-exit p0

    return v2

    .line 317
    :cond_4
    monitor-exit p0

    return v1

    .line 277
    .end local v0    # "startPos":I
    .end local v1    # "read":I
    :cond_5
    :try_start_2
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;J)I
    .locals 3
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "start"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "start"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->position()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    .local v0, "oldPosition":J
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 268
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    monitor-exit p0

    return v2

    .line 270
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 271
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 264
    .end local v0    # "oldPosition":J
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    .end local p2    # "start":J
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()J
    .locals 2

    .line 329
    iget-wide v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSize:J

    return-wide v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 111
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .local v0, "res":Ljava/lang/StringBuilder;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .local v1, "ctChannel":Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v1    # "ctChannel":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v2, "position: n/a"

    move-object v1, v2

    .line 119
    .local v1, "ctChannel":Ljava/lang/String;
    :goto_0
    const-string v2, "StreamingAeadSeekableDecryptingChannel"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nciphertextChannel"

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nciphertextChannelSize:"

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannelSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nplaintextSize:"

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nciphertextSegmentSize:"

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegmentSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nnumberOfSegments:"

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nheaderRead:"

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->headerRead:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nplaintextPosition:"

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nHeader"

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position:"

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " limit:"

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ncurrentSegmentNr:"

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->currentSegmentNr:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nciphertextSgement"

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position:"

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " limit:"

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nisCurrentSegmentDecrypted:"

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isCurrentSegmentDecrypted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nplaintextSegment"

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position:"

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " limit:"

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 110
    .end local v0    # "res":Ljava/lang/StringBuilder;
    .end local v1    # "ctChannel":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NonWritableChannelException;
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0
.end method

.method public declared-synchronized verifiedSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 333
    :try_start_0
    iget v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->tryLoadSegment(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-wide v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 336
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "could not verify the size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NonWritableChannelException;
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0
.end method
