.class Lcom/google/crypto/tink/hybrid/subtle/RsaKem;
.super Ljava/lang/Object;
.source "RsaKem.java"


# static fields
.field static final EMPTY_AAD:[B

.field static final MIN_RSA_KEY_LENGTH_BITS:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->EMPTY_AAD:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bigIntSizeInBytes(Ljava/math/BigInteger;)I
    .locals 1
    .param p0, "mod"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mod"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static bigIntToByteArray(Ljava/math/BigInteger;I)[B
    .locals 7
    .param p0, "bigInt"    # Ljava/math/BigInteger;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bigInt",
            "size"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 50
    .local v0, "value":[B
    array-length v1, v0

    if-ne v1, p1, :cond_0

    .line 51
    return-object v0

    .line 54
    :cond_0
    new-array v1, p1, [B

    .line 55
    .local v1, "result":[B
    array-length v2, v0

    array-length v3, v1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    .line 56
    aget-byte v2, v0, v5

    if-nez v2, :cond_1

    .line 60
    array-length v2, v1

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 57
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value is one-byte longer than the expected size, but its first byte is not 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_2
    array-length v2, v0

    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 62
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    :goto_0
    return-object v1

    .line 64
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 65
    const-string v4, "Value has invalid length, must be of length at most (%d + 1), but got %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static generateRsaKeyPair(I)Ljava/security/KeyPair;
    .locals 3
    .param p0, "keySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySize"
        }
    .end annotation

    .line 90
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 91
    .local v0, "rsaGenerator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v0, p0}, Ljava/security/KeyPairGenerator;->initialize(I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .line 95
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    return-object v1

    .line 92
    .end local v0    # "rsaGenerator":Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No support for RSA algorithm."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static generateSecret(Ljava/math/BigInteger;)[B
    .locals 4
    .param p0, "max"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    .line 77
    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->bigIntSizeInBytes(Ljava/math/BigInteger;)I

    move-result v0

    .line 78
    .local v0, "maxSizeInBytes":I
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 81
    .local v1, "rand":Ljava/util/Random;
    :goto_0
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 82
    .local v2, "r":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_0

    .line 84
    invoke-static {v2, v0}, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->bigIntToByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v3

    return-object v3

    .line 82
    :cond_0
    goto :goto_0
.end method

.method static validateRsaModulus(Ljava/math/BigInteger;)V
    .locals 4
    .param p0, "mod"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mod"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    .line 38
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 34
    const-string v1, "RSA key must be of at least size %d bits, but got %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
