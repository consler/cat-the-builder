.class public final Lcom/google/crypto/tink/subtle/Hkdf;
.super Ljava/lang/Object;
.source "Hkdf.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeEciesHkdfSymmetricKey([B[BLjava/lang/String;[B[BI)[B
    .locals 2
    .param p0, "ephemeralPublicKeyBytes"    # [B
    .param p1, "sharedSecret"    # [B
    .param p2, "hmacAlgo"    # Ljava/lang/String;
    .param p3, "hkdfSalt"    # [B
    .param p4, "hkdfInfo"    # [B
    .param p5, "keySizeInBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10,
            0x10,
            0x0
        }
        names = {
            "ephemeralPublicKeyBytes",
            "sharedSecret",
            "hmacAlgo",
            "hkdfSalt",
            "hkdfInfo",
            "keySizeInBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v0

    .line 111
    .local v0, "hkdfInput":[B
    invoke-static {p2, v0, p3, p4, p5}, Lcom/google/crypto/tink/subtle/Hkdf;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object v1

    return-object v1
.end method

.method public static computeHkdf(Ljava/lang/String;[B[B[BI)[B
    .locals 8
    .param p0, "macAlgorithm"    # Ljava/lang/String;
    .param p1, "ikm"    # [B
    .param p2, "salt"    # [B
    .param p3, "info"    # [B
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "macAlgorithm",
            "ikm",
            "salt",
            "info",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MAC:Lcom/google/crypto/tink/subtle/EngineFactory;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 51
    .local v0, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    if-gt p4, v1, :cond_3

    .line 54
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v2

    new-array v2, v2, [B

    invoke-direct {v1, v2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 61
    :goto_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 62
    .local v1, "prk":[B
    new-array v2, p4, [B

    .line 63
    .local v2, "result":[B
    const/4 v3, 0x1

    .line 64
    .local v3, "ctr":I
    const/4 v4, 0x0

    .line 65
    .local v4, "pos":I
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 66
    const/4 v5, 0x0

    new-array v6, v5, [B

    .line 68
    .local v6, "digest":[B
    :goto_2
    invoke-virtual {v0, v6}, Ljavax/crypto/Mac;->update([B)V

    .line 69
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 70
    int-to-byte v7, v3

    invoke-virtual {v0, v7}, Ljavax/crypto/Mac;->update(B)V

    .line 71
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v6

    .line 72
    array-length v7, v6

    add-int/2addr v7, v4

    if-ge v7, p4, :cond_2

    .line 73
    array-length v7, v6

    invoke-static {v6, v5, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    array-length v7, v6

    add-int/2addr v4, v7

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 77
    :cond_2
    sub-int v7, p4, v4

    invoke-static {v6, v5, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    nop

    .line 81
    return-object v2

    .line 52
    .end local v1    # "prk":[B
    .end local v2    # "result":[B
    .end local v3    # "ctr":I
    .end local v4    # "pos":I
    .end local v6    # "digest":[B
    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "size too large"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
