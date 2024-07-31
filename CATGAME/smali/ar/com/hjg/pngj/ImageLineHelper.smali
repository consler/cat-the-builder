.class public Lar/com/hjg/pngj/ImageLineHelper;
.super Ljava/lang/Object;
.source "ImageLineHelper.java"


# static fields
.field static DEPTH_UNPACK:[[I

.field static DEPTH_UNPACK_1:[I

.field static DEPTH_UNPACK_2:[I

.field static DEPTH_UNPACK_4:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clampTo_0_255(I)I
    .locals 1
    .param p0, "i"    # I

    .line 392
    const/16 v0, 0xff

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static clampTo_0_65535(I)I
    .locals 1
    .param p0, "i"    # I

    .line 396
    const v0, 0xffff

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static clampTo_128_127(I)I
    .locals 2
    .param p0, "x"    # I

    .line 400
    const/16 v0, -0x80

    const/16 v1, 0x7f

    if-le p0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static double2int(Lar/com/hjg/pngj/ImageLineInt;D)I
    .locals 5
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "d"    # D

    .line 382
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-double v0, p1, v3

    if-ltz v0, :cond_1

    move-wide v0, v3

    goto :goto_0

    :cond_1
    move-wide v0, p1

    :goto_0
    move-wide p1, v0

    .line 383
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x10

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-ne v0, v1, :cond_2

    const-wide v0, 0x40efffe000000000L    # 65535.0

    goto :goto_1

    :cond_2
    const-wide v0, 0x406fe00000000000L    # 255.0

    :goto_1
    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static double2intClamped(Lar/com/hjg/pngj/ImageLineInt;D)I
    .locals 5
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "d"    # D

    .line 387
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-double v0, p1, v3

    if-ltz v0, :cond_1

    move-wide v0, v3

    goto :goto_0

    :cond_1
    move-wide v0, p1

    :goto_0
    move-wide p1, v0

    .line 388
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x10

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-ne v0, v1, :cond_2

    const-wide v0, 0x40efffe000000000L    # 65535.0

    goto :goto_1

    :cond_2
    const-wide v0, 0x406fe00000000000L    # 255.0

    :goto_1
    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static getMaskForPackedFormats(I)I
    .locals 1
    .param p0, "bitDepth"    # I

    .line 404
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 405
    const/16 v0, 0xf0

    return v0

    .line 406
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 407
    const/16 v0, 0xc0

    return v0

    .line 409
    :cond_1
    const/16 v0, 0x80

    return v0
.end method

.method static getMaskForPackedFormatsLs(I)I
    .locals 1
    .param p0, "bitDepth"    # I

    .line 413
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 414
    const/16 v0, 0xf

    return v0

    .line 415
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 416
    const/4 v0, 0x3

    return v0

    .line 418
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getPixelARGB8(Lar/com/hjg/pngj/IImageLine;I)I
    .locals 4
    .param p0, "line"    # Lar/com/hjg/pngj/IImageLine;
    .param p1, "column"    # I

    .line 304
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v0, :cond_0

    .line 305
    move-object v0, p0

    check-cast v0, Lar/com/hjg/pngj/ImageLineInt;

    iget-object v0, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, p1

    .line 306
    .local v0, "offset":I
    move-object v1, p0

    check-cast v1, Lar/com/hjg/pngj/ImageLineInt;

    invoke-virtual {v1}, Lar/com/hjg/pngj/ImageLineInt;->getScanline()[I

    move-result-object v1

    .line 307
    .local v1, "scanline":[I
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    aget v3, v1, v0

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget v3, v1, v3

    or-int/2addr v2, v3

    return v2

    .line 309
    .end local v0    # "offset":I
    .end local v1    # "scanline":[I
    :cond_0
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineByte;

    if-eqz v0, :cond_1

    .line 310
    move-object v0, p0

    check-cast v0, Lar/com/hjg/pngj/ImageLineByte;

    iget-object v0, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, p1

    .line 311
    .restart local v0    # "offset":I
    move-object v1, p0

    check-cast v1, Lar/com/hjg/pngj/ImageLineByte;

    invoke-virtual {v1}, Lar/com/hjg/pngj/ImageLineByte;->getScanline()[B

    move-result-object v1

    .line 312
    .local v1, "scanline":[B
    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    return v2

    .line 315
    .end local v0    # "offset":I
    .end local v1    # "scanline":[B
    :cond_1
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPixelRGB8(Lar/com/hjg/pngj/IImageLine;I)I
    .locals 4
    .param p0, "line"    # Lar/com/hjg/pngj/IImageLine;
    .param p1, "column"    # I

    .line 290
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v0, :cond_0

    .line 291
    move-object v0, p0

    check-cast v0, Lar/com/hjg/pngj/ImageLineInt;

    iget-object v0, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, p1

    .line 292
    .local v0, "offset":I
    move-object v1, p0

    check-cast v1, Lar/com/hjg/pngj/ImageLineInt;

    invoke-virtual {v1}, Lar/com/hjg/pngj/ImageLineInt;->getScanline()[I

    move-result-object v1

    .line 293
    .local v1, "scanline":[I
    aget v2, v1, v0

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget v3, v1, v3

    or-int/2addr v2, v3

    return v2

    .line 294
    .end local v0    # "offset":I
    .end local v1    # "scanline":[I
    :cond_0
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineByte;

    if-eqz v0, :cond_1

    .line 295
    move-object v0, p0

    check-cast v0, Lar/com/hjg/pngj/ImageLineByte;

    iget-object v0, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, p1

    .line 296
    .restart local v0    # "offset":I
    move-object v1, p0

    check-cast v1, Lar/com/hjg/pngj/ImageLineByte;

    invoke-virtual {v1}, Lar/com/hjg/pngj/ImageLineByte;->getScanline()[B

    move-result-object v1

    .line 297
    .local v1, "scanline":[B
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    return v2

    .line 300
    .end local v0    # "offset":I
    .end local v1    # "scanline":[B
    :cond_1
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static infoFirstLastPixels(Lar/com/hjg/pngj/ImageLineInt;)Ljava/lang/String;
    .locals 7
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;

    .line 277
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    array-length v2, v2

    sub-int/2addr v2, v3

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "first=(%d) last=(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x3

    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    array-length v5, v5

    iget-object v6, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v6, v6, Lar/com/hjg/pngj/ImageInfo;->channels:I

    sub-int/2addr v5, v6

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    array-length v5, v5

    iget-object v6, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v6, v6, Lar/com/hjg/pngj/ImageInfo;->channels:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v3

    aget v3, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    array-length v4, v4

    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v5, v5, Lar/com/hjg/pngj/ImageInfo;->channels:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    aget v1, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "first=(%d %d %d) last=(%d %d %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static initDepthScale()V
    .locals 7

    .line 23
    const/4 v0, 0x2

    new-array v1, v0, [I

    sput-object v1, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK_1:[I

    .line 24
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    sget-object v2, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK_1:[I

    mul-int/lit16 v3, v1, 0xff

    aput v3, v2, v1

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [I

    sput-object v2, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK_2:[I

    .line 27
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v1, :cond_1

    .line 28
    sget-object v4, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK_2:[I

    mul-int/lit16 v5, v2, 0xff

    div-int/2addr v5, v3

    aput v5, v4, v2

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x10

    new-array v4, v2, [I

    sput-object v4, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK_4:[I

    .line 30
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_2

    .line 31
    sget-object v5, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK_4:[I

    mul-int/lit16 v6, v4, 0xff

    div-int/lit8 v6, v6, 0xf

    aput v6, v5, v4

    .line 30
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 32
    .end local v4    # "i":I
    :cond_2
    const/4 v2, 0x5

    new-array v2, v2, [[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v2, v4

    sget-object v4, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK_1:[I

    const/4 v6, 0x1

    aput-object v4, v2, v6

    sget-object v4, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK_2:[I

    aput-object v4, v2, v0

    aput-object v5, v2, v3

    sget-object v0, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK_4:[I

    aput-object v0, v2, v1

    sput-object v2, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK:[[I

    .line 33
    return-void
.end method

.method public static int2double(Lar/com/hjg/pngj/ImageLineInt;I)D
    .locals 4
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "p"    # I

    .line 371
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    int-to-double v0, p1

    const-wide v2, 0x40efffe000000000L    # 65535.0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x406fe00000000000L    # 255.0

    :goto_0
    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static int2doubleClamped(Lar/com/hjg/pngj/ImageLineInt;I)D
    .locals 7
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "p"    # I

    .line 377
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    int-to-double v0, p1

    const-wide v2, 0x40efffe000000000L    # 65535.0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x406fe00000000000L    # 255.0

    :goto_0
    div-double/2addr v0, v2

    .line 378
    .local v0, "d":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    cmpl-double v2, v0, v5

    if-ltz v2, :cond_2

    move-wide v2, v5

    goto :goto_1

    :cond_2
    move-wide v2, v0

    :goto_1
    return-wide v2
.end method

.method public static interpol(IIIIDD)I
    .locals 8
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I
    .param p3, "d"    # I
    .param p4, "dx"    # D
    .param p6, "dy"    # D

    .line 365
    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, p4

    mul-double/2addr v0, v4

    int-to-double v4, p1

    mul-double/2addr v4, p4

    add-double/2addr v0, v4

    .line 366
    .local v0, "e":D
    int-to-double v4, p2

    sub-double v6, v2, p4

    mul-double/2addr v4, v6

    int-to-double v6, p3

    mul-double/2addr v6, p4

    add-double/2addr v4, v6

    .line 367
    .local v4, "f":D
    sub-double/2addr v2, p6

    mul-double/2addr v2, v0

    mul-double v6, v4, p6

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    return v2
.end method

.method static lineToARGB32(Lar/com/hjg/pngj/ImageLineByte;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[I)[I
    .locals 11
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineByte;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/PngChunkPLTE;
    .param p2, "trns"    # Lar/com/hjg/pngj/chunks/PngChunkTRNS;
    .param p3, "buf"    # [I

    .line 104
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    .line 105
    .local v0, "alphachannel":Z
    invoke-virtual {p0}, Lar/com/hjg/pngj/ImageLineByte;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v1

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    .line 106
    .local v1, "cols":I
    if-eqz p3, :cond_0

    array-length v2, p3

    if-ge v2, v1, :cond_1

    .line 107
    :cond_0
    new-array p3, v1, [I

    .line 109
    :cond_1
    invoke-virtual {p0}, Lar/com/hjg/pngj/ImageLineByte;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v2

    iget-boolean v2, v2, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    const/4 v3, 0x0

    const/16 v4, 0xff

    if-eqz v2, :cond_5

    .line 110
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getPalletteAlpha()[I

    move-result-object v2

    array-length v3, v2

    :cond_2
    move v2, v3

    .line 111
    .local v2, "nindexesWithAlpha":I
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 112
    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v5, v5, v3

    and-int/2addr v5, v4

    .line 113
    .local v5, "index":I
    invoke-virtual {p1, v5}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->getEntry(I)I

    move-result v6

    .line 114
    .local v6, "rgb":I
    if-ge v5, v2, :cond_3

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getPalletteAlpha()[I

    move-result-object v7

    aget v7, v7, v5

    goto :goto_1

    :cond_3
    move v7, v4

    .line 115
    .local v7, "alpha":I
    :goto_1
    shl-int/lit8 v8, v7, 0x18

    or-int/2addr v8, v6

    aput v8, p3, v3

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "nindexesWithAlpha":I
    .end local v3    # "c":I
    .end local v5    # "index":I
    .end local v6    # "rgb":I
    .end local v7    # "alpha":I
    :cond_4
    goto/16 :goto_6

    :cond_5
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v2, v2, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    const/4 v5, -0x1

    if-eqz v2, :cond_a

    .line 118
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getGray()I

    move-result v5

    :cond_6
    move v2, v5

    .line 119
    .local v2, "ga":I
    const/4 v5, 0x0

    .local v5, "c":I
    const/4 v6, 0x0

    .local v6, "c2":I
    :goto_2
    if-ge v5, v1, :cond_9

    .line 120
    iget-object v7, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "c2":I
    .local v8, "c2":I
    aget-byte v6, v7, v6

    and-int/2addr v6, v4

    .line 121
    .local v6, "g":I
    if-eqz v0, :cond_7

    iget-object v7, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "c2":I
    .local v9, "c2":I
    aget-byte v7, v7, v8

    and-int/2addr v7, v4

    move v8, v9

    goto :goto_3

    .end local v9    # "c2":I
    .restart local v8    # "c2":I
    :cond_7
    if-eq v6, v2, :cond_8

    move v7, v4

    goto :goto_3

    :cond_8
    move v7, v3

    .line 122
    .restart local v7    # "alpha":I
    :goto_3
    shl-int/lit8 v9, v7, 0x18

    or-int/2addr v9, v6

    shl-int/lit8 v10, v6, 0x8

    or-int/2addr v9, v10

    shl-int/lit8 v10, v6, 0x10

    or-int/2addr v9, v10

    aput v9, p3, v5

    .line 119
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_2

    .end local v5    # "c":I
    .end local v6    # "g":I
    .end local v7    # "alpha":I
    .end local v8    # "c2":I
    :cond_9
    goto :goto_6

    .line 125
    .end local v2    # "ga":I
    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getRGB888()I

    move-result v5

    :cond_b
    move v2, v5

    .line 126
    .restart local v2    # "ga":I
    const/4 v5, 0x0

    .restart local v5    # "c":I
    const/4 v6, 0x0

    .local v6, "c2":I
    :goto_4
    if-ge v5, v1, :cond_e

    .line 127
    iget-object v7, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "c2":I
    .restart local v8    # "c2":I
    aget-byte v6, v7, v6

    and-int/2addr v6, v4

    shl-int/lit8 v6, v6, 0x10

    iget-object v7, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "c2":I
    .restart local v9    # "c2":I
    aget-byte v7, v7, v8

    and-int/2addr v7, v4

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iget-object v7, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "c2":I
    .restart local v8    # "c2":I
    aget-byte v7, v7, v9

    and-int/2addr v7, v4

    or-int/2addr v6, v7

    .line 130
    .local v6, "rgb":I
    if-eqz v0, :cond_c

    iget-object v7, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "c2":I
    .restart local v9    # "c2":I
    aget-byte v7, v7, v8

    and-int/2addr v7, v4

    move v8, v9

    goto :goto_5

    .end local v9    # "c2":I
    .restart local v8    # "c2":I
    :cond_c
    if-eq v6, v2, :cond_d

    move v7, v4

    goto :goto_5

    :cond_d
    move v7, v3

    .line 131
    .restart local v7    # "alpha":I
    :goto_5
    shl-int/lit8 v9, v7, 0x18

    or-int/2addr v9, v6

    aput v9, p3, v5

    .line 126
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_4

    .line 134
    .end local v2    # "ga":I
    .end local v5    # "c":I
    .end local v6    # "rgb":I
    .end local v7    # "alpha":I
    .end local v8    # "c2":I
    :cond_e
    :goto_6
    return-object p3
.end method

.method static lineToRGB888(Lar/com/hjg/pngj/ImageLineByte;Lar/com/hjg/pngj/chunks/PngChunkPLTE;[B)[B
    .locals 10
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineByte;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/PngChunkPLTE;
    .param p2, "buf"    # [B

    .line 192
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    .line 193
    .local v0, "alphachannel":Z
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    .line 194
    .local v1, "cols":I
    mul-int/lit8 v2, v1, 0x3

    .line 195
    .local v2, "bytes":I
    if-eqz p2, :cond_0

    array-length v3, p2

    if-ge v3, v2, :cond_1

    .line 196
    :cond_0
    new-array p2, v2, [B

    .line 198
    :cond_1
    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 199
    .local v3, "rgb":[I
    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v4, v4, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 200
    const/4 v4, 0x0

    .local v4, "c":I
    const/4 v7, 0x0

    .local v7, "b":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 201
    iget-object v8, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v8, v8, v4

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {p1, v8, v3}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->getEntryRgb(I[I)V

    .line 202
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "b":I
    .local v8, "b":I
    aget v9, v3, v5

    int-to-byte v9, v9

    aput-byte v9, p2, v7

    .line 203
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "b":I
    .restart local v7    # "b":I
    aget v9, v3, v6

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    .line 204
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "b":I
    .restart local v8    # "b":I
    const/4 v9, 0x2

    aget v9, v3, v9

    int-to-byte v9, v9

    aput-byte v9, p2, v7

    .line 200
    add-int/lit8 v4, v4, 0x1

    move v7, v8

    goto :goto_0

    .end local v4    # "c":I
    .end local v8    # "b":I
    :cond_2
    goto :goto_3

    .line 206
    :cond_3
    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v4, v4, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v4, :cond_6

    .line 207
    const/4 v4, 0x0

    .restart local v4    # "c":I
    const/4 v5, 0x0

    .local v5, "b":I
    :goto_1
    if-ge v5, v2, :cond_5

    .line 208
    iget-object v6, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "c":I
    .local v7, "c":I
    aget-byte v4, v6, v4

    .line 209
    .local v4, "val":B
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "b":I
    .local v6, "b":I
    aput-byte v4, p2, v5

    .line 210
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "b":I
    .restart local v5    # "b":I
    aput-byte v4, p2, v6

    .line 211
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "b":I
    .restart local v6    # "b":I
    aput-byte v4, p2, v5

    .line 212
    if-eqz v0, :cond_4

    .line 213
    add-int/lit8 v5, v7, 0x1

    move v4, v5

    move v5, v6

    .end local v7    # "c":I
    .local v5, "c":I
    goto :goto_1

    .line 212
    .end local v5    # "c":I
    .restart local v7    # "c":I
    :cond_4
    move v5, v6

    move v4, v7

    goto :goto_1

    .line 213
    .end local v4    # "val":B
    .end local v6    # "b":I
    .end local v7    # "c":I
    :cond_5
    goto :goto_3

    .line 216
    :cond_6
    if-nez v0, :cond_7

    .line 217
    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    invoke-static {v4, v5, p2, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 219
    :cond_7
    const/4 v4, 0x0

    .local v4, "c":I
    const/4 v5, 0x0

    .local v5, "b":I
    :goto_2
    if-ge v5, v2, :cond_8

    .line 220
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "b":I
    .local v7, "b":I
    iget-object v8, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "c":I
    .local v9, "c":I
    aget-byte v4, v8, v4

    aput-byte v4, p2, v5

    .line 221
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "b":I
    .local v4, "b":I
    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "c":I
    .local v8, "c":I
    aget-byte v5, v5, v9

    aput-byte v5, p2, v7

    .line 222
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "b":I
    .restart local v5    # "b":I
    iget-object v7, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "c":I
    .restart local v9    # "c":I
    aget-byte v7, v7, v8

    aput-byte v7, p2, v4

    .line 223
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "c":I
    .local v4, "c":I
    goto :goto_2

    .line 227
    .end local v4    # "c":I
    .end local v5    # "b":I
    :cond_8
    :goto_3
    return-object p2
.end method

.method static lineToRGBA8888(Lar/com/hjg/pngj/ImageLineByte;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[B)[B
    .locals 12
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineByte;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/PngChunkPLTE;
    .param p2, "trns"    # Lar/com/hjg/pngj/chunks/PngChunkTRNS;
    .param p3, "buf"    # [B

    .line 141
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    .line 142
    .local v0, "alphachannel":Z
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    .line 143
    .local v1, "cols":I
    mul-int/lit8 v2, v1, 0x4

    .line 144
    .local v2, "bytes":I
    if-eqz p3, :cond_0

    array-length v3, p3

    if-ge v3, v2, :cond_1

    .line 145
    :cond_0
    new-array p3, v2, [B

    .line 148
    :cond_1
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v3, v3, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 149
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getPalletteAlpha()[I

    move-result-object v3

    array-length v4, v3

    :cond_2
    move v3, v4

    .line 150
    .local v3, "nindexesWithAlpha":I
    const/4 v4, 0x0

    .local v4, "c":I
    const/4 v5, 0x0

    .local v5, "b":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 151
    iget-object v6, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v6, v6, v4

    const/16 v7, 0xff

    and-int/2addr v6, v7

    .line 152
    .local v6, "index":I
    invoke-virtual {p1, v6}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->getEntry(I)I

    move-result v8

    .line 153
    .local v8, "rgb":I
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "b":I
    .local v9, "b":I
    shr-int/lit8 v10, v8, 0x10

    and-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    .line 154
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "b":I
    .restart local v5    # "b":I
    shr-int/lit8 v10, v8, 0x8

    and-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, p3, v9

    .line 155
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "b":I
    .restart local v9    # "b":I
    and-int/lit16 v10, v8, 0xff

    int-to-byte v10, v10

    aput-byte v10, p3, v5

    .line 156
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "b":I
    .restart local v5    # "b":I
    if-ge v6, v3, :cond_3

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getPalletteAlpha()[I

    move-result-object v7

    aget v7, v7, v6

    :cond_3
    int-to-byte v7, v7

    aput-byte v7, p3, v9

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .end local v3    # "nindexesWithAlpha":I
    .end local v4    # "c":I
    .end local v5    # "b":I
    .end local v6    # "index":I
    .end local v8    # "rgb":I
    :cond_4
    goto/16 :goto_5

    :cond_5
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v3, v3, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    const/4 v5, -0x1

    if-eqz v3, :cond_a

    .line 159
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getGray()I

    move-result v3

    goto :goto_1

    :cond_6
    move v3, v5

    .line 160
    .local v3, "ga":I
    :goto_1
    const/4 v6, 0x0

    .local v6, "c":I
    const/4 v7, 0x0

    .local v7, "b":I
    :goto_2
    if-ge v7, v2, :cond_9

    .line 161
    iget-object v8, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v9, v6, 0x1

    .end local v6    # "c":I
    .local v9, "c":I
    aget-byte v6, v8, v6

    .line 162
    .local v6, "val":B
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "b":I
    .local v8, "b":I
    aput-byte v6, p3, v7

    .line 163
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "b":I
    .restart local v7    # "b":I
    aput-byte v6, p3, v8

    .line 164
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "b":I
    .restart local v8    # "b":I
    aput-byte v6, p3, v7

    .line 165
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "b":I
    .restart local v7    # "b":I
    if-eqz v0, :cond_7

    iget-object v10, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v11, v9, 0x1

    .end local v9    # "c":I
    .local v11, "c":I
    aget-byte v9, v10, v9

    move v10, v9

    move v9, v11

    goto :goto_3

    .end local v11    # "c":I
    .restart local v9    # "c":I
    :cond_7
    and-int/lit16 v10, v6, 0xff

    if-ne v10, v3, :cond_8

    move v10, v4

    goto :goto_3

    :cond_8
    move v10, v5

    :goto_3
    aput-byte v10, p3, v8

    move v6, v9

    goto :goto_2

    .end local v6    # "val":B
    .end local v7    # "b":I
    .end local v9    # "c":I
    :cond_9
    goto :goto_5

    .line 169
    .end local v3    # "ga":I
    :cond_a
    if-eqz v0, :cond_b

    .line 170
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    invoke-static {v3, v4, p3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 172
    :cond_b
    const/4 v3, 0x0

    .local v3, "c":I
    const/4 v6, 0x0

    .local v6, "b":I
    :goto_4
    if-ge v6, v2, :cond_d

    .line 173
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "b":I
    .restart local v7    # "b":I
    iget-object v8, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "c":I
    .restart local v9    # "c":I
    aget-byte v3, v8, v3

    aput-byte v3, p3, v6

    .line 174
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "b":I
    .local v3, "b":I
    iget-object v6, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "c":I
    .local v8, "c":I
    aget-byte v6, v6, v9

    aput-byte v6, p3, v7

    .line 175
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "b":I
    .restart local v6    # "b":I
    iget-object v7, p0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "c":I
    .restart local v9    # "c":I
    aget-byte v7, v7, v8

    aput-byte v7, p3, v3

    .line 176
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "b":I
    .restart local v3    # "b":I
    aput-byte v5, p3, v6

    .line 177
    if-eqz p2, :cond_c

    add-int/lit8 v6, v3, -0x3

    aget-byte v6, p3, v6

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getRGB()[I

    move-result-object v7

    aget v7, v7, v4

    int-to-byte v7, v7

    if-ne v6, v7, :cond_c

    add-int/lit8 v6, v3, -0x2

    aget-byte v6, p3, v6

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getRGB()[I

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-byte v7, v7

    if-ne v6, v7, :cond_c

    add-int/lit8 v6, v3, -0x1

    aget-byte v6, p3, v6

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getRGB()[I

    move-result-object v7

    const/4 v8, 0x2

    aget v7, v7, v8

    int-to-byte v7, v7

    if-ne v6, v7, :cond_c

    .line 184
    add-int/lit8 v6, v3, -0x1

    aput-byte v4, p3, v6

    .line 172
    :cond_c
    move v6, v3

    move v3, v9

    goto :goto_4

    .line 188
    .end local v3    # "b":I
    .end local v9    # "c":I
    :cond_d
    :goto_5
    return-object p3
.end method

.method private static palette2rgb(Lar/com/hjg/pngj/IImageLine;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[IZ)[I
    .locals 16
    .param p0, "line"    # Lar/com/hjg/pngj/IImageLine;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/PngChunkPLTE;
    .param p2, "trns"    # Lar/com/hjg/pngj/chunks/PngChunkTRNS;
    .param p3, "buf"    # [I
    .param p4, "alphaForced"    # Z

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 250
    .local v4, "isalpha":Z
    :goto_0
    const/4 v5, 0x3

    if-eqz v4, :cond_1

    const/4 v6, 0x4

    goto :goto_1

    :cond_1
    move v6, v5

    .line 251
    .local v6, "channels":I
    :goto_1
    instance-of v7, v0, Lar/com/hjg/pngj/ImageLineInt;

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v8

    :goto_2
    check-cast v7, Lar/com/hjg/pngj/ImageLineInt;

    check-cast v7, Lar/com/hjg/pngj/ImageLineInt;

    .line 252
    .local v7, "linei":Lar/com/hjg/pngj/ImageLineInt;
    instance-of v9, v0, Lar/com/hjg/pngj/ImageLineByte;

    if-eqz v9, :cond_3

    move-object v8, v0

    :cond_3
    check-cast v8, Lar/com/hjg/pngj/ImageLineByte;

    check-cast v8, Lar/com/hjg/pngj/ImageLineByte;

    .line 253
    .local v8, "lineb":Lar/com/hjg/pngj/ImageLineByte;
    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    .line 254
    .local v2, "isbyte":Z
    :goto_3
    if-eqz v7, :cond_5

    iget-object v9, v7, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    goto :goto_4

    :cond_5
    iget-object v9, v8, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    :goto_4
    iget v9, v9, Lar/com/hjg/pngj/ImageInfo;->cols:I

    .line 255
    .local v9, "cols":I
    mul-int v10, v9, v6

    .line 256
    .local v10, "nsamples":I
    if-eqz v1, :cond_6

    array-length v11, v1

    if-ge v11, v10, :cond_7

    .line 257
    :cond_6
    new-array v1, v10, [I

    .line 258
    .end local p3    # "buf":[I
    .local v1, "buf":[I
    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getPalletteAlpha()[I

    move-result-object v3

    array-length v3, v3

    .line 259
    .local v3, "nindexesWithAlpha":I
    :cond_8
    const/4 v11, 0x0

    .local v11, "c":I
    :goto_5
    if-ge v11, v9, :cond_c

    .line 260
    const/16 v12, 0xff

    if-eqz v2, :cond_9

    iget-object v13, v8, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v13, v13, v11

    and-int/2addr v13, v12

    goto :goto_6

    :cond_9
    iget-object v13, v7, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v13, v13, v11

    .line 261
    .local v13, "index":I
    :goto_6
    mul-int v14, v11, v6

    move-object/from16 v15, p1

    invoke-virtual {v15, v13, v1, v14}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->getEntryRgb(I[II)V

    .line 262
    if-eqz v4, :cond_b

    .line 263
    if-ge v13, v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getPalletteAlpha()[I

    move-result-object v12

    aget v12, v12, v13

    .line 264
    .local v12, "alpha":I
    :cond_a
    mul-int v14, v11, v6

    add-int/2addr v14, v5

    aput v12, v1, v14

    .line 259
    .end local v12    # "alpha":I
    .end local v13    # "index":I
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_c
    move-object/from16 v15, p1

    .line 267
    .end local v11    # "c":I
    return-object v1
.end method

.method public static palette2rgb(Lar/com/hjg/pngj/ImageLineInt;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[I)[I
    .locals 1
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/PngChunkPLTE;
    .param p2, "trns"    # Lar/com/hjg/pngj/chunks/PngChunkTRNS;
    .param p3, "buf"    # [I

    .line 97
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lar/com/hjg/pngj/ImageLineHelper;->palette2rgb(Lar/com/hjg/pngj/IImageLine;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static palette2rgb(Lar/com/hjg/pngj/ImageLineInt;Lar/com/hjg/pngj/chunks/PngChunkPLTE;[I)[I
    .locals 2
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/PngChunkPLTE;
    .param p2, "buf"    # [I

    .line 244
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lar/com/hjg/pngj/ImageLineHelper;->palette2rgb(Lar/com/hjg/pngj/IImageLine;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static palette2rgba(Lar/com/hjg/pngj/ImageLineInt;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[I)[I
    .locals 1
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "pal"    # Lar/com/hjg/pngj/chunks/PngChunkPLTE;
    .param p2, "trns"    # Lar/com/hjg/pngj/chunks/PngChunkTRNS;
    .param p3, "buf"    # [I

    .line 240
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lar/com/hjg/pngj/ImageLineHelper;->palette2rgb(Lar/com/hjg/pngj/IImageLine;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static scaleDown(IB)B
    .locals 1
    .param p0, "bitdepth"    # I
    .param p1, "v"    # B

    .line 83
    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    rsub-int/lit8 v0, p0, 0x8

    shr-int v0, p1, v0

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public static scaleDown(Lar/com/hjg/pngj/IImageLineArray;)V
    .locals 5
    .param p0, "line"    # Lar/com/hjg/pngj/IImageLineArray;

    .line 61
    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v0

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_6

    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v0

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    goto :goto_3

    .line 63
    :cond_0
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v0, :cond_5

    .line 64
    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v0

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    sub-int/2addr v1, v0

    .line 65
    .local v1, "scalefactor":I
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v0, :cond_2

    .line 66
    move-object v0, p0

    check-cast v0, Lar/com/hjg/pngj/ImageLineInt;

    .line 67
    .local v0, "iline":Lar/com/hjg/pngj/ImageLineInt;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 68
    iget-object v3, v0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    iget-object v4, v0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v4, v4, v2

    shr-int/2addr v4, v1

    aput v4, v3, v2

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "iline":Lar/com/hjg/pngj/ImageLineInt;
    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 69
    :cond_2
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineByte;

    if-eqz v0, :cond_3

    .line 70
    move-object v0, p0

    check-cast v0, Lar/com/hjg/pngj/ImageLineByte;

    .line 71
    .local v0, "iline":Lar/com/hjg/pngj/ImageLineByte;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 72
    iget-object v3, v0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    iget-object v4, v0, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    .end local v0    # "iline":Lar/com/hjg/pngj/ImageLineByte;
    .end local v2    # "i":I
    :cond_3
    :goto_2
    nop

    .line 74
    .end local v1    # "scalefactor":I
    :cond_4
    nop

    .line 76
    return-void

    .line 75
    :cond_5
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_6
    :goto_3
    return-void
.end method

.method public static scaleUp(IB)B
    .locals 1
    .param p0, "bitdepth"    # I
    .param p1, "v"    # B

    .line 79
    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    sget-object v0, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK:[[I

    aget-object v0, v0, p0

    aget v0, v0, p1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public static scaleUp(Lar/com/hjg/pngj/IImageLineArray;)V
    .locals 5
    .param p0, "line"    # Lar/com/hjg/pngj/IImageLineArray;

    .line 40
    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v0

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_7

    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v0

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    goto :goto_3

    .line 42
    :cond_0
    sget-object v0, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK_1:[I

    if-eqz v0, :cond_1

    sget-object v0, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK:[[I

    if-nez v0, :cond_2

    .line 43
    :cond_1
    invoke-static {}, Lar/com/hjg/pngj/ImageLineHelper;->initDepthScale()V

    .line 44
    :cond_2
    sget-object v0, Lar/com/hjg/pngj/ImageLineHelper;->DEPTH_UNPACK:[[I

    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v1

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    aget-object v0, v0, v1

    .line 45
    .local v0, "scaleArray":[I
    instance-of v1, p0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v1, :cond_4

    .line 46
    move-object v1, p0

    check-cast v1, Lar/com/hjg/pngj/ImageLineInt;

    .line 47
    .local v1, "iline":Lar/com/hjg/pngj/ImageLineInt;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lar/com/hjg/pngj/ImageLineInt;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 48
    iget-object v3, v1, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    iget-object v4, v1, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v4, v4, v2

    aget v4, v0, v4

    aput v4, v3, v2

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "iline":Lar/com/hjg/pngj/ImageLineInt;
    .end local v2    # "i":I
    :cond_3
    goto :goto_2

    :cond_4
    instance-of v1, p0, Lar/com/hjg/pngj/ImageLineByte;

    if-eqz v1, :cond_6

    .line 50
    move-object v1, p0

    check-cast v1, Lar/com/hjg/pngj/ImageLineByte;

    .line 51
    .local v1, "iline":Lar/com/hjg/pngj/ImageLineByte;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v1}, Lar/com/hjg/pngj/ImageLineByte;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 52
    iget-object v3, v1, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    iget-object v4, v1, Lar/com/hjg/pngj/ImageLineByte;->scanline:[B

    aget-byte v4, v4, v2

    aget v4, v0, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .end local v1    # "iline":Lar/com/hjg/pngj/ImageLineByte;
    .end local v2    # "i":I
    :cond_5
    nop

    .line 55
    :goto_2
    return-void

    .line 54
    :cond_6
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    const-string v2, "not implemented"

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    .end local v0    # "scaleArray":[I
    :cond_7
    :goto_3
    return-void
.end method

.method public static setPixelRGB8(Lar/com/hjg/pngj/ImageLineInt;II)V
    .locals 3
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "col"    # I
    .param p2, "rgb"    # I

    .line 334
    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p2, 0xff

    invoke-static {p0, p1, v0, v1, v2}, Lar/com/hjg/pngj/ImageLineHelper;->setPixelRGB8(Lar/com/hjg/pngj/ImageLineInt;IIII)V

    .line 335
    return-void
.end method

.method public static setPixelRGB8(Lar/com/hjg/pngj/ImageLineInt;IIII)V
    .locals 2
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "col"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 327
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr p1, v0

    .line 328
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "col":I
    .local v1, "col":I
    aput p2, v0, p1

    .line 329
    iget-object p1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "col":I
    .local v0, "col":I
    aput p3, p1, v1

    .line 330
    iget-object p1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aput p4, p1, v0

    .line 331
    return-void
.end method

.method public static setPixelRGBA8(Lar/com/hjg/pngj/ImageLineInt;II)V
    .locals 7
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "col"    # I
    .param p2, "rgb"    # I

    .line 355
    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v3, v0, 0xff

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v5, p2, 0xff

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v6, v0, 0xff

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lar/com/hjg/pngj/ImageLineHelper;->setPixelRGBA8(Lar/com/hjg/pngj/ImageLineInt;IIIII)V

    .line 356
    return-void
.end method

.method public static setPixelRGBA8(Lar/com/hjg/pngj/ImageLineInt;IIIII)V
    .locals 2
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "col"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I
    .param p5, "a"    # I

    .line 347
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr p1, v0

    .line 348
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "col":I
    .local v1, "col":I
    aput p2, v0, p1

    .line 349
    iget-object p1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "col":I
    .local v0, "col":I
    aput p3, p1, v1

    .line 350
    iget-object p1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "col":I
    .restart local v1    # "col":I
    aput p4, p1, v0

    .line 351
    iget-object p1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aput p5, p1, v1

    .line 352
    return-void
.end method

.method public static setPixelsRGB8(Lar/com/hjg/pngj/ImageLineInt;[I)V
    .locals 5
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "rgb"    # [I

    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->cols:I

    if-ge v0, v2, :cond_0

    .line 320
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v1

    .line 321
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .local v2, "j":I
    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    .line 322
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    aget v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v2

    .line 319
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    .line 324
    .end local v0    # "i":I
    .end local v3    # "j":I
    :cond_0
    return-void
.end method

.method public static setPixelsRGBA8(Lar/com/hjg/pngj/ImageLineInt;[I)V
    .locals 5
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "rgb"    # [I

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->cols:I

    if-ge v0, v2, :cond_0

    .line 339
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v1

    .line 340
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .local v2, "j":I
    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    .line 341
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    aget v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v2

    .line 342
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    .line 338
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 344
    .end local v0    # "i":I
    .end local v2    # "j":I
    :cond_0
    return-void
.end method

.method public static setValD(Lar/com/hjg/pngj/ImageLineInt;ID)V
    .locals 2
    .param p0, "line"    # Lar/com/hjg/pngj/ImageLineInt;
    .param p1, "i"    # I
    .param p2, "d"    # D

    .line 359
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    invoke-static {p0, p2, p3}, Lar/com/hjg/pngj/ImageLineHelper;->double2int(Lar/com/hjg/pngj/ImageLineInt;D)I

    move-result v1

    aput v1, v0, p1

    .line 360
    return-void
.end method
