.class public final Lcom/google/crypto/tink/subtle/X25519;
.super Ljava/lang/Object;
.source "X25519.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSharedSecret([B[B)[B
    .locals 4
    .param p0, "privateKey"    # [B
    .param p1, "peersPublicValue"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "peersPublicValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 93
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 96
    const/16 v0, 0xb

    new-array v0, v0, [J

    .line 98
    .local v0, "x":[J
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 99
    .local v1, "e":[B
    const/4 v2, 0x0

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xf8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 100
    const/16 v2, 0x1f

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 101
    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 103
    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/subtle/Curve25519;->curveMult([J[B[B)V

    .line 104
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v2

    return-object v2

    .line 94
    .end local v0    # "x":[J
    .end local v1    # "e":[B
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Private key must have 32 bytes."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generatePrivateKey()[B
    .locals 3

    .line 72
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v0

    .line 74
    .local v0, "privateKey":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 75
    const/16 v1, 0x1f

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 76
    aget-byte v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 78
    return-object v0
.end method

.method public static publicFromPrivate([B)[B
    .locals 3
    .param p0, "privateKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 116
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 119
    new-array v0, v1, [B

    .line 120
    .local v0, "base":[B
    const/4 v1, 0x0

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    .line 121
    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/X25519;->computeSharedSecret([B[B)[B

    move-result-object v1

    return-object v1

    .line 117
    .end local v0    # "base":[B
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Private key must have 32 bytes."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
