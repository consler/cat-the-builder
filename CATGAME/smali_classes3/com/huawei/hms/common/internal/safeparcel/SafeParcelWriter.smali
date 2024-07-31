.class public Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;
.super Ljava/lang/Object;
.source "SafeParcelWriter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static a(Landroid/os/Parcel;I)I
    .locals 1

    .line 59
    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method private static a(Landroid/os/Parcel;II)V
    .locals 1

    .line 44
    const v0, 0xffff

    if-lt p2, v0, :cond_0

    .line 45
    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    return-void

    .line 49
    :cond_0
    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    return-void
.end method

.method private static a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TP;I)V"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 76
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 78
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    sub-int p2, p1, v1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void
.end method

.method private static b(Landroid/os/Parcel;I)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 66
    sub-int v1, v0, p1

    .line 67
    add-int/lit8 p1, p1, -0x4

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void
.end method

.method public static beginObjectHeader(Landroid/os/Parcel;)I
    .locals 1

    .line 84
    const/16 v0, 0x4f45

    invoke-static {p0, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p0

    return p0
.end method

.method public static finishObjectHeader(Landroid/os/Parcel;I)V
    .locals 0

    .line 88
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    .line 89
    return-void
.end method

.method public static writeBigDecimal(Landroid/os/Parcel;ILjava/math/BigDecimal;Z)V
    .locals 0

    .line 195
    if-eqz p2, :cond_0

    .line 196
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 197
    invoke-virtual {p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 198
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 200
    :cond_0
    if-eqz p3, :cond_1

    .line 201
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 200
    :cond_1
    :goto_0
    nop

    .line 203
    :goto_1
    return-void
.end method

.method public static writeBigDecimalArray(Landroid/os/Parcel;I[Ljava/math/BigDecimal;Z)V
    .locals 2

    .line 348
    nop

    .line 349
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 350
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 351
    array-length p3, p2

    .line 352
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    :goto_0
    if-ge v0, p3, :cond_0

    .line 354
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 355
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 359
    :cond_1
    if-eqz p3, :cond_2

    .line 360
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 359
    :cond_2
    :goto_1
    nop

    .line 362
    :goto_2
    return-void
.end method

.method public static writeBigInteger(Landroid/os/Parcel;ILjava/math/BigInteger;Z)V
    .locals 0

    .line 157
    if-eqz p2, :cond_0

    .line 158
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 159
    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 160
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 161
    :cond_0
    if-eqz p3, :cond_1

    .line 162
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 161
    :cond_1
    :goto_0
    nop

    .line 164
    :goto_1
    return-void
.end method

.method public static writeBigIntegerArray(Landroid/os/Parcel;I[Ljava/math/BigInteger;Z)V
    .locals 2

    .line 312
    nop

    .line 313
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 314
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 315
    array-length p3, p2

    .line 316
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    :goto_0
    if-ge v0, p3, :cond_0

    .line 318
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 322
    :cond_1
    if-eqz p3, :cond_2

    .line 323
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 322
    :cond_2
    :goto_1
    nop

    .line 325
    :goto_2
    return-void
.end method

.method public static writeBoolean(Landroid/os/Parcel;IZ)V
    .locals 1

    .line 92
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 93
    if-eqz p2, :cond_0

    .line 94
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    :goto_0
    return-void
.end method

.method public static writeBooleanArray(Landroid/os/Parcel;I[ZZ)V
    .locals 0

    .line 272
    if-eqz p2, :cond_0

    .line 273
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 274
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 275
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 276
    :cond_0
    if-eqz p3, :cond_1

    .line 277
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 276
    :cond_1
    :goto_0
    nop

    .line 279
    :goto_1
    return-void
.end method

.method public static writeBooleanList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 385
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 386
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 387
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 388
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    move v1, v0

    .line 390
    :goto_0
    if-ge v1, p3, :cond_1

    .line 392
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const/4 v2, 0x1

    goto :goto_1

    .line 395
    :cond_0
    move v2, v0

    .line 397
    :goto_1
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    .line 399
    goto :goto_0

    .line 400
    :cond_1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 401
    :cond_2
    if-eqz p3, :cond_3

    .line 402
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_3

    .line 401
    :cond_3
    :goto_2
    nop

    .line 404
    :goto_3
    return-void
.end method

.method public static writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V
    .locals 1

    .line 101
    nop

    .line 102
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 103
    const/4 p3, 0x4

    invoke-static {p0, p1, p3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 104
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 107
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 108
    :cond_1
    if-eqz p3, :cond_2

    .line 109
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 111
    :cond_2
    :goto_0
    return-void
.end method

.method public static writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .locals 0

    .line 236
    if-eqz p2, :cond_0

    .line 237
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 238
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 239
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 240
    :cond_0
    if-eqz p3, :cond_1

    .line 241
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 240
    :cond_1
    :goto_0
    nop

    .line 243
    :goto_1
    return-void
.end method

.method public static writeByte(Landroid/os/Parcel;IB)V
    .locals 1

    .line 114
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 115
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void
.end method

.method public static writeByteArray(Landroid/os/Parcel;I[BZ)V
    .locals 0

    .line 246
    if-eqz p2, :cond_0

    .line 247
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 248
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 249
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 250
    :cond_0
    if-eqz p3, :cond_1

    .line 251
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 250
    :cond_1
    :goto_0
    nop

    .line 253
    :goto_1
    return-void
.end method

.method public static writeByteArrayArray(Landroid/os/Parcel;I[[BZ)V
    .locals 2

    .line 256
    nop

    .line 257
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 258
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 259
    array-length p3, p2

    .line 260
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    :goto_0
    if-ge v0, p3, :cond_0

    .line 262
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 266
    :cond_1
    if-eqz p3, :cond_2

    .line 267
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 266
    :cond_2
    :goto_1
    nop

    .line 269
    :goto_2
    return-void
.end method

.method public static writeByteArraySparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "[B>;Z)V"
        }
    .end annotation

    .line 759
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 760
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 761
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 762
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    nop

    .line 764
    :goto_0
    if-ge v0, p3, :cond_0

    .line 765
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 770
    :cond_1
    if-eqz p3, :cond_2

    .line 771
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 770
    :cond_2
    :goto_1
    nop

    .line 773
    :goto_2
    return-void
.end method

.method public static writeChar(Landroid/os/Parcel;IC)V
    .locals 1

    .line 119
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 120
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return-void
.end method

.method public static writeCharArray(Landroid/os/Parcel;I[CZ)V
    .locals 0

    .line 282
    if-eqz p2, :cond_0

    .line 283
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 284
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 285
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 286
    :cond_0
    if-eqz p3, :cond_1

    .line 287
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 286
    :cond_1
    :goto_0
    nop

    .line 289
    :goto_1
    return-void
.end method

.method public static writeDouble(Landroid/os/Parcel;ID)V
    .locals 1

    .line 181
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 182
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 183
    return-void
.end method

.method public static writeDoubleArray(Landroid/os/Parcel;I[DZ)V
    .locals 0

    .line 338
    if-eqz p2, :cond_0

    .line 339
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 340
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 341
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 342
    :cond_0
    if-eqz p3, :cond_1

    .line 343
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 342
    :cond_1
    :goto_0
    nop

    .line 345
    :goto_1
    return-void
.end method

.method public static writeDoubleList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .line 455
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 456
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 457
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 458
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    nop

    .line 460
    :goto_0
    if-ge v0, p3, :cond_0

    .line 461
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 465
    :cond_1
    if-eqz p3, :cond_2

    .line 466
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 465
    :cond_2
    :goto_1
    nop

    .line 468
    :goto_2
    return-void
.end method

.method public static writeDoubleObject(Landroid/os/Parcel;ILjava/lang/Double;Z)V
    .locals 0

    .line 186
    if-eqz p2, :cond_0

    .line 187
    const/16 p3, 0x8

    invoke-static {p0, p1, p3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 188
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 189
    :cond_0
    if-eqz p3, :cond_1

    .line 190
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 192
    :cond_1
    :goto_0
    return-void
.end method

.method public static writeDoubleSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .line 605
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 606
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 607
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 608
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    nop

    .line 610
    :goto_0
    if-ge v0, p3, :cond_0

    .line 611
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 616
    :cond_1
    if-eqz p3, :cond_2

    .line 617
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 616
    :cond_2
    :goto_1
    nop

    .line 619
    :goto_2
    return-void
.end method

.method public static writeFloat(Landroid/os/Parcel;IF)V
    .locals 1

    .line 167
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 168
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 169
    return-void
.end method

.method public static writeFloatArray(Landroid/os/Parcel;I[FZ)V
    .locals 0

    .line 328
    if-eqz p2, :cond_0

    .line 329
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 330
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 331
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 332
    :cond_0
    if-eqz p3, :cond_1

    .line 333
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 332
    :cond_1
    :goto_0
    nop

    .line 335
    :goto_1
    return-void
.end method

.method public static writeFloatList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .line 439
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 440
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 441
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 442
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    nop

    .line 444
    :goto_0
    if-ge v0, p3, :cond_0

    .line 445
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 449
    :cond_1
    if-eqz p3, :cond_2

    .line 450
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 449
    :cond_2
    :goto_1
    nop

    .line 452
    :goto_2
    return-void
.end method

.method public static writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V
    .locals 0

    .line 172
    if-eqz p2, :cond_0

    .line 173
    const/4 p3, 0x4

    invoke-static {p0, p1, p3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 174
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 175
    :cond_0
    if-eqz p3, :cond_1

    .line 176
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 178
    :cond_1
    :goto_0
    return-void
.end method

.method public static writeFloatSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .line 622
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 623
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 624
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 625
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    nop

    .line 627
    :goto_0
    if-ge v0, p3, :cond_0

    .line 628
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 633
    :cond_1
    if-eqz p3, :cond_2

    .line 634
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 633
    :cond_2
    :goto_1
    nop

    .line 636
    :goto_2
    return-void
.end method

.method public static writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .locals 0

    .line 216
    if-eqz p2, :cond_0

    .line 217
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 218
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 219
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 220
    :cond_0
    if-eqz p3, :cond_1

    .line 221
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 220
    :cond_1
    :goto_0
    nop

    .line 223
    :goto_1
    return-void
.end method

.method public static writeIBinderArray(Landroid/os/Parcel;I[Landroid/os/IBinder;Z)V
    .locals 0

    .line 375
    if-eqz p2, :cond_0

    .line 376
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 377
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBinderArray([Landroid/os/IBinder;)V

    .line 378
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 379
    :cond_0
    if-eqz p3, :cond_1

    .line 380
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 379
    :cond_1
    :goto_0
    nop

    .line 382
    :goto_1
    return-void
.end method

.method public static writeIBinderList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    .line 481
    if-eqz p2, :cond_0

    .line 482
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 483
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 484
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 485
    :cond_0
    if-eqz p3, :cond_1

    .line 486
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 485
    :cond_1
    :goto_0
    nop

    .line 488
    :goto_1
    return-void
.end method

.method public static writeIBinderSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    .line 742
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 743
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 744
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 745
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    nop

    .line 747
    :goto_0
    if-ge v0, p3, :cond_0

    .line 748
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 753
    :cond_1
    if-eqz p3, :cond_2

    .line 754
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 753
    :cond_2
    :goto_1
    nop

    .line 756
    :goto_2
    return-void
.end method

.method public static writeInt(Landroid/os/Parcel;II)V
    .locals 1

    .line 129
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 130
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return-void
.end method

.method public static writeIntArray(Landroid/os/Parcel;I[IZ)V
    .locals 0

    .line 292
    if-eqz p2, :cond_0

    .line 293
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 294
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 295
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 296
    :cond_0
    if-eqz p3, :cond_1

    .line 297
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 296
    :cond_1
    :goto_0
    nop

    .line 299
    :goto_1
    return-void
.end method

.method public static writeIntegerList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 407
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 408
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 409
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 410
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    nop

    .line 412
    :goto_0
    if-ge v0, p3, :cond_0

    .line 413
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 417
    :cond_1
    if-eqz p3, :cond_2

    .line 418
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 417
    :cond_2
    :goto_1
    nop

    .line 420
    :goto_2
    return-void
.end method

.method public static writeIntegerObject(Landroid/os/Parcel;ILjava/lang/Integer;Z)V
    .locals 0

    .line 134
    if-eqz p2, :cond_0

    .line 135
    const/4 p3, 0x4

    invoke-static {p0, p1, p3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 136
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 137
    :cond_0
    if-eqz p3, :cond_1

    .line 138
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 140
    :cond_1
    :goto_0
    return-void
.end method

.method public static writeList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 0

    .line 585
    if-eqz p2, :cond_0

    .line 586
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 587
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 588
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 589
    :cond_0
    if-eqz p3, :cond_1

    .line 590
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 589
    :cond_1
    :goto_0
    nop

    .line 592
    :goto_1
    return-void
.end method

.method public static writeLong(Landroid/os/Parcel;IJ)V
    .locals 1

    .line 143
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 144
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    return-void
.end method

.method public static writeLongArray(Landroid/os/Parcel;I[JZ)V
    .locals 0

    .line 302
    if-eqz p2, :cond_0

    .line 303
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 304
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 305
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 306
    :cond_0
    if-eqz p3, :cond_1

    .line 307
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 306
    :cond_1
    :goto_0
    nop

    .line 309
    :goto_1
    return-void
.end method

.method public static writeLongList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 423
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 424
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 425
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 426
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    nop

    .line 428
    :goto_0
    if-ge v0, p3, :cond_0

    .line 429
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 433
    :cond_1
    if-eqz p3, :cond_2

    .line 434
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 433
    :cond_2
    :goto_1
    nop

    .line 436
    :goto_2
    return-void
.end method

.method public static writeLongObject(Landroid/os/Parcel;ILjava/lang/Long;Z)V
    .locals 0

    .line 148
    if-eqz p2, :cond_0

    .line 149
    const/16 p3, 0x8

    invoke-static {p0, p1, p3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 150
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 151
    :cond_0
    if-eqz p3, :cond_1

    .line 152
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 154
    :cond_1
    :goto_0
    return-void
.end method

.method public static writeParcel(Landroid/os/Parcel;ILandroid/os/Parcel;Z)V
    .locals 1

    .line 532
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 533
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result p3

    invoke-virtual {p0, p2, v0, p3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 535
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 536
    :cond_0
    if-eqz p3, :cond_1

    .line 537
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 536
    :cond_1
    :goto_0
    nop

    .line 539
    :goto_1
    return-void
.end method

.method public static writeParcelArray(Landroid/os/Parcel;I[Landroid/os/Parcel;Z)V
    .locals 4

    .line 542
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 543
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 544
    array-length p3, p2

    .line 545
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    move v1, v0

    .line 547
    :goto_0
    if-ge v1, p3, :cond_1

    .line 548
    aget-object v2, p2, v1

    if-nez v2, :cond_0

    .line 549
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 551
    :cond_0
    aget-object v2, p2, v1

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    aget-object v2, p2, v1

    aget-object v3, p2, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 554
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    :cond_1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 557
    :cond_2
    if-eqz p3, :cond_3

    .line 558
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_3

    .line 557
    :cond_3
    :goto_2
    nop

    .line 560
    :goto_3
    return-void
.end method

.method public static writeParcelList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;Z)V"
        }
    .end annotation

    .line 563
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 564
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 565
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 566
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    move v1, v0

    .line 568
    :goto_0
    if-ge v1, p3, :cond_1

    .line 569
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    .line 570
    if-nez v2, :cond_0

    .line 571
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 573
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 576
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 577
    goto :goto_0

    .line 578
    :cond_1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 579
    :cond_2
    if-eqz p3, :cond_3

    .line 580
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_3

    .line 579
    :cond_3
    :goto_2
    nop

    .line 582
    :goto_3
    return-void
.end method

.method public static writeParcelSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcel;",
            ">;Z)V"
        }
    .end annotation

    .line 697
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 698
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 699
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 700
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    move v1, v0

    .line 702
    :goto_0
    if-ge v1, p3, :cond_1

    .line 703
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    .line 705
    if-nez v2, :cond_0

    .line 706
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 708
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 711
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 712
    goto :goto_0

    .line 713
    :cond_1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 714
    :cond_2
    if-eqz p3, :cond_3

    .line 715
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_3

    .line 714
    :cond_3
    :goto_2
    nop

    .line 717
    :goto_3
    return-void
.end method

.method public static writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .locals 0

    .line 226
    if-eqz p2, :cond_0

    .line 227
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 228
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 230
    :cond_0
    if-eqz p4, :cond_1

    .line 231
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 230
    :cond_1
    :goto_0
    nop

    .line 233
    :goto_1
    return-void
.end method

.method public static writeShort(Landroid/os/Parcel;IS)V
    .locals 1

    .line 124
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    .line 125
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return-void
.end method

.method public static writeSparseBooleanArray(Landroid/os/Parcel;ILandroid/util/SparseBooleanArray;Z)V
    .locals 0

    .line 595
    if-eqz p2, :cond_0

    .line 596
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 597
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 598
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 599
    :cond_0
    if-eqz p3, :cond_1

    .line 600
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 599
    :cond_1
    :goto_0
    nop

    .line 602
    :goto_1
    return-void
.end method

.method public static writeSparseIntArray(Landroid/os/Parcel;ILandroid/util/SparseIntArray;Z)V
    .locals 2

    .line 639
    nop

    .line 640
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 641
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 642
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p3

    .line 643
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    :goto_0
    if-ge v0, p3, :cond_0

    .line 645
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 650
    :cond_1
    if-eqz p3, :cond_2

    .line 651
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 650
    :cond_2
    :goto_1
    nop

    .line 653
    :goto_2
    return-void
.end method

.method public static writeSparseLongArray(Landroid/os/Parcel;ILandroid/util/SparseLongArray;Z)V
    .locals 4

    .line 656
    nop

    .line 657
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 658
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 659
    nop

    .line 660
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p3, v1, :cond_0

    .line 661
    invoke-virtual {p2}, Landroid/util/SparseLongArray;->size()I

    move-result p3

    goto :goto_0

    .line 660
    :cond_0
    move p3, v0

    .line 663
    :goto_0
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    :goto_1
    if-ge v0, p3, :cond_3

    .line 665
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_1

    .line 666
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_2

    .line 669
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 671
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 673
    :cond_3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 674
    :cond_4
    if-eqz p3, :cond_5

    .line 675
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_3

    .line 674
    :cond_5
    :goto_2
    nop

    .line 677
    :goto_3
    return-void
.end method

.method public static writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .locals 0

    .line 206
    if-eqz p2, :cond_0

    .line 207
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 208
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 210
    :cond_0
    if-eqz p3, :cond_1

    .line 211
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 210
    :cond_1
    :goto_0
    nop

    .line 213
    :goto_1
    return-void
.end method

.method public static writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .locals 0

    .line 365
    if-eqz p2, :cond_0

    .line 366
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 367
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 368
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 369
    :cond_0
    if-eqz p3, :cond_1

    .line 370
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 369
    :cond_1
    :goto_0
    nop

    .line 372
    :goto_1
    return-void
.end method

.method public static writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 471
    if-eqz p2, :cond_0

    .line 472
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 473
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 474
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 475
    :cond_0
    if-eqz p3, :cond_1

    .line 476
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 475
    :cond_1
    :goto_0
    nop

    .line 478
    :goto_1
    return-void
.end method

.method public static writeStringSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 680
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 681
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 682
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 683
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    nop

    .line 685
    :goto_0
    if-ge v0, p3, :cond_0

    .line 686
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 691
    :cond_1
    if-eqz p3, :cond_2

    .line 692
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_2

    .line 691
    :cond_2
    :goto_1
    nop

    .line 694
    :goto_2
    return-void
.end method

.method public static writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TP;IZ)V"
        }
    .end annotation

    .line 491
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 492
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 493
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    array-length p4, p2

    .line 495
    move v1, v0

    .line 496
    :goto_0
    if-ge v1, p4, :cond_1

    .line 497
    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    .line 498
    aget-object v2, p2, v1

    invoke-static {p0, v2, p3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 500
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 505
    :cond_2
    if-eqz p4, :cond_3

    .line 506
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_3

    .line 505
    :cond_3
    :goto_2
    nop

    .line 508
    :goto_3
    return-void
.end method

.method public static writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 511
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 512
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 513
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 514
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    move v1, v0

    .line 516
    :goto_0
    if-ge v1, p3, :cond_1

    .line 517
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 518
    if-eqz v2, :cond_0

    .line 519
    invoke-static {p0, v2, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 521
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 524
    goto :goto_0

    .line 525
    :cond_1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 526
    :cond_2
    if-eqz p3, :cond_3

    .line 527
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_3

    .line 526
    :cond_3
    :goto_2
    nop

    .line 529
    :goto_3
    return-void
.end method

.method public static writeTypedSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 720
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 721
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)I

    move-result p1

    .line 722
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 723
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    move v1, v0

    .line 725
    :goto_0
    if-ge v1, p3, :cond_1

    .line 726
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 728
    if-eqz v2, :cond_0

    .line 729
    invoke-static {p0, v2, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 731
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 734
    goto :goto_0

    .line 735
    :cond_1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 736
    :cond_2
    if-eqz p3, :cond_3

    .line 737
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;II)V

    goto :goto_3

    .line 736
    :cond_3
    :goto_2
    nop

    .line 739
    :goto_3
    return-void
.end method
