.class public final Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;
.super Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;
.source "AesGcmHkdfStreaming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;,
        Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamEncrypter;
    }
.end annotation


# static fields
.field private static final NONCE_PREFIX_IN_BYTES:I = 0x7

.field private static final NONCE_SIZE_IN_BYTES:I = 0xc

.field private static final TAG_SIZE_IN_BYTES:I = 0x10


# instance fields
.field private final ciphertextSegmentSize:I

.field private final firstSegmentOffset:I

.field private final hkdfAlg:Ljava/lang/String;

.field private final ikm:[B

.field private final keySizeInBytes:I

.field private final plaintextSegmentSize:I


# direct methods
.method public constructor <init>([BLjava/lang/String;III)V
    .locals 4
    .param p1, "ikm"    # [B
    .param p2, "hkdfAlg"    # Ljava/lang/String;
    .param p3, "keySizeInBytes"    # I
    .param p4, "ciphertextSegmentSize"    # I
    .param p5, "firstSegmentOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ikm",
            "hkdfAlg",
            "keySizeInBytes",
            "ciphertextSegmentSize",
            "firstSegmentOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;-><init>()V

    .line 97
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    array-length v0, p1

    if-lt v0, p3, :cond_1

    .line 101
    invoke-static {p3}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 102
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->getHeaderLength()I

    move-result v0

    add-int/2addr v0, p5

    add-int/2addr v0, v1

    if-le p4, v0, :cond_0

    .line 105
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->ikm:[B

    .line 106
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->hkdfAlg:Ljava/lang/String;

    .line 107
    iput p3, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->keySizeInBytes:I

    .line 108
    iput p4, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->ciphertextSegmentSize:I

    .line 109
    iput p5, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->firstSegmentOffset:I

    .line 110
    add-int/lit8 v0, p4, -0x10

    iput v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->plaintextSegmentSize:I

    .line 111
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ciphertextSegmentSize too small"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ikm too short, must be >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->cipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;

    .line 48
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->randomSalt()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[B
    .locals 1

    .line 48
    invoke-static {}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->randomNonce()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;[B[B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->deriveKeySpec([B[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400([BJZ)Ljavax/crypto/spec/GCMParameterSpec;
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->paramsForSegment([BJZ)Ljavax/crypto/spec/GCMParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;

    .line 48
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->keySizeInBytes:I

    return v0
.end method

.method private static cipherInstance()Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "AES/GCM/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method

.method private deriveKeySpec([B[B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 3
    .param p1, "salt"    # [B
    .param p2, "aad"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "salt",
            "aad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->hkdfAlg:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->ikm:[B

    iget v2, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->keySizeInBytes:I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/crypto/tink/subtle/Hkdf;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object v0

    .line 192
    .local v0, "key":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static paramsForSegment([BJZ)Ljavax/crypto/spec/GCMParameterSpec;
    .locals 4
    .param p0, "prefix"    # [B
    .param p1, "segmentNr"    # J
    .param p3, "last"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "segmentNr",
            "last"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 178
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 179
    .local v0, "nonce":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 180
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 181
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/subtle/SubtleUtil;->putAsUnsigedInt(Ljava/nio/ByteBuffer;J)V

    .line 182
    int-to-byte v1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 183
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    return-object v1
.end method

.method private static randomNonce()[B
    .locals 1

    .line 187
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method private randomSalt()[B
    .locals 1

    .line 173
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->keySizeInBytes:I

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public expectedCiphertextSize(J)J
    .locals 11
    .param p1, "plaintextSize"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plaintextSize"
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->getCiphertextOffset()I

    move-result v0

    int-to-long v0, v0

    .line 159
    .local v0, "offset":J
    add-long v2, p1, v0

    iget v4, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->plaintextSegmentSize:I

    int-to-long v5, v4

    div-long/2addr v2, v5

    .line 160
    .local v2, "fullSegments":J
    iget v5, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->ciphertextSegmentSize:I

    int-to-long v5, v5

    mul-long/2addr v5, v2

    .line 161
    .local v5, "ciphertextSize":J
    add-long v7, p1, v0

    int-to-long v9, v4

    rem-long/2addr v7, v9

    .line 162
    .local v7, "lastSegmentSize":J
    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_0

    .line 163
    const-wide/16 v9, 0x10

    add-long/2addr v9, v7

    add-long/2addr v5, v9

    .line 165
    :cond_0
    return-wide v5
.end method

.method public getCiphertextOffset()I
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->getHeaderLength()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->firstSegmentOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCiphertextOverhead()I
    .locals 1

    .line 146
    const/16 v0, 0x10

    return v0
.end method

.method public getCiphertextSegmentSize()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->ciphertextSegmentSize:I

    return v0
.end method

.method public getFirstSegmentOffset()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->firstSegmentOffset:I

    return v0
.end method

.method public getHeaderLength()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->keySizeInBytes:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getPlaintextSegmentSize()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->plaintextSegmentSize:I

    return v0
.end method

.method public bridge synthetic newDecryptingChannel(Ljava/nio/channels/ReadableByteChannel;[B)Ljava/nio/channels/ReadableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
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

    .line 48
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newDecryptingChannel(Ljava/nio/channels/ReadableByteChannel;[B)Ljava/nio/channels/ReadableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDecryptingStream(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "ciphertextStream",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newDecryptingStream(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newEncryptingChannel(Ljava/nio/channels/WritableByteChannel;[B)Ljava/nio/channels/WritableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
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

    .line 48
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newEncryptingChannel(Ljava/nio/channels/WritableByteChannel;[B)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newEncryptingStream(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newEncryptingStream(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSeekableDecryptingChannel(Ljava/nio/channels/SeekableByteChannel;[B)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "ciphertextSource",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newSeekableDecryptingChannel(Ljava/nio/channels/SeekableByteChannel;[B)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public newStreamSegmentDecrypter()Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;-><init>(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;)V

    return-object v0
.end method

.method public bridge synthetic newStreamSegmentDecrypter()Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->newStreamSegmentDecrypter()Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;

    move-result-object v0

    return-object v0
.end method

.method public newStreamSegmentEncrypter([B)Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamEncrypter;
    .locals 1
    .param p1, "aad"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamEncrypter;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamEncrypter;-><init>(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;[B)V

    return-object v0
.end method

.method public bridge synthetic newStreamSegmentEncrypter([B)Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->newStreamSegmentEncrypter([B)Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamEncrypter;

    move-result-object p1

    return-object p1
.end method
