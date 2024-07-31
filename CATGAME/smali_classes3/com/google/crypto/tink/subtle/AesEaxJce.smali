.class public final Lcom/google/crypto/tink/subtle/AesEaxJce;
.super Ljava/lang/Object;
.source "AesEaxJce.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BLOCK_SIZE_IN_BYTES:I = 0x10

.field static final TAG_SIZE_IN_BYTES:I = 0x10

.field private static final localCtrCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field private static final localEcbCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:[B

.field private final ivSizeInBytes:I

.field private final keySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private final p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    nop

    .line 51
    new-instance v0, Lcom/google/crypto/tink/subtle/AesEaxJce$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/subtle/AesEaxJce$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->localEcbCipher:Ljava/lang/ThreadLocal;

    .line 63
    new-instance v0, Lcom/google/crypto/tink/subtle/AesEaxJce$2;

    invoke-direct {v0}, Lcom/google/crypto/tink/subtle/AesEaxJce$2;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->localCtrCipher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "ivSizeInBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "ivSizeInBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/16 v0, 0x10

    const/16 v1, 0xc

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV size should be either 12 or 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    :goto_0
    iput p2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    .line 91
    array-length v1, p1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 92
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 93
    sget-object v1, Lcom/google/crypto/tink/subtle/AesEaxJce;->localEcbCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    .line 94
    .local v1, "ecb":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 95
    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 96
    .local v0, "block":[B
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/AesEaxJce;->multiplyByX([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->b:[B

    .line 97
    invoke-static {v2}, Lcom/google/crypto/tink/subtle/AesEaxJce;->multiplyByX([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->p:[B

    .line 98
    return-void
.end method

.method private static multiplyByX([B)[B
    .locals 5
    .param p0, "block"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "block"
        }
    .end annotation

    .line 117
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 118
    .local v0, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    .line 120
    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x7

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_0
    aget-byte v1, p0, v2

    shl-int/lit8 v1, v1, 0x1

    .line 124
    const/4 v3, 0x0

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x87

    :goto_1
    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 125
    return-object v0
.end method

.method private omac(Ljavax/crypto/Cipher;I[BII)[B
    .locals 6
    .param p1, "ecb"    # Ljavax/crypto/Cipher;
    .param p2, "tag"    # I
    .param p3, "data"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "ecb",
            "tag",
            "data",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 163
    nop

    .line 164
    nop

    .line 165
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 166
    .local v1, "block":[B
    const/16 v2, 0xf

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 167
    if-nez p5, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->b:[B

    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/AesEaxJce;->xor([B[B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, "position":I
    :goto_0
    sub-int v3, p5, v2

    if-le v3, v0, :cond_2

    .line 173
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 174
    aget-byte v4, v1, v3

    add-int v5, p4, v2

    add-int/2addr v5, v3

    aget-byte v5, p3, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 176
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 177
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 179
    :cond_2
    add-int v0, p4, v2

    add-int v3, p4, p5

    invoke-static {p3, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/subtle/AesEaxJce;->pad([B)[B

    move-result-object v0

    .line 180
    .local v0, "padded":[B
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/AesEaxJce;->xor([B[B)[B

    move-result-object v1

    .line 181
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3
.end method

.method private pad([B)[B
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 137
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->b:[B

    invoke-static {p1, v0}, Lcom/google/crypto/tink/subtle/AesEaxJce;->xor([B[B)[B

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->p:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 141
    .local v0, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 142
    aget-byte v2, v0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    :cond_1
    array-length v1, p1

    array-length v2, p1

    aget-byte v2, v0, v2

    xor-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 145
    return-object v0
.end method

.method private static xor([B[B)[B
    .locals 5
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 102
    nop

    .line 103
    array-length v0, p0

    .line 104
    .local v0, "len":I
    new-array v1, v0, [B

    .line 105
    .local v1, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 106
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 13
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

    .line 219
    array-length v0, p1

    iget v1, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    sub-int/2addr v0, v1

    const/16 v1, 0x10

    sub-int/2addr v0, v1

    .line 220
    .local v0, "plaintextLength":I
    if-ltz v0, :cond_3

    .line 223
    sget-object v2, Lcom/google/crypto/tink/subtle/AesEaxJce;->localEcbCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljavax/crypto/Cipher;

    .line 224
    .local v9, "ecb":Ljavax/crypto/Cipher;
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 225
    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    move-object v3, p0

    move-object v4, v9

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v11

    .line 226
    .local v11, "n":[B
    move-object v2, p2

    .line 227
    .local v2, "aad":[B
    if-nez v2, :cond_0

    .line 228
    const/4 v3, 0x0

    new-array v2, v3, [B

    move-object v12, v2

    goto :goto_0

    .line 227
    :cond_0
    move-object v12, v2

    .line 230
    .end local v2    # "aad":[B
    .local v12, "aad":[B
    :goto_0
    const/4 v5, 0x1

    const/4 v7, 0x0

    array-length v8, v12

    move-object v3, p0

    move-object v4, v9

    move-object v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v8

    .line 231
    .local v8, "h":[B
    const/4 v4, 0x2

    iget v6, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    move-object v2, p0

    move-object v3, v9

    move-object v5, p1

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v2

    .line 232
    .local v2, "t":[B
    const/4 v3, 0x0

    .line 233
    .local v3, "res":B
    array-length v4, p1

    sub-int/2addr v4, v1

    .line 234
    .local v4, "offset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 235
    add-int v6, v4, v5

    aget-byte v6, p1, v6

    aget-byte v7, v8, v5

    xor-int/2addr v6, v7

    aget-byte v7, v11, v5

    xor-int/2addr v6, v7

    aget-byte v7, v2, v5

    xor-int/2addr v6, v7

    or-int/2addr v6, v3

    int-to-byte v3, v6

    .line 234
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 237
    .end local v5    # "i":I
    :cond_1
    if-nez v3, :cond_2

    .line 240
    sget-object v1, Lcom/google/crypto/tink/subtle/AesEaxJce;->localCtrCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    .line 241
    .local v1, "ctr":Ljavax/crypto/Cipher;
    iget-object v5, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v11}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v10, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 242
    iget v5, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    invoke-virtual {v1, p1, v5, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    return-object v5

    .line 238
    .end local v1    # "ctr":Ljavax/crypto/Cipher;
    :cond_2
    new-instance v1, Ljavax/crypto/AEADBadTagException;

    const-string v5, "tag mismatch"

    invoke-direct {v1, v5}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    .end local v2    # "t":[B
    .end local v3    # "res":B
    .end local v4    # "offset":I
    .end local v8    # "h":[B
    .end local v9    # "ecb":Ljavax/crypto/Cipher;
    .end local v11    # "n":[B
    .end local v12    # "aad":[B
    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "ciphertext too short"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encrypt([B[B)[B
    .locals 17
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

    .line 189
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    array-length v0, v7

    iget v1, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    const/16 v8, 0x10

    sub-int/2addr v2, v8

    if-gt v0, v2, :cond_2

    .line 192
    array-length v0, v7

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    new-array v9, v0, [B

    .line 193
    .local v9, "ciphertext":[B
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v10

    .line 194
    .local v10, "iv":[B
    iget v0, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    const/4 v11, 0x0

    invoke-static {v10, v11, v9, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    sget-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->localEcbCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljavax/crypto/Cipher;

    .line 197
    .local v12, "ecb":Ljavax/crypto/Cipher;
    iget-object v0, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 198
    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, v10

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v14

    .line 199
    .local v14, "n":[B
    move-object/from16 v0, p2

    .line 200
    .local v0, "aad":[B
    if-nez v0, :cond_0

    .line 201
    new-array v0, v11, [B

    move-object v11, v0

    goto :goto_0

    .line 200
    :cond_0
    move-object v11, v0

    .line 203
    .end local v0    # "aad":[B
    .local v11, "aad":[B
    :goto_0
    const/4 v2, 0x1

    const/4 v4, 0x0

    array-length v5, v11

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v15

    .line 204
    .local v15, "h":[B
    sget-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->localCtrCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljavax/crypto/Cipher;

    .line 205
    .local v5, "ctr":Ljavax/crypto/Cipher;
    iget-object v0, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v14}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, v13, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 206
    const/4 v2, 0x0

    array-length v3, v7

    iget v13, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v4, v9

    move-object/from16 v16, v5

    .end local v5    # "ctr":Ljavax/crypto/Cipher;
    .local v16, "ctr":Ljavax/crypto/Cipher;
    move v5, v13

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 207
    const/4 v2, 0x2

    iget v4, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    array-length v5, v7

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v0

    .line 208
    .local v0, "t":[B
    array-length v1, v7

    iget v2, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    add-int/2addr v1, v2

    .line 209
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_1

    .line 210
    add-int v3, v1, v2

    aget-byte v4, v15, v2

    aget-byte v5, v14, v2

    xor-int/2addr v4, v5

    aget-byte v5, v0, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v9, v3

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    .end local v2    # "i":I
    :cond_1
    return-object v9

    .line 190
    .end local v0    # "t":[B
    .end local v1    # "offset":I
    .end local v9    # "ciphertext":[B
    .end local v10    # "iv":[B
    .end local v11    # "aad":[B
    .end local v12    # "ecb":Ljavax/crypto/Cipher;
    .end local v14    # "n":[B
    .end local v15    # "h":[B
    .end local v16    # "ctr":Ljavax/crypto/Cipher;
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
