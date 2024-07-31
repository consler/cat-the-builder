.class public Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;
.super Ljava/lang/Object;
.source "SafeParcelReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static a(Landroid/os/Parcel;II)V
    .locals 4

    .line 70
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 71
    if-ne p1, p2, :cond_0

    .line 75
    return-void

    .line 72
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " got "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1
.end method

.method private static a(Landroid/os/Parcel;III)V
    .locals 3

    .line 78
    if-ne p2, p3, :cond_0

    .line 82
    return-void

    .line 79
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 80
    new-instance v0, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " got "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (0x"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static createBigDecimal(Landroid/os/Parcel;I)Ljava/math/BigDecimal;
    .locals 3

    .line 197
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 198
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 199
    if-nez p1, :cond_0

    .line 200
    const/4 p0, 0x0

    return-object p0

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 205
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 206
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p1
.end method

.method public static createBigDecimalArray(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;
    .locals 7

    .line 364
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 365
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 366
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 367
    new-array p0, v1, [Ljava/math/BigDecimal;

    return-object p0

    .line 369
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 370
    new-array v3, v2, [Ljava/math/BigDecimal;

    .line 371
    nop

    .line 372
    :goto_0
    if-ge v1, v2, :cond_1

    .line 373
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 374
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 375
    new-instance v4, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    aput-object v4, v3, v1

    .line 376
    add-int/lit8 v1, v1, 0x1

    .line 377
    goto :goto_0

    .line 378
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 379
    return-object v3
.end method

.method public static createBigInteger(Landroid/os/Parcel;I)Ljava/math/BigInteger;
    .locals 2

    .line 158
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 159
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 160
    if-nez p1, :cond_0

    .line 161
    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 164
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 165
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public static createBigIntegerArray(Landroid/os/Parcel;I)[Ljava/math/BigInteger;
    .locals 6

    .line 325
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 326
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 327
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 328
    new-array p0, v1, [Ljava/math/BigInteger;

    return-object p0

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    new-array v3, v2, [Ljava/math/BigInteger;

    .line 332
    nop

    .line 333
    :goto_0
    if-ge v1, v2, :cond_1

    .line 334
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v4, v3, v1

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 338
    return-object v3
.end method

.method public static createBooleanArray(Landroid/os/Parcel;I)[Z
    .locals 1

    .line 280
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 281
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 282
    if-nez p1, :cond_0

    .line 283
    const/4 p0, 0x0

    new-array p0, p0, [Z

    return-object p0

    .line 285
    :cond_0
    add-int/2addr p1, v0

    .line 286
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 287
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 288
    return-object v0
.end method

.method public static createBooleanList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 405
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 406
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 407
    if-nez p1, :cond_0

    .line 408
    const/4 p0, 0x0

    return-object p0

    .line 410
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 412
    const/4 v3, 0x0

    move v4, v3

    .line 413
    :goto_0
    if-ge v4, v2, :cond_2

    .line 415
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v3

    .line 416
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    add-int/lit8 v4, v4, 0x1

    .line 418
    goto :goto_0

    .line 419
    :cond_2
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 420
    return-object v1
.end method

.method public static createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .locals 2

    .line 243
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 244
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 245
    if-nez p1, :cond_0

    .line 246
    const/4 p0, 0x0

    return-object p0

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 249
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 250
    return-object v1
.end method

.method public static createByteArray(Landroid/os/Parcel;I)[B
    .locals 2

    .line 254
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 255
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 256
    if-nez p1, :cond_0

    .line 257
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 260
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 261
    return-object v1
.end method

.method public static createByteArrayArray(Landroid/os/Parcel;I)[[B
    .locals 5

    .line 265
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 266
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 267
    if-nez p1, :cond_0

    .line 268
    const/4 p0, 0x0

    check-cast p0, [[B

    return-object p0

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 271
    new-array v2, v1, [[B

    .line 272
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 273
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    aput-object v4, v2, v3

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 276
    return-object v2
.end method

.method public static createByteArraySparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 606
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 607
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 608
    if-nez p1, :cond_0

    .line 609
    const/4 p0, 0x0

    return-object p0

    .line 611
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 612
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 613
    const/4 v3, 0x0

    .line 614
    :goto_0
    if-ge v3, v1, :cond_1

    .line 615
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 616
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 618
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 619
    return-object v2
.end method

.method public static createCharArray(Landroid/os/Parcel;I)[C
    .locals 2

    .line 292
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 293
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 294
    if-nez p1, :cond_0

    .line 295
    const/4 p0, 0x0

    new-array p0, p0, [C

    return-object p0

    .line 297
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v1

    .line 298
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 299
    return-object v1
.end method

.method public static createDoubleArray(Landroid/os/Parcel;I)[D
    .locals 2

    .line 353
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 354
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 355
    if-nez p1, :cond_0

    .line 356
    const/4 p0, 0x0

    new-array p0, p0, [D

    return-object p0

    .line 358
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v1

    .line 359
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 360
    return-object v1
.end method

.method public static createDoubleList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 657
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 658
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 659
    if-nez p1, :cond_0

    .line 660
    const/4 p0, 0x0

    return-object p0

    .line 662
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 663
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 664
    const/4 v3, 0x0

    .line 665
    :goto_0
    if-ge v3, v2, :cond_1

    .line 666
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 669
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 670
    return-object v1
.end method

.method public static createDoubleSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 486
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 487
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 488
    if-nez p1, :cond_0

    .line 489
    const/4 p0, 0x0

    return-object p0

    .line 491
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 492
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 493
    const/4 v3, 0x0

    .line 494
    :goto_0
    if-ge v3, v2, :cond_1

    .line 495
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 498
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 499
    return-object v1
.end method

.method public static createFloatArray(Landroid/os/Parcel;I)[F
    .locals 2

    .line 342
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 343
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 344
    if-nez p1, :cond_0

    .line 345
    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0

    .line 347
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 348
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 349
    return-object v1
.end method

.method public static createFloatList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 640
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 641
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 642
    if-nez p1, :cond_0

    .line 643
    const/4 p0, 0x0

    return-object p0

    .line 645
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 646
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 647
    const/4 v3, 0x0

    .line 648
    :goto_0
    if-ge v3, v2, :cond_1

    .line 649
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 652
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 653
    return-object v1
.end method

.method public static createFloatSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 469
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 470
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 471
    if-nez p1, :cond_0

    .line 472
    const/4 p0, 0x0

    return-object p0

    .line 474
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 475
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 476
    const/4 v3, 0x0

    .line 477
    :goto_0
    if-ge v3, v2, :cond_1

    .line 478
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 479
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 482
    return-object v1
.end method

.method public static createIBinderArray(Landroid/os/Parcel;I)[Landroid/os/IBinder;
    .locals 2

    .line 394
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 395
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 396
    if-nez p1, :cond_0

    .line 397
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/os/IBinder;

    return-object p0

    .line 399
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createBinderArray()[Landroid/os/IBinder;

    move-result-object v1

    .line 400
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 401
    return-object v1
.end method

.method public static createIBinderList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 685
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 686
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 687
    if-nez p1, :cond_0

    .line 688
    const/4 p0, 0x0

    return-object p0

    .line 690
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 691
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 692
    return-object v1
.end method

.method public static createIBinderSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 589
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 590
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 591
    if-nez p1, :cond_0

    .line 592
    const/4 p0, 0x0

    return-object p0

    .line 594
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 595
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 596
    const/4 v3, 0x0

    .line 597
    :goto_0
    if-ge v3, v1, :cond_1

    .line 598
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 599
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 601
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 602
    return-object v2
.end method

.method public static createIntArray(Landroid/os/Parcel;I)[I
    .locals 2

    .line 303
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 304
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 305
    if-nez p1, :cond_0

    .line 306
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    .line 308
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 309
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 310
    return-object v1
.end method

.method public static createIntegerList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 424
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 425
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 426
    if-nez p1, :cond_0

    .line 427
    const/4 p0, 0x0

    return-object p0

    .line 429
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 430
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 431
    const/4 v3, 0x0

    .line 432
    :goto_0
    if-ge v3, v2, :cond_1

    .line 433
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 437
    return-object v1
.end method

.method public static createLongArray(Landroid/os/Parcel;I)[J
    .locals 2

    .line 314
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 315
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 316
    if-nez p1, :cond_0

    .line 317
    const/4 p0, 0x0

    new-array p0, p0, [J

    return-object p0

    .line 319
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 320
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 321
    return-object v1
.end method

.method public static createLongList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 623
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 624
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 625
    if-nez p1, :cond_0

    .line 626
    const/4 p0, 0x0

    return-object p0

    .line 628
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 629
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 630
    const/4 v3, 0x0

    .line 631
    :goto_0
    if-ge v3, v2, :cond_1

    .line 632
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 635
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 636
    return-object v1
.end method

.method public static createParcel(Landroid/os/Parcel;I)Landroid/os/Parcel;
    .locals 2

    .line 718
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 719
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 720
    if-nez p1, :cond_0

    .line 721
    const/4 p0, 0x0

    return-object p0

    .line 723
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 724
    invoke-virtual {v1, p0, v0, p1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 725
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 726
    return-object v1
.end method

.method public static createParcelArray(Landroid/os/Parcel;I)[Landroid/os/Parcel;
    .locals 7

    .line 730
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 731
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 732
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 733
    new-array p0, v1, [Landroid/os/Parcel;

    return-object p0

    .line 735
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 736
    new-array v3, v2, [Landroid/os/Parcel;

    .line 737
    nop

    .line 738
    :goto_0
    if-ge v1, v2, :cond_2

    .line 739
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 740
    if-nez v4, :cond_1

    .line 741
    const/4 v4, 0x0

    aput-object v4, v3, v1

    goto :goto_1

    .line 743
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    .line 744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 745
    invoke-virtual {v6, p0, v5, v4}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 746
    aput-object v6, v3, v1

    .line 747
    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 749
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 750
    goto :goto_0

    .line 751
    :cond_2
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 752
    return-object v3
.end method

.method public static createParcelList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation

    .line 756
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 757
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 758
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 759
    return-object v1

    .line 761
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 762
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 763
    const/4 v4, 0x0

    .line 764
    :goto_0
    if-ge v4, v2, :cond_2

    .line 765
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 766
    if-nez v5, :cond_1

    .line 767
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 769
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    .line 770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 771
    invoke-virtual {v7, p0, v6, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 772
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 775
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 776
    goto :goto_0

    .line 777
    :cond_2
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 778
    return-object v3
.end method

.method public static createParcelSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation

    .line 542
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 543
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 544
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 545
    return-object v1

    .line 547
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 548
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 549
    const/4 v4, 0x0

    .line 550
    :goto_0
    if-ge v4, v2, :cond_2

    .line 551
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 552
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 553
    if-nez v6, :cond_1

    .line 554
    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_1

    .line 556
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 558
    invoke-virtual {v8, p0, v7, v6}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 559
    invoke-virtual {v3, v5, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 560
    add-int/2addr v7, v6

    invoke-virtual {p0, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 562
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 563
    goto :goto_0

    .line 564
    :cond_2
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 565
    return-object v3
.end method

.method public static createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 232
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 233
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 234
    if-nez p1, :cond_0

    .line 235
    const/4 p0, 0x0

    return-object p0

    .line 237
    :cond_0
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    .line 238
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 239
    return-object p2
.end method

.method public static createSparseBooleanArray(Landroid/os/Parcel;I)Landroid/util/SparseBooleanArray;
    .locals 2

    .line 441
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 442
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 443
    if-nez p1, :cond_0

    .line 444
    const/4 p0, 0x0

    return-object p0

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 447
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 448
    return-object v1
.end method

.method public static createSparseIntArray(Landroid/os/Parcel;I)Landroid/util/SparseIntArray;
    .locals 6

    .line 452
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 453
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 454
    if-nez p1, :cond_0

    .line 455
    const/4 p0, 0x0

    return-object p0

    .line 457
    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 458
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 459
    const/4 v3, 0x0

    .line 460
    :goto_0
    if-ge v3, v2, :cond_1

    .line 461
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 464
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 465
    return-object v1
.end method

.method public static createSparseLongArray(Landroid/os/Parcel;I)Landroid/util/SparseLongArray;
    .locals 8

    .line 503
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 504
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 505
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 506
    return-object v1

    .line 508
    :cond_0
    nop

    .line 509
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    .line 510
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    .line 512
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 513
    const/4 v4, 0x0

    .line 514
    :goto_0
    if-ge v4, v2, :cond_3

    .line 515
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_2

    .line 516
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 518
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 520
    :cond_3
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 521
    return-object v1
.end method

.method public static createString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 2

    .line 210
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 211
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 212
    if-nez p1, :cond_0

    .line 213
    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 216
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 217
    return-object v1
.end method

.method public static createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;
    .locals 2

    .line 383
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 384
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 385
    if-nez p1, :cond_0

    .line 386
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    .line 388
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 389
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 390
    return-object v1
.end method

.method public static createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 674
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 675
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 676
    if-nez p1, :cond_0

    .line 677
    const/4 p0, 0x0

    return-object p0

    .line 679
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 680
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 681
    return-object v1
.end method

.method public static createStringSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 525
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 526
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 527
    if-nez p1, :cond_0

    .line 528
    const/4 p0, 0x0

    return-object p0

    .line 530
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 531
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 532
    const/4 v3, 0x0

    .line 533
    :goto_0
    if-ge v3, v2, :cond_1

    .line 534
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 535
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 537
    :cond_1
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 538
    return-object v1
.end method

.method public static createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TC;>;)[TC;"
        }
    .end annotation

    .line 696
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 697
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 698
    if-nez p1, :cond_0

    .line 699
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 701
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    .line 702
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 703
    return-object p2
.end method

.method public static createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TC;>;)",
            "Ljava/util/ArrayList<",
            "TC;>;"
        }
    .end annotation

    .line 707
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 708
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 709
    if-nez p1, :cond_0

    .line 710
    const/4 p0, 0x0

    return-object p0

    .line 712
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 713
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 714
    return-object p2
.end method

.method public static createTypedSparseArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TC;>;)",
            "Landroid/util/SparseArray<",
            "TC;>;"
        }
    .end annotation

    .line 569
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 570
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 571
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 572
    return-object v1

    .line 574
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 575
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 576
    const/4 v4, 0x0

    .line 577
    :goto_0
    if-ge v4, v2, :cond_2

    .line 579
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 580
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v1

    .line 581
    :goto_1
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 582
    add-int/lit8 v4, v4, 0x1

    .line 583
    goto :goto_0

    .line 584
    :cond_2
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 585
    return-object v3
.end method

.method public static ensureAtEnd(Landroid/os/Parcel;I)V
    .locals 3

    .line 791
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 794
    return-void

    .line 792
    :cond_0
    new-instance v0, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static getFieldId(I)I
    .locals 1

    .line 49
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static readBoolean(Landroid/os/Parcel;I)Z
    .locals 1

    .line 101
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;II)V

    .line 102
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readBooleanObject(Landroid/os/Parcel;I)Ljava/lang/Boolean;
    .locals 3

    .line 106
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    .line 107
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 110
    :cond_0
    const/4 v2, 0x4

    invoke-static {p0, p1, v0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;III)V

    .line 111
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static readByte(Landroid/os/Parcel;I)B
    .locals 1

    .line 115
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;II)V

    .line 116
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static readChar(Landroid/os/Parcel;I)C
    .locals 1

    .line 120
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;II)V

    .line 121
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public static readDouble(Landroid/os/Parcel;I)D
    .locals 1

    .line 183
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;II)V

    .line 184
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public static readDoubleObject(Landroid/os/Parcel;I)Ljava/lang/Double;
    .locals 2

    .line 188
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    .line 189
    if-nez v0, :cond_0

    .line 190
    const/4 p0, 0x0

    return-object p0

    .line 192
    :cond_0
    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;III)V

    .line 193
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static readFloat(Landroid/os/Parcel;I)F
    .locals 1

    .line 169
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;II)V

    .line 170
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0
.end method

.method public static readFloatObject(Landroid/os/Parcel;I)Ljava/lang/Float;
    .locals 2

    .line 174
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_0
    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;III)V

    .line 179
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static readHeader(Landroid/os/Parcel;)I
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static readIBinder(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .locals 2

    .line 221
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 222
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 223
    if-nez p1, :cond_0

    .line 224
    const/4 p0, 0x0

    return-object p0

    .line 226
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 227
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 228
    return-object v1
.end method

.method public static readInt(Landroid/os/Parcel;I)I
    .locals 1

    .line 130
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;II)V

    .line 131
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static readIntegerObject(Landroid/os/Parcel;I)Ljava/lang/Integer;
    .locals 2

    .line 135
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    .line 136
    if-nez v0, :cond_0

    .line 137
    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_0
    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;III)V

    .line 140
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static readList(Landroid/os/Parcel;ILjava/util/List;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 782
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 783
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 784
    if-eqz p1, :cond_0

    .line 785
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 786
    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 788
    :cond_0
    return-void
.end method

.method public static readLong(Landroid/os/Parcel;I)J
    .locals 1

    .line 144
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;II)V

    .line 145
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static readLongObject(Landroid/os/Parcel;I)Ljava/lang/Long;
    .locals 2

    .line 149
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    .line 150
    if-nez v0, :cond_0

    .line 151
    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_0
    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;III)V

    .line 154
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static readShort(Landroid/os/Parcel;I)S
    .locals 1

    .line 125
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->a(Landroid/os/Parcel;II)V

    .line 126
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static readSize(Landroid/os/Parcel;I)I
    .locals 2

    .line 54
    const/high16 v0, -0x10000

    and-int v1, p1, v0

    if-eq v1, v0, :cond_0

    .line 55
    shr-int/lit8 p0, p1, 0x10

    const p1, 0xffff

    and-int/2addr p0, p1

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 59
    :goto_0
    return p0
.end method

.method public static skipUnknownField(Landroid/os/Parcel;I)V
    .locals 1

    .line 63
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void
.end method

.method public static validateObjectHeader(Landroid/os/Parcel;)I
    .locals 5

    .line 85
    invoke-static {p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 86
    invoke-static {p0, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 88
    invoke-static {v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    const/16 v4, 0x4f45

    if-eq v3, v4, :cond_1

    .line 89
    const-string v1, "Expected object header. Got 0x"

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v2, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$a;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {v2, v1, p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v2

    .line 93
    :cond_1
    add-int/2addr v1, v2

    .line 94
    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gt v1, v0, :cond_2

    .line 95
    return v1

    .line 97
    :cond_2
    new-instance v0, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method
