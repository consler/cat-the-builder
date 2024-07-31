.class public Lcom/badlogic/gdx/utils/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Base64Coder$CharMap;
    }
.end annotation


# static fields
.field public static final regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

.field private static final systemLineSeparator:Ljava/lang/String; = "\n"

.field public static final urlsafeMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    const/16 v1, 0x2b

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;-><init>(CC)V

    sput-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    new-instance v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;-><init>(CC)V

    sput-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->urlsafeMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;Lcom/badlogic/gdx/utils/Base64Coder$CharMap;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "inverseCharMap"    # Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CLcom/badlogic/gdx/utils/Base64Coder$CharMap;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .locals 3
    .param p0, "in"    # [C

    .line 247
    array-length v0, p0

    sget-object v1, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CIILcom/badlogic/gdx/utils/Base64Coder$CharMap;)[B
    .locals 1
    .param p0, "in"    # [C
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I
    .param p3, "inverseCharMap"    # Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    .line 251
    iget-object v0, p3, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CII[B)[B
    .locals 19
    .param p0, "in"    # [C
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I
    .param p3, "inverseCharMap"    # [B

    .line 262
    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_8

    move/from16 v0, p2

    .line 265
    .end local p2    # "iLen":I
    .local v0, "iLen":I
    :goto_0
    if-lez v0, :cond_0

    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    aget-char v1, p0, v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    .line 266
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 268
    :cond_0
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x4

    .line 269
    .local v1, "oLen":I
    new-array v2, v1, [B

    .line 270
    .local v2, "out":[B
    move/from16 v3, p1

    .line 271
    .local v3, "ip":I
    add-int v4, p1, v0

    .line 272
    .local v4, "iEnd":I
    const/4 v5, 0x0

    .line 273
    .local v5, "op":I
    :goto_1
    if-ge v3, v4, :cond_7

    .line 274
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ip":I
    .local v6, "ip":I
    aget-char v3, p0, v3

    .line 275
    .local v3, "i0":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ip":I
    .local v7, "ip":I
    aget-char v6, p0, v6

    .line 276
    .local v6, "i1":I
    const/16 v8, 0x41

    if-ge v7, v4, :cond_1

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "ip":I
    .local v9, "ip":I
    aget-char v7, p0, v7

    goto :goto_2

    .end local v9    # "ip":I
    .restart local v7    # "ip":I
    :cond_1
    move v9, v7

    move v7, v8

    .line 277
    .local v7, "i2":I
    .restart local v9    # "ip":I
    :goto_2
    if-ge v9, v4, :cond_2

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ip":I
    .local v8, "ip":I
    aget-char v9, p0, v9

    goto :goto_3

    .end local v8    # "ip":I
    .restart local v9    # "ip":I
    :cond_2
    move/from16 v18, v9

    move v9, v8

    move/from16 v8, v18

    .line 278
    .restart local v8    # "ip":I
    .local v9, "i3":I
    :goto_3
    const-string v10, "Illegal character in Base64 encoded data."

    const/16 v11, 0x7f

    if-gt v3, v11, :cond_6

    if-gt v6, v11, :cond_6

    if-gt v7, v11, :cond_6

    if-gt v9, v11, :cond_6

    .line 281
    aget-byte v11, p3, v3

    .line 282
    .local v11, "b0":I
    aget-byte v12, p3, v6

    .line 283
    .local v12, "b1":I
    aget-byte v13, p3, v7

    .line 284
    .local v13, "b2":I
    aget-byte v14, p3, v9

    .line 285
    .local v14, "b3":I
    if-ltz v11, :cond_5

    if-ltz v12, :cond_5

    if-ltz v13, :cond_5

    if-ltz v14, :cond_5

    .line 288
    shl-int/lit8 v10, v11, 0x2

    ushr-int/lit8 v15, v12, 0x4

    or-int/2addr v10, v15

    .line 289
    .local v10, "o0":I
    and-int/lit8 v15, v12, 0xf

    shl-int/lit8 v15, v15, 0x4

    ushr-int/lit8 v16, v13, 0x2

    or-int v15, v15, v16

    .line 290
    .local v15, "o1":I
    and-int/lit8 v16, v13, 0x3

    shl-int/lit8 v16, v16, 0x6

    move/from16 p2, v0

    .end local v0    # "iLen":I
    .restart local p2    # "iLen":I
    or-int v0, v16, v14

    .line 291
    .local v0, "o2":I
    move/from16 v16, v3

    .end local v3    # "i0":I
    .local v16, "i0":I
    add-int/lit8 v3, v5, 0x1

    move/from16 v17, v4

    .end local v4    # "iEnd":I
    .end local v5    # "op":I
    .local v3, "op":I
    .local v17, "iEnd":I
    int-to-byte v4, v10

    aput-byte v4, v2, v5

    .line 292
    if-ge v3, v1, :cond_3

    .line 293
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .local v4, "op":I
    int-to-byte v5, v15

    aput-byte v5, v2, v3

    move v3, v4

    .line 295
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_3
    if-ge v3, v1, :cond_4

    .line 296
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    int-to-byte v5, v0

    aput-byte v5, v2, v3

    move v5, v4

    goto :goto_4

    .line 295
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_4
    move v5, v3

    .line 298
    .end local v0    # "o2":I
    .end local v3    # "op":I
    .end local v6    # "i1":I
    .end local v7    # "i2":I
    .end local v9    # "i3":I
    .end local v10    # "o0":I
    .end local v11    # "b0":I
    .end local v12    # "b1":I
    .end local v13    # "b2":I
    .end local v14    # "b3":I
    .end local v15    # "o1":I
    .end local v16    # "i0":I
    .restart local v5    # "op":I
    :goto_4
    move/from16 v0, p2

    move v3, v8

    move/from16 v4, v17

    goto :goto_1

    .line 285
    .end local v17    # "iEnd":I
    .end local p2    # "iLen":I
    .local v0, "iLen":I
    .local v3, "i0":I
    .local v4, "iEnd":I
    .restart local v6    # "i1":I
    .restart local v7    # "i2":I
    .restart local v9    # "i3":I
    .restart local v11    # "b0":I
    .restart local v12    # "b1":I
    .restart local v13    # "b2":I
    .restart local v14    # "b3":I
    :cond_5
    move/from16 p2, v0

    move/from16 v16, v3

    move/from16 v17, v4

    .line 286
    .end local v0    # "iLen":I
    .end local v3    # "i0":I
    .end local v4    # "iEnd":I
    .restart local v16    # "i0":I
    .restart local v17    # "iEnd":I
    .restart local p2    # "iLen":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    .end local v11    # "b0":I
    .end local v12    # "b1":I
    .end local v13    # "b2":I
    .end local v14    # "b3":I
    .end local v16    # "i0":I
    .end local v17    # "iEnd":I
    .end local p2    # "iLen":I
    .restart local v0    # "iLen":I
    .restart local v3    # "i0":I
    .restart local v4    # "iEnd":I
    :cond_6
    move/from16 p2, v0

    move/from16 v16, v3

    move/from16 v17, v4

    .line 279
    .end local v0    # "iLen":I
    .end local v3    # "i0":I
    .end local v4    # "iEnd":I
    .restart local v16    # "i0":I
    .restart local v17    # "iEnd":I
    .restart local p2    # "iLen":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    .end local v6    # "i1":I
    .end local v7    # "i2":I
    .end local v8    # "ip":I
    .end local v9    # "i3":I
    .end local v16    # "i0":I
    .end local v17    # "iEnd":I
    .end local p2    # "iLen":I
    .restart local v0    # "iLen":I
    .local v3, "ip":I
    .restart local v4    # "iEnd":I
    :cond_7
    return-object v2

    .line 263
    .end local v0    # "iLen":I
    .end local v1    # "oLen":I
    .end local v2    # "out":[B
    .end local v3    # "ip":I
    .end local v4    # "iEnd":I
    .end local v5    # "op":I
    .restart local p2    # "iLen":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decode([CLcom/badlogic/gdx/utils/Base64Coder$CharMap;)[B
    .locals 2
    .param p0, "in"    # [C
    .param p1, "inverseCharMap"    # Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    .line 239
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CIILcom/badlogic/gdx/utils/Base64Coder$CharMap;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C[B)[B
    .locals 2
    .param p0, "in"    # [C
    .param p1, "inverseCharMap"    # [B

    .line 235
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeLines(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 192
    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeLines(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeLines(Ljava/lang/String;Lcom/badlogic/gdx/utils/Base64Coder$CharMap;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "inverseCharMap"    # Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    .line 196
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeLines(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeLines(Ljava/lang/String;[B)[B
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "inverseCharMap"    # [B

    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 207
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 208
    .local v1, "p":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 209
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 210
    .local v3, "c":C
    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    .line 211
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "p":I
    .local v4, "p":I
    aput-char v3, v0, v1

    move v1, v4

    .line 208
    .end local v3    # "c":C
    .end local v4    # "p":I
    .restart local v1    # "p":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "ip":I
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII[B)[B

    move-result-object v2

    return-object v2
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 184
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "useUrlSafeEncoding"    # Z

    .line 188
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object v2, Lcom/badlogic/gdx/utils/Base64Coder;->urlsafeMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    :goto_0
    iget-object v2, v2, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([C[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .locals 1
    .param p0, "in"    # [B

    .line 125
    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B[C)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[C
    .locals 2
    .param p0, "in"    # [B
    .param p1, "iLen"    # I

    .line 141
    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII[C)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIILcom/badlogic/gdx/utils/Base64Coder$CharMap;)[C
    .locals 1
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I
    .param p3, "charMap"    # Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    .line 145
    iget-object v0, p3, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII[C)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII[C)[C
    .locals 16
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I
    .param p3, "charMap"    # [C

    .line 155
    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 156
    .local v0, "oDataLen":I
    add-int/lit8 v1, p2, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 157
    .local v1, "oLen":I
    new-array v2, v1, [C

    .line 158
    .local v2, "out":[C
    move/from16 v3, p1

    .line 159
    .local v3, "ip":I
    add-int v4, p1, p2

    .line 160
    .local v4, "iEnd":I
    const/4 v5, 0x0

    .line 161
    .local v5, "op":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 162
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ip":I
    .local v6, "ip":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 163
    .local v3, "i0":I
    const/4 v7, 0x0

    if-ge v6, v4, :cond_0

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "ip":I
    .local v8, "ip":I
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    goto :goto_1

    .end local v8    # "ip":I
    .restart local v6    # "ip":I
    :cond_0
    move v8, v6

    move v6, v7

    .line 164
    .local v6, "i1":I
    .restart local v8    # "ip":I
    :goto_1
    if-ge v8, v4, :cond_1

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ip":I
    .local v7, "ip":I
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    goto :goto_2

    .end local v7    # "ip":I
    .restart local v8    # "ip":I
    :cond_1
    move v15, v8

    move v8, v7

    move v7, v15

    .line 165
    .restart local v7    # "ip":I
    .local v8, "i2":I
    :goto_2
    ushr-int/lit8 v9, v3, 0x2

    .line 166
    .local v9, "o0":I
    and-int/lit8 v10, v3, 0x3

    shl-int/lit8 v10, v10, 0x4

    ushr-int/lit8 v11, v6, 0x4

    or-int/2addr v10, v11

    .line 167
    .local v10, "o1":I
    and-int/lit8 v11, v6, 0xf

    shl-int/lit8 v11, v11, 0x2

    ushr-int/lit8 v12, v8, 0x6

    or-int/2addr v11, v12

    .line 168
    .local v11, "o2":I
    and-int/lit8 v12, v8, 0x3f

    .line 169
    .local v12, "o3":I
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "op":I
    .local v13, "op":I
    aget-char v14, p3, v9

    aput-char v14, v2, v5

    .line 170
    add-int/lit8 v5, v13, 0x1

    .end local v13    # "op":I
    .restart local v5    # "op":I
    aget-char v14, p3, v10

    aput-char v14, v2, v13

    .line 171
    const/16 v13, 0x3d

    if-ge v5, v0, :cond_2

    aget-char v14, p3, v11

    goto :goto_3

    :cond_2
    move v14, v13

    :goto_3
    aput-char v14, v2, v5

    .line 172
    add-int/lit8 v5, v5, 0x1

    .line 173
    if-ge v5, v0, :cond_3

    aget-char v13, p3, v12

    :cond_3
    aput-char v13, v2, v5

    .line 174
    nop

    .end local v3    # "i0":I
    .end local v6    # "i1":I
    .end local v8    # "i2":I
    .end local v9    # "o0":I
    .end local v10    # "o1":I
    .end local v11    # "o2":I
    .end local v12    # "o3":I
    add-int/lit8 v5, v5, 0x1

    .line 175
    move v3, v7

    goto :goto_0

    .line 176
    .end local v7    # "ip":I
    .local v3, "ip":I
    :cond_4
    return-object v2
.end method

.method public static encode([BLcom/badlogic/gdx/utils/Base64Coder$CharMap;)[C
    .locals 2
    .param p0, "in"    # [B
    .param p1, "charMap"    # Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    .line 129
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BIILcom/badlogic/gdx/utils/Base64Coder$CharMap;)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([B[C)[C
    .locals 2
    .param p0, "in"    # [B
    .param p1, "charMap"    # [C

    .line 133
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII[C)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeLines([B)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # [B

    .line 88
    array-length v2, p0

    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    iget-object v5, v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    const/4 v1, 0x0

    const/16 v3, 0x4c

    const-string v4, "\n"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeLines([BIIILjava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeLines([BIIILjava/lang/String;Lcom/badlogic/gdx/utils/Base64Coder$CharMap;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I
    .param p3, "lineLen"    # I
    .param p4, "lineSeparator"    # Ljava/lang/String;
    .param p5, "charMap"    # Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    .line 92
    iget-object v5, p5, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeLines([BIIILjava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeLines([BIIILjava/lang/String;[C)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # [B
    .param p1, "iOff"    # I
    .param p2, "iLen"    # I
    .param p3, "lineLen"    # I
    .param p4, "lineSeparator"    # Ljava/lang/String;
    .param p5, "charMap"    # [C

    .line 104
    mul-int/lit8 v0, p3, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 105
    .local v0, "blockLen":I
    if-lez v0, :cond_1

    .line 108
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    .line 109
    .local v1, "lines":I
    add-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 110
    .local v2, "bufLen":I
    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 111
    .local v3, "buf":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v4, 0x0

    .line 112
    .local v4, "ip":I
    :goto_0
    if-ge v4, p2, :cond_0

    .line 113
    sub-int v5, p2, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 114
    .local v5, "l":I
    add-int v6, p1, v4

    invoke-static {p0, v6, v5, p5}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII[C)[C

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append([C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 115
    invoke-virtual {v3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 116
    add-int/2addr v4, v5

    .line 117
    .end local v5    # "l":I
    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 106
    .end local v1    # "lines":I
    .end local v2    # "bufLen":I
    .end local v3    # "buf":Lcom/badlogic/gdx/utils/StringBuilder;
    .end local v4    # "ip":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "useUrlsafeEncoding"    # Z

    .line 80
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object v2, Lcom/badlogic/gdx/utils/Base64Coder;->urlsafeMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    :goto_0
    iget-object v2, v2, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B[C)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
