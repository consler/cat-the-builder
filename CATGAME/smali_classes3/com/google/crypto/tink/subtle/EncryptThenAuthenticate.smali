.class public final Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;
.super Ljava/lang/Object;
.source "EncryptThenAuthenticate.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# instance fields
.field private final cipher:Lcom/google/crypto/tink/subtle/IndCpaCipher;

.field private final mac:Lcom/google/crypto/tink/Mac;

.field private final macLength:I


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/subtle/IndCpaCipher;Lcom/google/crypto/tink/Mac;I)V
    .locals 0
    .param p1, "cipher"    # Lcom/google/crypto/tink/subtle/IndCpaCipher;
    .param p2, "mac"    # Lcom/google/crypto/tink/Mac;
    .param p3, "macLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "cipher",
            "mac",
            "macLength"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->cipher:Lcom/google/crypto/tink/subtle/IndCpaCipher;

    .line 45
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->mac:Lcom/google/crypto/tink/Mac;

    .line 46
    iput p3, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->macLength:I

    .line 47
    return-void
.end method

.method public static newAesCtrHmac([BILjava/lang/String;[BI)Lcom/google/crypto/tink/Aead;
    .locals 4
    .param p0, "aesCtrKey"    # [B
    .param p1, "ivSize"    # I
    .param p2, "hmacAlgorithm"    # Ljava/lang/String;
    .param p3, "hmacKey"    # [B
    .param p4, "tagSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "aesCtrKey",
            "ivSize",
            "hmacAlgorithm",
            "hmacKey",
            "tagSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;-><init>([BI)V

    .line 54
    .local v0, "cipher":Lcom/google/crypto/tink/subtle/IndCpaCipher;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HMAC"

    invoke-direct {v1, p3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 55
    .local v1, "hmacKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Lcom/google/crypto/tink/subtle/PrfMac;

    new-instance v3, Lcom/google/crypto/tink/subtle/PrfHmacJce;

    invoke-direct {v3, p2, v1}, Lcom/google/crypto/tink/subtle/PrfHmacJce;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v2, v3, p4}, Lcom/google/crypto/tink/subtle/PrfMac;-><init>(Lcom/google/crypto/tink/prf/Prf;I)V

    .line 56
    .local v2, "hmac":Lcom/google/crypto/tink/Mac;
    new-instance v3, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;

    invoke-direct {v3, v0, v2, p4}, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;-><init>(Lcom/google/crypto/tink/subtle/IndCpaCipher;Lcom/google/crypto/tink/Mac;I)V

    return-object v3
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 10
    .param p1, "ciphertext"    # [B
    .param p2, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 97
    array-length v0, p1

    iget v1, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->macLength:I

    if-lt v0, v1, :cond_1

    .line 100
    array-length v0, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 101
    .local v0, "rawCiphertext":[B
    array-length v2, p1

    iget v3, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->macLength:I

    sub-int/2addr v2, v3

    array-length v3, p1

    .line 102
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 103
    .local v2, "macValue":[B
    move-object v3, p2

    .line 104
    .local v3, "aad":[B
    if-nez v3, :cond_0

    .line 105
    new-array v3, v1, [B

    .line 107
    :cond_0
    nop

    .line 108
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const-wide/16 v6, 0x8

    array-length v8, v3

    int-to-long v8, v8

    mul-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 109
    .local v4, "aadLengthInBits":[B
    iget-object v5, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->mac:Lcom/google/crypto/tink/Mac;

    const/4 v6, 0x3

    new-array v6, v6, [[B

    aput-object v3, v6, v1

    const/4 v1, 0x1

    aput-object v0, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    invoke-static {v6}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v1

    invoke-interface {v5, v2, v1}, Lcom/google/crypto/tink/Mac;->verifyMac([B[B)V

    .line 110
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->cipher:Lcom/google/crypto/tink/subtle/IndCpaCipher;

    invoke-interface {v1, v0}, Lcom/google/crypto/tink/subtle/IndCpaCipher;->decrypt([B)[B

    move-result-object v1

    return-object v1

    .line 98
    .end local v0    # "rawCiphertext":[B
    .end local v2    # "macValue":[B
    .end local v3    # "aad":[B
    .end local v4    # "aadLengthInBits":[B
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "ciphertext too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt([B[B)[B
    .locals 9
    .param p1, "plaintext"    # [B
    .param p2, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->cipher:Lcom/google/crypto/tink/subtle/IndCpaCipher;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/subtle/IndCpaCipher;->encrypt([B)[B

    move-result-object v0

    .line 74
    .local v0, "ciphertext":[B
    move-object v1, p2

    .line 75
    .local v1, "aad":[B
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 76
    new-array v1, v2, [B

    .line 78
    :cond_0
    nop

    .line 79
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const-wide/16 v5, 0x8

    array-length v7, v1

    int-to-long v7, v7

    mul-long/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 80
    .local v3, "aadLengthInBits":[B
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->mac:Lcom/google/crypto/tink/Mac;

    const/4 v5, 0x3

    new-array v5, v5, [[B

    aput-object v1, v5, v2

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v7, 0x2

    aput-object v3, v5, v7

    invoke-static {v5}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/crypto/tink/Mac;->computeMac([B)[B

    move-result-object v4

    .line 81
    .local v4, "macValue":[B
    new-array v5, v7, [[B

    aput-object v0, v5, v2

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v2

    return-object v2
.end method
