.class abstract Lcom/google/crypto/tink/subtle/ChaCha20Base;
.super Ljava/lang/Object;
.source "ChaCha20Base.java"

# interfaces
.implements Lcom/google/crypto/tink/subtle/IndCpaCipher;


# static fields
.field public static final BLOCK_SIZE_IN_BYTES:I = 0x40

.field public static final BLOCK_SIZE_IN_INTS:I = 0x10

.field public static final KEY_SIZE_IN_BYTES:I = 0x20

.field public static final KEY_SIZE_IN_INTS:I = 0x8

.field private static final SIGMA:[I


# instance fields
.field private final initialCounter:I

.field key:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 40
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->toIntArray([B)[I

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/subtle/ChaCha20Base;->SIGMA:[I

    .line 39
    return-void

    :array_0
    .array-data 1
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x64t
        0x20t
        0x33t
        0x32t
        0x2dt
        0x62t
        0x79t
        0x74t
        0x65t
        0x20t
        0x6bt
    .end array-data
.end method

.method constructor <init>([BI)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "initialCounter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "initialCounter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 51
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->toIntArray([B)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/ChaCha20Base;->key:[I

    .line 52
    iput p2, p0, Lcom/google/crypto/tink/subtle/ChaCha20Base;->initialCounter:I

    .line 53
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "The key length in bytes must be 32."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private process([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "nonce"    # [B
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .param p3, "input"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "nonce",
            "output",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 103
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 104
    .local v0, "length":I
    div-int/lit8 v1, v0, 0x40

    add-int/lit8 v1, v1, 0x1

    .line 105
    .local v1, "numBlocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 106
    iget v3, p0, Lcom/google/crypto/tink/subtle/ChaCha20Base;->initialCounter:I

    add-int/2addr v3, v2

    invoke-virtual {p0, p1, v3}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->chacha20Block([BI)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 107
    .local v3, "keyStreamBlock":Ljava/nio/ByteBuffer;
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_0

    .line 109
    rem-int/lit8 v4, v0, 0x40

    invoke-static {p2, p3, v3, v4}, Lcom/google/crypto/tink/subtle/Bytes;->xor(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    goto :goto_1

    .line 111
    :cond_0
    const/16 v4, 0x40

    invoke-static {p2, p3, v3, v4}, Lcom/google/crypto/tink/subtle/Bytes;->xor(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 105
    .end local v3    # "keyStreamBlock":Ljava/nio/ByteBuffer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method static quarterRound([IIIII)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 148
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 149
    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p4

    .line 150
    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    .line 151
    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p2

    .line 152
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 153
    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p4

    .line 154
    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    .line 155
    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p2

    .line 156
    return-void
.end method

.method private static rotateLeft(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 166
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method static setSigmaAndKey([I[I)V
    .locals 3
    .param p0, "state"    # [I
    .param p1, "key"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "state",
            "key"
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/google/crypto/tink/subtle/ChaCha20Base;->SIGMA:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    sget-object v0, Lcom/google/crypto/tink/subtle/ChaCha20Base;->SIGMA:[I

    array-length v0, v0

    const/16 v1, 0x8

    invoke-static {p1, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    return-void
.end method

.method static shuffleState([I)V
    .locals 16
    .param p0, "state"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "state"
        }
    .end annotation

    .line 135
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 136
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/16 v6, 0xc

    invoke-static {v0, v3, v4, v5, v6}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->quarterRound([IIIII)V

    .line 137
    const/4 v7, 0x1

    const/4 v8, 0x5

    const/16 v9, 0x9

    const/16 v10, 0xd

    invoke-static {v0, v7, v8, v9, v10}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->quarterRound([IIIII)V

    .line 138
    const/4 v11, 0x2

    const/4 v12, 0x6

    const/16 v13, 0xe

    invoke-static {v0, v11, v12, v2, v13}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->quarterRound([IIIII)V

    .line 139
    const/4 v14, 0x3

    const/4 v15, 0x7

    const/16 v4, 0xb

    const/16 v9, 0xf

    invoke-static {v0, v14, v15, v4, v9}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->quarterRound([IIIII)V

    .line 140
    invoke-static {v0, v3, v8, v2, v9}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->quarterRound([IIIII)V

    .line 141
    invoke-static {v0, v7, v12, v4, v6}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->quarterRound([IIIII)V

    .line 142
    invoke-static {v0, v11, v15, v5, v10}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->quarterRound([IIIII)V

    .line 143
    const/16 v2, 0x9

    const/4 v3, 0x4

    invoke-static {v0, v14, v3, v2, v13}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->quarterRound([IIIII)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method static toIntArray([B)[I
    .locals 2
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 159
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 160
    .local v0, "intBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [I

    .line 161
    .local v1, "ret":[I
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 162
    return-object v1
.end method


# virtual methods
.method chacha20Block([BI)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "nonce"    # [B
    .param p2, "counter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "nonce",
            "counter"
        }
    .end annotation

    .line 118
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->toIntArray([B)[I

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->createInitialState([II)[I

    move-result-object v0

    .line 119
    .local v0, "state":[I
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 120
    .local v1, "workingState":[I
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->shuffleState([I)V

    .line 121
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 122
    aget v3, v0, v2

    aget v4, v1, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "i":I
    :cond_0
    const/16 v2, 0x40

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 125
    .local v2, "out":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v3, v0, v4, v5}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 126
    return-object v2
.end method

.method abstract createInitialState([II)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "nonce",
            "counter"
        }
    .end annotation
.end method

.method decrypt(Ljava/nio/ByteBuffer;)[B
    .locals 3
    .param p1, "ciphertext"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->nonceSizeInBytes()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->nonceSizeInBytes()I

    move-result v0

    new-array v0, v0, [B

    .line 95
    .local v0, "nonce":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 97
    .local v1, "plaintext":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0, v1, p1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->process([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 98
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2

    .line 92
    .end local v0    # "nonce":[B
    .end local v1    # "plaintext":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "ciphertext too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decrypt([B)[B
    .locals 1
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

    .line 87
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->decrypt(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method encrypt(Ljava/nio/ByteBuffer;[B)V
    .locals 2
    .param p1, "output"    # Ljava/nio/ByteBuffer;
    .param p2, "plaintext"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "output",
            "plaintext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->nonceSizeInBytes()I

    move-result v1

    sub-int/2addr v0, v1

    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->nonceSizeInBytes()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v0

    .line 81
    .local v0, "nonce":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 82
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->process([BLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 83
    return-void

    .line 77
    .end local v0    # "nonce":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given ByteBuffer output is too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt([B)[B
    .locals 3
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

    .line 67
    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->nonceSizeInBytes()I

    move-result v1

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->nonceSizeInBytes()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    .local v0, "ciphertext":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/subtle/ChaCha20Base;->encrypt(Ljava/nio/ByteBuffer;[B)V

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 68
    .end local v0    # "ciphertext":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract nonceSizeInBytes()I
.end method
