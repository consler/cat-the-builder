.class final Lcom/google/crypto/tink/subtle/Curve25519;
.super Ljava/lang/Object;
.source "Curve25519.java"


# static fields
.field static final BANNED_PUBLIC_KEYS:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/crypto/tink/subtle/Curve25519;->BANNED_PUBLIC_KEYS:[[B

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
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x1t
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
        0x0t
    .end array-data

    :array_2
    .array-data 1
        -0x20t
        -0x15t
        0x7at
        0x7ct
        0x3bt
        0x41t
        -0x48t
        -0x52t
        0x16t
        0x56t
        -0x1dt
        -0x6t
        -0xft
        -0x61t
        -0x3ct
        0x6at
        -0x26t
        0x9t
        -0x73t
        -0x15t
        -0x64t
        0x32t
        -0x4ft
        -0x3t
        -0x7at
        0x62t
        0x5t
        0x16t
        0x5ft
        0x49t
        -0x48t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x5ft
        -0x64t
        -0x6bt
        -0x44t
        -0x5dt
        0x50t
        -0x74t
        0x24t
        -0x4ft
        -0x30t
        -0x4ft
        0x55t
        -0x64t
        -0x7dt
        -0x11t
        0x5bt
        0x4t
        0x44t
        0x5ct
        -0x3ct
        0x58t
        0x1ct
        -0x72t
        -0x7at
        -0x28t
        0x22t
        0x4et
        -0x23t
        -0x30t
        -0x61t
        0x11t
        0x57t
    .end array-data

    :array_4
    .array-data 1
        -0x14t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x7ft
    .end array-data

    :array_5
    .array-data 1
        -0x13t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x7ft
    .end array-data

    :array_6
    .array-data 1
        -0x12t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyConditional([J[JI)V
    .locals 5
    .param p0, "a"    # [J
    .param p1, "b"    # [J
    .param p2, "icopy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "icopy"
        }
    .end annotation

    .line 250
    neg-int v0, p2

    .line 251
    .local v0, "copy":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 252
    aget-wide v2, p0, v1

    long-to-int v2, v2

    aget-wide v3, p1, v1

    long-to-int v3, v3

    xor-int/2addr v2, v3

    and-int/2addr v2, v0

    .line 253
    .local v2, "x":I
    aget-wide v3, p0, v1

    long-to-int v3, v3

    xor-int/2addr v3, v2

    int-to-long v3, v3

    aput-wide v3, p0, v1

    .line 251
    .end local v2    # "x":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method static curveMult([J[B[B)V
    .locals 24
    .param p0, "resultx"    # [J
    .param p1, "n"    # [B
    .param p2, "qBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resultx",
            "n",
            "qBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 268
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Lcom/google/crypto/tink/subtle/Curve25519;->validatePubKeyAndClearMsb([B)V

    .line 270
    invoke-static/range {p2 .. p2}, Lcom/google/crypto/tink/subtle/Field25519;->expand([B)[J

    move-result-object v10

    .line 271
    .local v10, "q":[J
    const/16 v1, 0x13

    new-array v2, v1, [J

    .line 272
    .local v2, "nqpqx":[J
    new-array v3, v1, [J

    .line 273
    .local v3, "nqpqz":[J
    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    aput-wide v5, v3, v4

    .line 274
    new-array v7, v1, [J

    .line 275
    .local v7, "nqx":[J
    aput-wide v5, v7, v4

    .line 276
    new-array v8, v1, [J

    .line 277
    .local v8, "nqz":[J
    new-array v9, v1, [J

    .line 278
    .local v9, "nqpqx2":[J
    new-array v11, v1, [J

    .line 279
    .local v11, "nqpqz2":[J
    aput-wide v5, v11, v4

    .line 280
    new-array v12, v1, [J

    .line 281
    .local v12, "nqx2":[J
    new-array v13, v1, [J

    .line 282
    .local v13, "nqz2":[J
    aput-wide v5, v13, v4

    .line 283
    new-array v1, v1, [J

    .line 285
    .local v1, "t":[J
    const/16 v14, 0xa

    invoke-static {v10, v4, v2, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    const/4 v4, 0x0

    move-object/from16 v23, v11

    move v11, v4

    move-object/from16 v4, v23

    .local v4, "nqpqz2":[J
    .local v11, "i":I
    :goto_0
    const/16 v5, 0x20

    if-ge v11, v5, :cond_1

    .line 288
    rsub-int/lit8 v5, v11, 0x20

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p1, v5

    and-int/lit16 v15, v5, 0xff

    .line 289
    .local v15, "b":I
    const/4 v5, 0x0

    move-object v6, v7

    move v7, v5

    move-object v5, v8

    move-object v8, v4

    move-object v4, v9

    move-object v9, v3

    move-object v3, v12

    move-object v12, v1

    move-object/from16 v23, v13

    move-object v13, v2

    move-object/from16 v2, v23

    .end local v1    # "t":[J
    .local v2, "nqz2":[J
    .local v3, "nqx2":[J
    .local v4, "nqpqx2":[J
    .local v5, "nqz":[J
    .local v6, "nqx":[J
    .local v7, "j":I
    .local v8, "nqpqz2":[J
    .local v9, "nqpqz":[J
    .local v12, "t":[J
    .local v13, "nqpqx":[J
    :goto_1
    const/16 v1, 0x8

    if-ge v7, v1, :cond_0

    .line 290
    rsub-int/lit8 v1, v7, 0x7

    shr-int v1, v15, v1

    and-int/lit8 v1, v1, 0x1

    .line 292
    .local v1, "bit":I
    invoke-static {v6, v13, v1}, Lcom/google/crypto/tink/subtle/Curve25519;->swapConditional([J[JI)V

    .line 293
    invoke-static {v5, v9, v1}, Lcom/google/crypto/tink/subtle/Curve25519;->swapConditional([J[JI)V

    .line 294
    move v14, v1

    .end local v1    # "bit":I
    .local v14, "bit":I
    move-object v1, v3

    move-object/from16 v16, v2

    .end local v2    # "nqz2":[J
    .local v16, "nqz2":[J
    move-object/from16 v17, v12

    move-object v12, v3

    .end local v3    # "nqx2":[J
    .local v12, "nqx2":[J
    .local v17, "t":[J
    move-object v3, v4

    move/from16 v18, v15

    move-object v15, v4

    .end local v4    # "nqpqx2":[J
    .local v15, "nqpqx2":[J
    .local v18, "b":I
    move-object v4, v8

    move-object/from16 v19, v5

    .end local v5    # "nqz":[J
    .local v19, "nqz":[J
    move-object v5, v6

    move-object/from16 v20, v6

    .end local v6    # "nqx":[J
    .local v20, "nqx":[J
    move-object/from16 v6, v19

    move/from16 v21, v7

    .end local v7    # "j":I
    .local v21, "j":I
    move-object v7, v13

    move-object v0, v8

    .end local v8    # "nqpqz2":[J
    .local v0, "nqpqz2":[J
    move-object v8, v9

    move-object/from16 v22, v9

    .end local v9    # "nqpqz":[J
    .local v22, "nqpqz":[J
    move-object v9, v10

    invoke-static/range {v1 .. v9}, Lcom/google/crypto/tink/subtle/Curve25519;->monty([J[J[J[J[J[J[J[J[J)V

    .line 295
    invoke-static {v12, v15, v14}, Lcom/google/crypto/tink/subtle/Curve25519;->swapConditional([J[JI)V

    .line 296
    move-object/from16 v1, v16

    .end local v16    # "nqz2":[J
    .local v1, "nqz2":[J
    invoke-static {v1, v0, v14}, Lcom/google/crypto/tink/subtle/Curve25519;->swapConditional([J[JI)V

    .line 298
    move-object/from16 v2, v20

    .line 299
    .end local v17    # "t":[J
    .local v2, "t":[J
    move-object v6, v12

    .line 300
    .end local v20    # "nqx":[J
    .restart local v6    # "nqx":[J
    move-object v3, v2

    .line 301
    .end local v12    # "nqx2":[J
    .restart local v3    # "nqx2":[J
    move-object/from16 v2, v19

    .line 302
    move-object v5, v1

    .line 303
    .end local v19    # "nqz":[J
    .restart local v5    # "nqz":[J
    move-object v1, v2

    .line 304
    move-object v2, v13

    .line 305
    move-object v13, v15

    .line 306
    move-object v4, v2

    .line 307
    .end local v15    # "nqpqx2":[J
    .restart local v4    # "nqpqx2":[J
    move-object/from16 v12, v22

    .line 308
    .end local v2    # "t":[J
    .local v12, "t":[J
    move-object v9, v0

    .line 309
    .end local v22    # "nqpqz":[J
    .restart local v9    # "nqpqz":[J
    move-object v8, v12

    .line 289
    .end local v0    # "nqpqz2":[J
    .end local v14    # "bit":I
    .restart local v8    # "nqpqz2":[J
    add-int/lit8 v7, v21, 0x1

    const/16 v14, 0xa

    move-object/from16 v0, p0

    move-object v2, v1

    move/from16 v15, v18

    .end local v21    # "j":I
    .restart local v7    # "j":I
    goto :goto_1

    .end local v1    # "nqz2":[J
    .end local v18    # "b":I
    .local v2, "nqz2":[J
    .local v15, "b":I
    :cond_0
    move-object v1, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object v0, v8

    move-object/from16 v22, v9

    move-object/from16 v17, v12

    move/from16 v18, v15

    move-object v12, v3

    move-object v15, v4

    .line 287
    .end local v2    # "nqz2":[J
    .end local v3    # "nqx2":[J
    .end local v4    # "nqpqx2":[J
    .end local v5    # "nqz":[J
    .end local v6    # "nqx":[J
    .end local v7    # "j":I
    .end local v8    # "nqpqz2":[J
    .end local v9    # "nqpqz":[J
    .restart local v0    # "nqpqz2":[J
    .restart local v1    # "nqz2":[J
    .local v12, "nqx2":[J
    .local v15, "nqpqx2":[J
    .restart local v17    # "t":[J
    .restart local v19    # "nqz":[J
    .restart local v20    # "nqx":[J
    .restart local v22    # "nqpqz":[J
    add-int/lit8 v11, v11, 0x1

    const/16 v14, 0xa

    move-object v4, v0

    move-object v2, v13

    move-object v9, v15

    move-object/from16 v8, v19

    move-object/from16 v7, v20

    move-object/from16 v3, v22

    move-object/from16 v0, p0

    move-object v13, v1

    move-object/from16 v1, v17

    goto/16 :goto_0

    .line 314
    .end local v0    # "nqpqz2":[J
    .end local v11    # "i":I
    .end local v15    # "nqpqx2":[J
    .end local v17    # "t":[J
    .end local v19    # "nqz":[J
    .end local v20    # "nqx":[J
    .end local v22    # "nqpqz":[J
    .local v1, "t":[J
    .local v2, "nqpqx":[J
    .local v3, "nqpqz":[J
    .local v4, "nqpqz2":[J
    .local v7, "nqx":[J
    .local v8, "nqz":[J
    .local v9, "nqpqx2":[J
    .local v13, "nqz2":[J
    :cond_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 315
    .local v0, "zmone":[J
    invoke-static {v0, v8}, Lcom/google/crypto/tink/subtle/Field25519;->inverse([J[J)V

    .line 316
    move-object/from16 v5, p0

    invoke-static {v5, v7, v0}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 329
    invoke-static {v10, v5, v2, v3}, Lcom/google/crypto/tink/subtle/Curve25519;->isCollinear([J[J[J[J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 334
    return-void

    .line 330
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Arithmetic error in curve multiplication with the public key: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static/range {p2 .. p2}, Lcom/google/crypto/tink/subtle/Hex;->encode([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static isCollinear([J[J[J[J)Z
    .locals 9
    .param p0, "x1"    # [J
    .param p1, "x2"    # [J
    .param p2, "x3"    # [J
    .param p3, "z3"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x1",
            "x2",
            "x3",
            "z3"
        }
    .end annotation

    .line 395
    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 396
    .local v1, "x1multx2":[J
    new-array v2, v0, [J

    .line 397
    .local v2, "x1addx2":[J
    const/16 v3, 0xb

    new-array v4, v3, [J

    .line 398
    .local v4, "lhs":[J
    new-array v5, v3, [J

    .line 399
    .local v5, "t":[J
    new-array v3, v3, [J

    .line 400
    .local v3, "t2":[J
    invoke-static {v1, p0, p1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 401
    invoke-static {v2, p0, p1}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 402
    new-array v0, v0, [J

    .line 403
    .local v0, "a":[J
    const/4 v6, 0x0

    const-wide/32 v7, 0x76d06

    aput-wide v7, v0, v6

    .line 405
    invoke-static {v5, v2, v0}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 407
    invoke-static {v5, v5, p3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 409
    invoke-static {v5, p2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J)V

    .line 411
    invoke-static {v5, v5, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 413
    invoke-static {v5, v5, p2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 414
    const-wide/16 v6, 0x4

    invoke-static {v4, v5, v6, v7}, Lcom/google/crypto/tink/subtle/Field25519;->scalarProduct([J[JJ)V

    .line 415
    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Field25519;->reduceCoefficients([J)V

    .line 418
    invoke-static {v5, v1, p3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 420
    invoke-static {v5, v5, p3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 422
    invoke-static {v3, v2, p2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 424
    invoke-static {v5, v5, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 426
    invoke-static {v5, v5}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 427
    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v6

    invoke-static {v5}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v6

    return v6
.end method

.method private static monty([J[J[J[J[J[J[J[J[J)V
    .locals 16
    .param p0, "x2"    # [J
    .param p1, "z2"    # [J
    .param p2, "x3"    # [J
    .param p3, "z3"    # [J
    .param p4, "x"    # [J
    .param p5, "z"    # [J
    .param p6, "xprime"    # [J
    .param p7, "zprime"    # [J
    .param p8, "qmqp"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x2",
            "z2",
            "x3",
            "z3",
            "x",
            "z",
            "xprime",
            "zprime",
            "qmqp"
        }
    .end annotation

    .line 146
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    const/16 v4, 0xa

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 147
    .local v5, "origx":[J
    const/16 v6, 0x13

    new-array v7, v6, [J

    .line 148
    .local v7, "zzz":[J
    new-array v8, v6, [J

    .line 149
    .local v8, "xx":[J
    new-array v9, v6, [J

    .line 150
    .local v9, "zz":[J
    new-array v10, v6, [J

    .line 151
    .local v10, "xxprime":[J
    new-array v11, v6, [J

    .line 152
    .local v11, "zzprime":[J
    new-array v12, v6, [J

    .line 153
    .local v12, "zzzprime":[J
    new-array v6, v6, [J

    .line 155
    .local v6, "xxxprime":[J
    invoke-static/range {p4 .. p5}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J)V

    .line 157
    invoke-static {v1, v5}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J)V

    .line 160
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v13

    .line 161
    .local v13, "origxprime":[J
    invoke-static/range {p6 .. p7}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J)V

    .line 163
    invoke-static {v3, v13}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J)V

    .line 165
    invoke-static {v10, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->product([J[J[J)V

    .line 169
    invoke-static {v11, v0, v3}, Lcom/google/crypto/tink/subtle/Field25519;->product([J[J[J)V

    .line 171
    invoke-static {v10}, Lcom/google/crypto/tink/subtle/Field25519;->reduceSizeByModularReduction([J)V

    .line 172
    invoke-static {v10}, Lcom/google/crypto/tink/subtle/Field25519;->reduceCoefficients([J)V

    .line 174
    invoke-static {v11}, Lcom/google/crypto/tink/subtle/Field25519;->reduceSizeByModularReduction([J)V

    .line 175
    invoke-static {v11}, Lcom/google/crypto/tink/subtle/Field25519;->reduceCoefficients([J)V

    .line 177
    const/4 v14, 0x0

    invoke-static {v10, v14, v13, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    invoke-static {v10, v11}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J)V

    .line 180
    invoke-static {v11, v13}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J)V

    .line 182
    invoke-static {v6, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 184
    invoke-static {v12, v11}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 186
    move-object/from16 v15, p8

    invoke-static {v11, v12, v15}, Lcom/google/crypto/tink/subtle/Field25519;->product([J[J[J)V

    .line 188
    invoke-static {v11}, Lcom/google/crypto/tink/subtle/Field25519;->reduceSizeByModularReduction([J)V

    .line 189
    invoke-static {v11}, Lcom/google/crypto/tink/subtle/Field25519;->reduceCoefficients([J)V

    .line 191
    move-object/from16 v2, p2

    invoke-static {v6, v14, v2, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    move-object/from16 v2, p3

    invoke-static {v11, v14, v2, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    invoke-static {v8, v0}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 196
    invoke-static {v9, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 198
    move-object/from16 v14, p0

    invoke-static {v14, v8, v9}, Lcom/google/crypto/tink/subtle/Field25519;->product([J[J[J)V

    .line 200
    invoke-static/range {p0 .. p0}, Lcom/google/crypto/tink/subtle/Field25519;->reduceSizeByModularReduction([J)V

    .line 201
    invoke-static/range {p0 .. p0}, Lcom/google/crypto/tink/subtle/Field25519;->reduceCoefficients([J)V

    .line 203
    invoke-static {v9, v8}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J)V

    .line 205
    array-length v4, v7

    add-int/lit8 v4, v4, -0x1

    const-wide/16 v0, 0x0

    const/16 v2, 0xa

    invoke-static {v7, v2, v4, v0, v1}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 206
    const-wide/32 v0, 0x1db41

    invoke-static {v7, v9, v0, v1}, Lcom/google/crypto/tink/subtle/Field25519;->scalarProduct([J[JJ)V

    .line 210
    invoke-static {v7}, Lcom/google/crypto/tink/subtle/Field25519;->reduceCoefficients([J)V

    .line 212
    invoke-static {v7, v8}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J)V

    .line 214
    move-object/from16 v0, p1

    invoke-static {v0, v9, v7}, Lcom/google/crypto/tink/subtle/Field25519;->product([J[J[J)V

    .line 216
    invoke-static/range {p1 .. p1}, Lcom/google/crypto/tink/subtle/Field25519;->reduceSizeByModularReduction([J)V

    .line 217
    invoke-static/range {p1 .. p1}, Lcom/google/crypto/tink/subtle/Field25519;->reduceCoefficients([J)V

    .line 219
    return-void
.end method

.method static swapConditional([J[JI)V
    .locals 5
    .param p0, "a"    # [J
    .param p1, "b"    # [J
    .param p2, "iswap"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "iswap"
        }
    .end annotation

    .line 231
    neg-int v0, p2

    .line 232
    .local v0, "swap":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 233
    aget-wide v2, p0, v1

    long-to-int v2, v2

    aget-wide v3, p1, v1

    long-to-int v3, v3

    xor-int/2addr v2, v3

    and-int/2addr v2, v0

    .line 234
    .local v2, "x":I
    aget-wide v3, p0, v1

    long-to-int v3, v3

    xor-int/2addr v3, v2

    int-to-long v3, v3

    aput-wide v3, p0, v1

    .line 235
    aget-wide v3, p1, v1

    long-to-int v3, v3

    xor-int/2addr v3, v2

    int-to-long v3, v3

    aput-wide v3, p1, v1

    .line 232
    .end local v2    # "x":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static validatePubKeyAndClearMsb([B)V
    .locals 4
    .param p0, "pubKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 343
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 347
    const/16 v0, 0x1f

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/crypto/tink/subtle/Curve25519;->BANNED_PUBLIC_KEYS:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 350
    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Banned public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/crypto/tink/subtle/Curve25519;->BANNED_PUBLIC_KEYS:[[B

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/Hex;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 344
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Public key length is not 32-byte"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
