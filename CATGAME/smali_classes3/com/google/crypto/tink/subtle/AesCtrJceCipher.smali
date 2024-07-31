.class public final Lcom/google/crypto/tink/subtle/AesCtrJceCipher;
.super Ljava/lang/Object;
.source "AesCtrJceCipher.java"

# interfaces
.implements Lcom/google/crypto/tink/subtle/IndCpaCipher;


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CTR/NoPadding"

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final MIN_IV_SIZE_IN_BYTES:I = 0xc

.field private static final localCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blockSize:I

.field private final ivSize:I

.field private final keySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/subtle/AesCtrJceCipher$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->localCipher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "ivSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "ivSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    array-length v0, p1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 65
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 66
    sget-object v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->blockSize:I

    .line 67
    const/16 v1, 0xc

    if-lt p2, v1, :cond_0

    if-gt p2, v0, :cond_0

    .line 70
    iput p2, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->ivSize:I

    .line 71
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid IV size"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doCtr([BII[BI[BZ)V
    .locals 11
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .param p6, "iv"    # [B
    .param p7, "encrypt"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "input",
            "inputOffset",
            "inputLen",
            "output",
            "outputOffset",
            "iv",
            "encrypt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 121
    move-object v0, p0

    sget-object v1, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    .line 123
    .local v1, "cipher":Ljavax/crypto/Cipher;
    iget v2, v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->blockSize:I

    new-array v8, v2, [B

    .line 124
    .local v8, "counter":[B
    iget v2, v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->ivSize:I

    const/4 v3, 0x0

    move-object/from16 v9, p6

    invoke-static {v9, v3, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v10, v2

    .line 127
    .local v10, "paramSpec":Ljavax/crypto/spec/IvParameterSpec;
    if-eqz p7, :cond_0

    .line 128
    const/4 v2, 0x1

    iget-object v3, v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v2, v3, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 130
    :cond_0
    const/4 v2, 0x2

    iget-object v3, v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v2, v3, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 132
    :goto_0
    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v2

    .line 133
    .local v2, "numBytes":I
    move v3, p3

    if-ne v2, v3, :cond_1

    .line 136
    return-void

    .line 134
    :cond_1
    new-instance v4, Ljava/security/GeneralSecurityException;

    const-string v5, "stored output\'s length does not match input\'s length"

    invoke-direct {v4, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 10
    .param p1, "ciphertext"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ciphertext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 102
    array-length v0, p1

    iget v1, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->ivSize:I

    if-lt v0, v1, :cond_0

    .line 105
    new-array v0, v1, [B

    .line 106
    .local v0, "iv":[B
    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    array-length v1, p1

    iget v4, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->ivSize:I

    sub-int/2addr v1, v4

    new-array v1, v1, [B

    .line 108
    .local v1, "plaintext":[B
    array-length v2, p1

    sub-int v5, v2, v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->doCtr([BII[BI[BZ)V

    .line 109
    return-object v1

    .line 103
    .end local v0    # "iv":[B
    .end local v1    # "plaintext":[B
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "ciphertext too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt([B)[B
    .locals 10
    .param p1, "plaintext"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "plaintext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    array-length v0, p1

    iget v1, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->ivSize:I

    const v2, 0x7fffffff

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_0

    .line 86
    array-length v0, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 87
    .local v0, "ciphertext":[B
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v1

    .line 88
    .local v1, "iv":[B
    iget v2, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->ivSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    const/4 v4, 0x0

    array-length v5, p1

    iget v7, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->ivSize:I

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    move-object v8, v1

    invoke-direct/range {v2 .. v9}, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->doCtr([BII[BI[BZ)V

    .line 90
    return-object v0

    .line 83
    .end local v0    # "ciphertext":[B
    .end local v1    # "iv":[B
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plaintext length can not exceed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;->ivSize:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
