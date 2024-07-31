.class public final Lcom/google/crypto/tink/subtle/AesSiv;
.super Ljava/lang/Object;
.source "AesSiv.java"

# interfaces
.implements Lcom/google/crypto/tink/DeterministicAead;


# static fields
.field private static final BLOCK_ONE:[B

.field private static final BLOCK_ZERO:[B

.field private static final KEY_SIZES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aesCtrKey:[B

.field private final cmacForS2V:Lcom/google/crypto/tink/subtle/PrfAesCmac;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/subtle/AesSiv;->KEY_SIZES:Ljava/util/Collection;

    .line 42
    const/16 v0, 0x10

    new-array v1, v0, [B

    sput-object v1, Lcom/google/crypto/tink/subtle/AesSiv;->BLOCK_ZERO:[B

    .line 43
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/crypto/tink/subtle/AesSiv;->BLOCK_ONE:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/google/crypto/tink/subtle/AesSiv;->KEY_SIZES:Ljava/util/Collection;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 60
    .local v0, "k1":[B
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/subtle/AesSiv;->aesCtrKey:[B

    .line 61
    new-instance v1, Lcom/google/crypto/tink/subtle/PrfAesCmac;

    invoke-direct {v1, v0}, Lcom/google/crypto/tink/subtle/PrfAesCmac;-><init>([B)V

    iput-object v1, p0, Lcom/google/crypto/tink/subtle/AesSiv;->cmacForS2V:Lcom/google/crypto/tink/subtle/PrfAesCmac;

    .line 62
    return-void

    .line 55
    .end local v0    # "k1":[B
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes; key must have 64 bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private varargs s2v([[B)[B
    .locals 6
    .param p1, "s"    # [[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 72
    array-length v0, p1

    const/16 v1, 0x10

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/AesSiv;->cmacForS2V:Lcom/google/crypto/tink/subtle/PrfAesCmac;

    sget-object v2, Lcom/google/crypto/tink/subtle/AesSiv;->BLOCK_ONE:[B

    invoke-virtual {v0, v2, v1}, Lcom/google/crypto/tink/subtle/PrfAesCmac;->compute([BI)[B

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/AesSiv;->cmacForS2V:Lcom/google/crypto/tink/subtle/PrfAesCmac;

    sget-object v2, Lcom/google/crypto/tink/subtle/AesSiv;->BLOCK_ZERO:[B

    invoke-virtual {v0, v2, v1}, Lcom/google/crypto/tink/subtle/PrfAesCmac;->compute([BI)[B

    move-result-object v0

    .line 78
    .local v0, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 80
    aget-object v3, p1, v2

    if-nez v3, :cond_1

    .line 81
    const/4 v3, 0x0

    new-array v3, v3, [B

    .local v3, "currBlock":[B
    goto :goto_1

    .line 83
    .end local v3    # "currBlock":[B
    :cond_1
    aget-object v3, p1, v2

    .line 85
    .restart local v3    # "currBlock":[B
    :goto_1
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/AesUtil;->dbl([B)[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/AesSiv;->cmacForS2V:Lcom/google/crypto/tink/subtle/PrfAesCmac;

    invoke-virtual {v5, v3, v1}, Lcom/google/crypto/tink/subtle/PrfAesCmac;->compute([BI)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/crypto/tink/subtle/Bytes;->xor([B[B)[B

    move-result-object v0

    .line 78
    .end local v3    # "currBlock":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p1, v2

    .line 88
    .local v2, "lastBlock":[B
    array-length v3, v2

    if-lt v3, v1, :cond_3

    .line 89
    invoke-static {v2, v0}, Lcom/google/crypto/tink/subtle/Bytes;->xorEnd([B[B)[B

    move-result-object v0

    goto :goto_2

    .line 91
    :cond_3
    invoke-static {v2}, Lcom/google/crypto/tink/subtle/AesUtil;->cmacPad([B)[B

    move-result-object v3

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/AesUtil;->dbl([B)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/crypto/tink/subtle/Bytes;->xor([B[B)[B

    move-result-object v0

    .line 93
    :goto_2
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/AesSiv;->cmacForS2V:Lcom/google/crypto/tink/subtle/PrfAesCmac;

    invoke-virtual {v3, v0, v1}, Lcom/google/crypto/tink/subtle/PrfAesCmac;->compute([BI)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public decryptDeterministically([B[B)[B
    .locals 8
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

    .line 121
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 125
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v2, "AES/CTR/NoPadding"

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 127
    .local v0, "aesCtr":Ljavax/crypto/Cipher;
    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 129
    .local v3, "expectedIv":[B
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 130
    .local v4, "ivForJavaCrypto":[B
    const/16 v5, 0x8

    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 131
    const/16 v5, 0xc

    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 133
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v6, p0, Lcom/google/crypto/tink/subtle/AesSiv;->aesCtrKey:[B

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 138
    array-length v5, p1

    invoke-static {p1, v1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 139
    .local v1, "ctrCiphertext":[B
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 140
    .local v5, "decryptedPt":[B
    array-length v6, v1

    if-nez v6, :cond_0

    if-nez v5, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/subtle/SubtleUtil;->isAndroid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    new-array v5, v2, [B

    .line 146
    :cond_0
    new-array v6, v7, [[B

    aput-object p2, v6, v2

    const/4 v2, 0x1

    aput-object v5, v6, v2

    invoke-direct {p0, v6}, Lcom/google/crypto/tink/subtle/AesSiv;->s2v([[B)[B

    move-result-object v2

    .line 148
    .local v2, "computedIv":[B
    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 149
    return-object v5

    .line 151
    :cond_1
    new-instance v6, Ljavax/crypto/AEADBadTagException;

    const-string v7, "Integrity check failed."

    invoke-direct {v6, v7}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 122
    .end local v0    # "aesCtr":Ljavax/crypto/Cipher;
    .end local v1    # "ctrCiphertext":[B
    .end local v2    # "computedIv":[B
    .end local v3    # "expectedIv":[B
    .end local v4    # "ivForJavaCrypto":[B
    .end local v5    # "decryptedPt":[B
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Ciphertext too short."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encryptDeterministically([B[B)[B
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

    .line 99
    array-length v0, p1

    const v1, 0x7fffffef

    if-gt v0, v1, :cond_0

    .line 103
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "AES/CTR/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 104
    .local v0, "aesCtr":Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    new-array v2, v1, [[B

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    invoke-direct {p0, v2}, Lcom/google/crypto/tink/subtle/AesSiv;->s2v([[B)[B

    move-result-object v2

    .line 105
    .local v2, "computedIv":[B
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 106
    .local v5, "ivForJavaCrypto":[B
    const/16 v6, 0x8

    aget-byte v7, v5, v6

    and-int/lit8 v7, v7, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 107
    const/16 v6, 0xc

    aget-byte v7, v5, v6

    and-int/lit8 v7, v7, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 109
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v7, p0, Lcom/google/crypto/tink/subtle/AesSiv;->aesCtrKey:[B

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v4, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 114
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 115
    .local v6, "ctrCiphertext":[B
    new-array v1, v1, [[B

    aput-object v2, v1, v3

    aput-object v6, v1, v4

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v1

    return-object v1

    .line 100
    .end local v0    # "aesCtr":Ljavax/crypto/Cipher;
    .end local v2    # "computedIv":[B
    .end local v5    # "ivForJavaCrypto":[B
    .end local v6    # "ctrCiphertext":[B
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
