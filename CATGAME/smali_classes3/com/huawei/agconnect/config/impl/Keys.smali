.class public Lcom/huawei/agconnect/config/impl/Keys;
.super Ljava/lang/Object;
.source "Keys.java"


# static fields
.field public static final AES_KEY_SIZE:I = 0x10

.field private static final KEY_ITERATION_COUNT:I = 0x1388


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAesKey([B[B[B[B)Ljavax/crypto/SecretKey;
    .locals 7
    .param p0, "xBytes"    # [B
    .param p1, "yBytes"    # [B
    .param p2, "zBytes"    # [B
    .param p3, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 47
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    array-length v0, p1

    if-ne v0, v1, :cond_0

    array-length v0, p2

    if-ne v0, v1, :cond_0

    .line 51
    invoke-static {p0, p1, p2}, Lcom/huawei/agconnect/config/impl/Keys;->getKey([B[B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/agconnect/config/impl/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "rootKeyHex":Ljava/lang/String;
    const-string v1, "PBKDF2WithHmacSHA1"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 53
    .local v1, "skFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v4, 0x1388

    const/16 v5, 0x80

    invoke-direct {v2, v3, p3, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 54
    .local v2, "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 56
    .local v3, "workKey":Ljavax/crypto/SecretKey;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v4

    .line 48
    .end local v0    # "rootKeyHex":Ljava/lang/String;
    .end local v1    # "skFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "keySpec":Ljava/security/spec/KeySpec;
    .end local v3    # "workKey":Ljavax/crypto/SecretKey;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid data for generating the key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static bytesShift([BI)[B
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "steps"    # I

    .line 108
    if-eqz p0, :cond_2

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 113
    if-gez p1, :cond_0

    .line 114
    aget-byte v1, p0, v0

    neg-int v2, p1

    shl-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_1

    .line 116
    :cond_0
    aget-byte v1, p0, v0

    shr-int/2addr v1, p1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 112
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_1
    return-object p0

    .line 109
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static bytesXor([B[B)[B
    .locals 4
    .param p0, "left"    # [B
    .param p1, "right"    # [B

    .line 83
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 87
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 91
    array-length v0, p0

    new-array v0, v0, [B

    .line 92
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 93
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 88
    .end local v0    # "result":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left and right must be the same length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "left or right must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getKey([B[B[B)[B
    .locals 2
    .param p0, "xBytes"    # [B
    .param p1, "yBytes"    # [B
    .param p2, "zBytes"    # [B

    .line 70
    const/4 v0, -0x4

    invoke-static {p0, v0}, Lcom/huawei/agconnect/config/impl/Keys;->bytesShift([BI)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/huawei/agconnect/config/impl/Keys;->bytesXor([B[B)[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/huawei/agconnect/config/impl/Keys;->bytesShift([BI)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/huawei/agconnect/config/impl/Keys;->bytesXor([B[B)[B

    move-result-object v0

    return-object v0
.end method
