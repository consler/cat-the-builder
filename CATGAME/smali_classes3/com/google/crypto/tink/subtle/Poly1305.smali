.class Lcom/google/crypto/tink/subtle/Poly1305;
.super Ljava/lang/Object;
.source "Poly1305.java"


# static fields
.field public static final MAC_KEY_SIZE_IN_BYTES:I = 0x20

.field public static final MAC_TAG_SIZE_IN_BYTES:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeMac([B[B)[B
    .locals 59
    .param p0, "key"    # [B
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "data"
        }
    .end annotation

    .line 66
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 69
    const-wide/16 v4, 0x0

    .line 70
    .local v4, "h0":J
    const-wide/16 v6, 0x0

    .line 71
    .local v6, "h1":J
    const-wide/16 v8, 0x0

    .line 72
    .local v8, "h2":J
    const-wide/16 v10, 0x0

    .line 73
    .local v10, "h3":J
    const-wide/16 v12, 0x0

    .line 82
    .local v12, "h4":J
    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lcom/google/crypto/tink/subtle/Poly1305;->load26([BII)J

    move-result-wide v14

    const-wide/32 v16, 0x3ffffff

    and-long v14, v14, v16

    .line 83
    .local v14, "r0":J
    const/4 v3, 0x3

    const/4 v2, 0x2

    invoke-static {v0, v3, v2}, Lcom/google/crypto/tink/subtle/Poly1305;->load26([BII)J

    move-result-wide v19

    const-wide/32 v21, 0x3ffff03

    and-long v19, v19, v21

    .line 84
    .local v19, "r1":J
    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lcom/google/crypto/tink/subtle/Poly1305;->load26([BII)J

    move-result-wide v23

    const-wide/32 v25, 0x3ffc0ff

    and-long v23, v23, v25

    .line 85
    .local v23, "r2":J
    const/16 v3, 0x9

    invoke-static {v0, v3, v2}, Lcom/google/crypto/tink/subtle/Poly1305;->load26([BII)J

    move-result-wide v26

    const-wide/32 v28, 0x3f03fff

    and-long v26, v26, v28

    .line 86
    .local v26, "r3":J
    const/16 v3, 0xc

    const/16 v2, 0x8

    invoke-static {v0, v3, v2}, Lcom/google/crypto/tink/subtle/Poly1305;->load26([BII)J

    move-result-wide v30

    const-wide/32 v32, 0xfffff

    and-long v30, v30, v32

    .line 88
    .local v30, "r4":J
    const-wide/16 v32, 0x5

    mul-long v34, v19, v32

    .line 89
    .local v34, "s1":J
    mul-long v36, v23, v32

    .line 90
    .local v36, "s2":J
    mul-long v38, v26, v32

    .line 91
    .local v38, "s3":J
    mul-long v40, v30, v32

    .line 93
    .local v40, "s4":J
    const/16 v2, 0x11

    new-array v2, v2, [B

    .line 94
    .local v2, "buf":[B
    const/16 v42, 0x0

    move/from16 v3, v42

    .local v3, "i":I
    :goto_0
    array-length v0, v1

    move-wide/from16 v43, v14

    .end local v14    # "r0":J
    .local v43, "r0":J
    const/16 v15, 0x10

    const/16 v45, 0x1a

    if-ge v3, v0, :cond_0

    .line 95
    invoke-static {v2, v1, v3}, Lcom/google/crypto/tink/subtle/Poly1305;->copyBlockSize([B[BI)V

    .line 96
    const/4 v0, 0x0

    invoke-static {v2, v0, v0}, Lcom/google/crypto/tink/subtle/Poly1305;->load26([BII)J

    move-result-wide v46

    add-long v4, v4, v46

    .line 97
    const/4 v0, 0x2

    const/4 v14, 0x3

    invoke-static {v2, v14, v0}, Lcom/google/crypto/tink/subtle/Poly1305;->load26([BII)J

    move-result-wide v46

    add-long v6, v6, v46

    .line 98
    const/4 v0, 0x4

    const/4 v14, 0x6

    invoke-static {v2, v14, v0}, Lcom/google/crypto/tink/subtle/Poly1305;->load26([BII)J

    move-result-wide v47

    add-long v8, v8, v47

    .line 99
    const/16 v0, 0x9

    invoke-static {v2, v0, v14}, Lcom/google/crypto/tink/subtle/Poly1305;->load26([BII)J

    move-result-wide v47

    add-long v10, v10, v47

    .line 100
    const/16 v0, 0xc

    const/16 v14, 0x8

    invoke-static {v2, v0, v14}, Lcom/google/crypto/tink/subtle/Poly1305;->load26([BII)J

    move-result-wide v47

    aget-byte v0, v2, v15

    const/16 v14, 0x18

    shl-int/2addr v0, v14

    int-to-long v14, v0

    or-long v14, v47, v14

    add-long/2addr v12, v14

    .line 103
    mul-long v14, v4, v43

    mul-long v47, v6, v40

    add-long v14, v14, v47

    mul-long v47, v8, v38

    add-long v14, v14, v47

    mul-long v47, v10, v36

    add-long v14, v14, v47

    mul-long v47, v12, v34

    add-long v14, v14, v47

    .line 104
    .local v14, "d0":J
    mul-long v47, v4, v19

    mul-long v49, v6, v43

    add-long v47, v47, v49

    mul-long v49, v8, v40

    add-long v47, v47, v49

    mul-long v49, v10, v38

    add-long v47, v47, v49

    mul-long v49, v12, v36

    add-long v47, v47, v49

    .line 105
    .local v47, "d1":J
    mul-long v49, v4, v23

    mul-long v51, v6, v19

    add-long v49, v49, v51

    mul-long v51, v8, v43

    add-long v49, v49, v51

    mul-long v51, v10, v40

    add-long v49, v49, v51

    mul-long v51, v12, v38

    add-long v49, v49, v51

    .line 106
    .local v49, "d2":J
    mul-long v51, v4, v26

    mul-long v53, v6, v23

    add-long v51, v51, v53

    mul-long v53, v8, v19

    add-long v51, v51, v53

    mul-long v53, v10, v43

    add-long v51, v51, v53

    mul-long v53, v12, v40

    add-long v51, v51, v53

    .line 107
    .local v51, "d3":J
    mul-long v53, v4, v30

    mul-long v55, v6, v26

    add-long v53, v53, v55

    mul-long v55, v8, v23

    add-long v53, v53, v55

    mul-long v55, v10, v19

    add-long v53, v53, v55

    mul-long v55, v12, v43

    add-long v53, v53, v55

    .line 110
    .local v53, "d4":J
    shr-long v55, v14, v45

    .line 111
    .local v55, "c":J
    and-long v4, v14, v16

    .line 112
    add-long v47, v47, v55

    .line 113
    shr-long v55, v47, v45

    .line 114
    and-long v6, v47, v16

    .line 115
    add-long v49, v49, v55

    .line 116
    shr-long v55, v49, v45

    .line 117
    and-long v8, v49, v16

    .line 118
    add-long v51, v51, v55

    .line 119
    shr-long v55, v51, v45

    .line 120
    and-long v10, v51, v16

    .line 121
    add-long v53, v53, v55

    .line 122
    shr-long v55, v53, v45

    .line 123
    and-long v12, v53, v16

    .line 124
    mul-long v57, v55, v32

    add-long v4, v4, v57

    .line 125
    shr-long v55, v4, v45

    .line 126
    and-long v4, v4, v16

    .line 127
    add-long v6, v6, v55

    .line 94
    add-int/lit8 v3, v3, 0x10

    move-object/from16 v0, p0

    move-wide/from16 v14, v43

    goto/16 :goto_0

    .line 130
    .end local v3    # "i":I
    .end local v14    # "d0":J
    .end local v47    # "d1":J
    .end local v49    # "d2":J
    .end local v51    # "d3":J
    .end local v53    # "d4":J
    .end local v55    # "c":J
    :cond_0
    shr-long v46, v6, v45

    .line 131
    .local v46, "c":J
    and-long v6, v6, v16

    .line 132
    add-long v8, v8, v46

    .line 133
    shr-long v46, v8, v45

    .line 134
    and-long v8, v8, v16

    .line 135
    add-long v10, v10, v46

    .line 136
    shr-long v46, v10, v45

    .line 137
    and-long v10, v10, v16

    .line 138
    add-long v12, v12, v46

    .line 139
    shr-long v46, v12, v45

    .line 140
    and-long v12, v12, v16

    .line 141
    mul-long v48, v46, v32

    add-long v4, v4, v48

    .line 142
    shr-long v46, v4, v45

    .line 143
    and-long v3, v4, v16

    .line 144
    .end local v4    # "h0":J
    .local v3, "h0":J
    add-long v6, v6, v46

    .line 147
    add-long v32, v3, v32

    .line 148
    .local v32, "g0":J
    shr-long v46, v32, v45

    .line 149
    and-long v32, v32, v16

    .line 150
    add-long v48, v6, v46

    .line 151
    .local v48, "g1":J
    shr-long v46, v48, v45

    .line 152
    and-long v48, v48, v16

    .line 153
    add-long v50, v8, v46

    .line 154
    .local v50, "g2":J
    shr-long v46, v50, v45

    .line 155
    and-long v50, v50, v16

    .line 156
    add-long v52, v10, v46

    .line 157
    .local v52, "g3":J
    shr-long v46, v52, v45

    .line 158
    and-long v16, v52, v16

    .line 159
    .end local v52    # "g3":J
    .local v16, "g3":J
    add-long v52, v12, v46

    const-wide/32 v54, 0x4000000

    sub-long v52, v52, v54

    .line 162
    .local v52, "g4":J
    const/16 v0, 0x3f

    shr-long v0, v52, v0

    .line 163
    .local v0, "mask":J
    and-long/2addr v3, v0

    .line 164
    and-long v5, v6, v0

    .line 165
    .end local v6    # "h1":J
    .local v5, "h1":J
    and-long v7, v8, v0

    .line 166
    .end local v8    # "h2":J
    .local v7, "h2":J
    and-long v9, v10, v0

    .line 167
    .end local v10    # "h3":J
    .local v9, "h3":J
    and-long v11, v12, v0

    .line 168
    .end local v12    # "h4":J
    .local v11, "h4":J
    not-long v0, v0

    .line 169
    and-long v13, v32, v0

    or-long/2addr v3, v13

    .line 170
    and-long v13, v48, v0

    or-long/2addr v5, v13

    .line 171
    and-long v13, v50, v0

    or-long/2addr v7, v13

    .line 172
    and-long v13, v16, v0

    or-long/2addr v9, v13

    .line 173
    and-long v13, v52, v0

    or-long/2addr v11, v13

    .line 176
    shl-long v13, v5, v45

    or-long/2addr v13, v3

    const-wide v54, 0xffffffffL

    and-long v3, v13, v54

    .line 177
    const/4 v13, 0x6

    shr-long v13, v5, v13

    const/16 v15, 0x14

    shl-long v28, v7, v15

    or-long v13, v13, v28

    and-long v5, v13, v54

    .line 178
    const/16 v13, 0xc

    shr-long v28, v7, v13

    const/16 v13, 0xe

    shl-long v13, v9, v13

    or-long v13, v28, v13

    and-long v7, v13, v54

    .line 179
    const/16 v13, 0x12

    shr-long v13, v9, v13

    const/16 v28, 0x8

    shl-long v56, v11, v28

    or-long v13, v13, v56

    and-long v9, v13, v54

    .line 182
    const/16 v14, 0x10

    move-object/from16 v13, p0

    invoke-static {v13, v14}, Lcom/google/crypto/tink/subtle/Poly1305;->load32([BI)J

    move-result-wide v28

    add-long v28, v3, v28

    .line 183
    .end local v46    # "c":J
    .local v28, "c":J
    and-long v3, v28, v54

    .line 184
    invoke-static {v13, v15}, Lcom/google/crypto/tink/subtle/Poly1305;->load32([BI)J

    move-result-wide v14

    add-long/2addr v14, v5

    const/16 v18, 0x20

    shr-long v45, v28, v18

    add-long v14, v14, v45

    .line 185
    .end local v28    # "c":J
    .local v14, "c":J
    and-long v5, v14, v54

    .line 186
    move-wide/from16 v28, v0

    const/16 v0, 0x18

    .end local v0    # "mask":J
    .local v28, "mask":J
    invoke-static {v13, v0}, Lcom/google/crypto/tink/subtle/Poly1305;->load32([BI)J

    move-result-wide v0

    add-long/2addr v0, v7

    shr-long v45, v14, v18

    add-long v0, v0, v45

    .line 187
    .end local v14    # "c":J
    .local v0, "c":J
    and-long v7, v0, v54

    .line 188
    const/16 v14, 0x1c

    invoke-static {v13, v14}, Lcom/google/crypto/tink/subtle/Poly1305;->load32([BI)J

    move-result-wide v14

    add-long/2addr v14, v9

    shr-long v45, v0, v18

    add-long v14, v14, v45

    .line 189
    .end local v0    # "c":J
    .restart local v14    # "c":J
    and-long v0, v14, v54

    .line 191
    .end local v9    # "h3":J
    .local v0, "h3":J
    const/16 v9, 0x10

    new-array v9, v9, [B

    .line 192
    .local v9, "mac":[B
    const/4 v10, 0x0

    invoke-static {v9, v3, v4, v10}, Lcom/google/crypto/tink/subtle/Poly1305;->toByteArray([BJI)V

    .line 193
    const/4 v10, 0x4

    invoke-static {v9, v5, v6, v10}, Lcom/google/crypto/tink/subtle/Poly1305;->toByteArray([BJI)V

    .line 194
    const/16 v10, 0x8

    invoke-static {v9, v7, v8, v10}, Lcom/google/crypto/tink/subtle/Poly1305;->toByteArray([BJI)V

    .line 195
    const/16 v10, 0xc

    invoke-static {v9, v0, v1, v10}, Lcom/google/crypto/tink/subtle/Poly1305;->toByteArray([BJI)V

    .line 197
    return-object v9

    .line 67
    .end local v0    # "h3":J
    .end local v2    # "buf":[B
    .end local v3    # "h0":J
    .end local v5    # "h1":J
    .end local v7    # "h2":J
    .end local v9    # "mac":[B
    .end local v11    # "h4":J
    .end local v14    # "c":J
    .end local v16    # "g3":J
    .end local v19    # "r1":J
    .end local v23    # "r2":J
    .end local v26    # "r3":J
    .end local v28    # "mask":J
    .end local v30    # "r4":J
    .end local v32    # "g0":J
    .end local v34    # "s1":J
    .end local v36    # "s2":J
    .end local v38    # "s3":J
    .end local v40    # "s4":J
    .end local v43    # "r0":J
    .end local v48    # "g1":J
    .end local v50    # "g2":J
    .end local v52    # "g4":J
    :cond_1
    move-object v13, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key length in bytes must be 32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copyBlockSize([B[BI)V
    .locals 4
    .param p0, "output"    # [B
    .param p1, "in"    # [B
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "in",
            "idx"
        }
    .end annotation

    .line 57
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58
    .local v0, "copyCount":I
    const/4 v2, 0x0

    invoke-static {p1, p2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    const/4 v3, 0x1

    aput-byte v3, p0, v0

    .line 60
    if-eq v0, v1, :cond_0

    .line 61
    add-int/lit8 v1, v0, 0x1

    array-length v3, p0

    invoke-static {p0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 63
    :cond_0
    return-void
.end method

.method private static load26([BII)J
    .locals 4
    .param p0, "in"    # [B
    .param p1, "idx"    # I
    .param p2, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "idx",
            "shift"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Poly1305;->load32([BI)J

    move-result-wide v0

    shr-long/2addr v0, p2

    const-wide/32 v2, 0x3ffffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static load32([BI)J
    .locals 4
    .param p0, "in"    # [B
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "idx"
        }
    .end annotation

    .line 39
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static toByteArray([BJI)V
    .locals 4
    .param p0, "output"    # [B
    .param p1, "num"    # J
    .param p3, "idx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "num",
            "idx"
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 52
    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 51
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    goto :goto_0

    .line 54
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static verifyMac([B[B[B)V
    .locals 2
    .param p0, "key"    # [B
    .param p1, "data"    # [B
    .param p2, "mac"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "key",
            "data",
            "mac"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 201
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Poly1305;->computeMac([B[B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid MAC"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
