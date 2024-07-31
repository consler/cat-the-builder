.class public final Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;
.super Ljava/lang/Object;
.source "RsaSsaPkcs1VerifyJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeyVerify;


# static fields
.field private static final ASN_PREFIX_SHA256:Ljava/lang/String; = "3031300d060960864801650304020105000420"

.field private static final ASN_PREFIX_SHA512:Ljava/lang/String; = "3051300d060960864801650304020305000440"


# instance fields
.field private final hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

.field private final publicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;)V
    .locals 1
    .param p1, "pubKey"    # Ljava/security/interfaces/RSAPublicKey;
    .param p2, "hash"    # Lcom/google/crypto/tink/subtle/Enums$HashType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "pubKey",
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Validators;->validateSignatureHash(Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 40
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaModulusSize(I)V

    .line 41
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaPublicExponent(Ljava/math/BigInteger;)V

    .line 42
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 43
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;->hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 44
    return-void
.end method

.method private emsaPkcs1([BILcom/google/crypto/tink/subtle/Enums$HashType;)[B
    .locals 10
    .param p1, "m"    # [B
    .param p2, "emLen"    # I
    .param p3, "hash"    # Lcom/google/crypto/tink/subtle/Enums$HashType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "emLen",
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 79
    invoke-static {p3}, Lcom/google/crypto/tink/subtle/Validators;->validateSignatureHash(Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 80
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;->hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 81
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/SubtleUtil;->toDigestAlgo(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 82
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 83
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 84
    .local v1, "h":[B
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;->toAsnPrefix(Lcom/google/crypto/tink/subtle/Enums$HashType;)[B

    move-result-object v2

    .line 85
    .local v2, "asnPrefix":[B
    array-length v3, v2

    array-length v4, v1

    add-int/2addr v3, v4

    .line 86
    .local v3, "tLen":I
    add-int/lit8 v4, v3, 0xb

    if-lt p2, v4, :cond_1

    .line 89
    new-array v4, p2, [B

    .line 90
    .local v4, "em":[B
    const/4 v5, 0x0

    .line 91
    .local v5, "offset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    const/4 v7, 0x0

    aput-byte v7, v4, v5

    .line 92
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    const/4 v8, 0x1

    aput-byte v8, v4, v6

    .line 93
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sub-int v8, p2, v3

    add-int/lit8 v8, v8, -0x3

    if-ge v6, v8, :cond_0

    .line 94
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "offset":I
    .local v8, "offset":I
    const/4 v9, -0x1

    aput-byte v9, v4, v5

    .line 93
    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_0

    .line 96
    .end local v6    # "i":I
    .end local v8    # "offset":I
    .restart local v5    # "offset":I
    :cond_0
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    aput-byte v7, v4, v5

    .line 97
    array-length v5, v2

    invoke-static {v2, v7, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    array-length v5, v2

    add-int/2addr v5, v6

    array-length v8, v1

    invoke-static {v1, v7, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v4

    .line 87
    .end local v4    # "em":[B
    .end local v6    # "offset":I
    :cond_1
    new-instance v4, Ljava/security/GeneralSecurityException;

    const-string v5, "intended encoded message length too short"

    invoke-direct {v4, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private toAsnPrefix(Lcom/google/crypto/tink/subtle/Enums$HashType;)[B
    .locals 3
    .param p1, "hash"    # Lcom/google/crypto/tink/subtle/Enums$HashType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$1;->$SwitchMap$com$google$crypto$tink$subtle$Enums$HashType:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/Enums$HashType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 107
    const-string v0, "3051300d060960864801650304020305000440"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported hash "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    const-string v0, "3031300d060960864801650304020105000420"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public verify([B[B)V
    .locals 9
    .param p1, "signature"    # [B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "signature",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 52
    .local v0, "e":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 53
    .local v1, "n":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    .line 56
    .local v2, "nLengthInBytes":I
    array-length v3, p1

    if-ne v2, v3, :cond_2

    .line 61
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/SubtleUtil;->bytes2Integer([B)Ljava/math/BigInteger;

    move-result-object v3

    .line 62
    .local v3, "s":Ljava/math/BigInteger;
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_1

    .line 65
    invoke-virtual {v3, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 66
    .local v4, "m":Ljava/math/BigInteger;
    invoke-static {v4, v2}, Lcom/google/crypto/tink/subtle/SubtleUtil;->integer2Bytes(Ljava/math/BigInteger;I)[B

    move-result-object v5

    .line 69
    .local v5, "em":[B
    iget-object v6, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;->hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    invoke-direct {p0, p2, v2, v6}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;->emsaPkcs1([BILcom/google/crypto/tink/subtle/Enums$HashType;)[B

    move-result-object v6

    .line 72
    .local v6, "expectedEm":[B
    invoke-static {v5, v6}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 75
    return-void

    .line 73
    :cond_0
    new-instance v7, Ljava/security/GeneralSecurityException;

    const-string v8, "invalid signature"

    invoke-direct {v7, v8}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 63
    .end local v4    # "m":Ljava/math/BigInteger;
    .end local v5    # "em":[B
    .end local v6    # "expectedEm":[B
    :cond_1
    new-instance v4, Ljava/security/GeneralSecurityException;

    const-string v5, "signature out of range"

    invoke-direct {v4, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    .end local v3    # "s":Ljava/math/BigInteger;
    :cond_2
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "invalid signature\'s length"

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
