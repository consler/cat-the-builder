.class public Lorg/catrobat/catroid/embroidery/DSTStitchPoint;
.super Ljava/lang/Object;
.source "DSTStitchPoint.java"

# interfaces
.implements Lorg/catrobat/catroid/embroidery/StitchPoint;


# instance fields
.field private color:Lcom/badlogic/gdx/graphics/Color;

.field private colorChangePoint:Z

.field private jumpPoint:Z

.field private relativeX:I

.field private relativeY:I

.field private xCoord:F

.field private yCoord:F


# direct methods
.method public constructor <init>(FFLcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->jumpPoint:Z

    .line 40
    iput-boolean v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->colorChangePoint:Z

    .line 44
    iput p1, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->xCoord:F

    .line 45
    iput p2, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->yCoord:F

    .line 46
    iput-object p3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 47
    return-void
.end method

.method private mapToConversionTable(I)I
    .locals 2
    .param p1, "value"    # I

    .line 102
    sget-object v0, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->CONVERSION_TABLE:[I

    if-gez p1, :cond_0

    mul-int/lit8 v1, p1, -0x1

    add-int/lit8 v1, v1, 0x79

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    aget v0, v0, p1

    :goto_0
    return v0
.end method

.method private setDSTPointBytes()[B
    .locals 9

    .line 107
    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 108
    .local v1, "dstPointBytes":[B
    iget v2, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->relativeX:I

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->mapToConversionTable(I)I

    move-result v2

    .line 109
    .local v2, "xValue":I
    iget v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->relativeY:I

    invoke-direct {p0, v3}, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->mapToConversionTable(I)I

    move-result v3

    .line 111
    .local v3, "yValue":I
    and-int/lit8 v4, v3, 0x1

    shl-int/2addr v4, v0

    and-int/lit8 v5, v3, 0x2

    const/4 v6, 0x1

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x10

    ushr-int/2addr v5, v0

    or-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x20

    ushr-int/lit8 v5, v5, 0x5

    or-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x4

    int-to-char v4, v4

    .line 113
    .local v4, "yPart":C
    ushr-int/lit8 v5, v2, 0x2

    and-int/lit8 v5, v5, 0xc

    and-int/lit8 v7, v2, 0x3

    or-int/2addr v5, v7

    int-to-char v5, v5

    .line 114
    .local v5, "xPart":C
    or-int v7, v4, v5

    int-to-byte v7, v7

    const/4 v8, 0x0

    aput-byte v7, v1, v8

    .line 116
    and-int/lit8 v7, v3, 0x4

    shl-int/2addr v7, v6

    and-int/lit8 v8, v3, 0x8

    ushr-int/2addr v8, v6

    or-int/2addr v7, v8

    and-int/lit8 v8, v3, 0x40

    ushr-int/lit8 v8, v8, 0x5

    or-int/2addr v7, v8

    and-int/lit16 v8, v3, 0x80

    ushr-int/lit8 v8, v8, 0x7

    or-int/2addr v7, v8

    shl-int/lit8 v7, v7, 0x4

    int-to-char v4, v7

    .line 118
    ushr-int/lit8 v7, v2, 0x4

    and-int/lit8 v7, v7, 0xc

    ushr-int/lit8 v8, v2, 0x2

    and-int/2addr v0, v8

    or-int/2addr v0, v7

    int-to-char v0, v0

    .line 119
    .end local v5    # "xPart":C
    .local v0, "xPart":C
    or-int v5, v4, v0

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    .line 121
    ushr-int/lit8 v5, v3, 0x5

    and-int/lit8 v5, v5, 0x10

    ushr-int/lit8 v6, v3, 0x3

    and-int/lit8 v6, v6, 0x20

    or-int/2addr v5, v6

    int-to-char v4, v5

    .line 122
    ushr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0xc

    int-to-char v0, v5

    .line 123
    const/4 v5, 0x2

    aget-byte v6, v1, v5

    or-int/2addr v6, v4

    or-int/2addr v6, v0

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 124
    iget-boolean v6, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->jumpPoint:Z

    if-eqz v6, :cond_0

    .line 125
    aget-byte v6, v1, v5

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 127
    :cond_0
    iget-boolean v6, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->colorChangePoint:Z

    if-eqz v6, :cond_1

    .line 128
    aget-byte v6, v1, v5

    int-to-char v6, v6

    or-int/lit8 v6, v6, 0x40

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 130
    :cond_1
    return-object v1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x3t
    .end array-data
.end method


# virtual methods
.method public appendToStream(Ljava/io/FileOutputStream;)V
    .locals 1
    .param p1, "fileStream"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->setDSTPointBytes()[B

    move-result-object v0

    .line 67
    .local v0, "dstPointBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 68
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 140
    instance-of v0, p1, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 141
    return v1

    .line 143
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;

    .line 144
    .local v0, "stitchPoint":Lorg/catrobat/catroid/embroidery/DSTStitchPoint;
    invoke-virtual {v0}, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->getX()F

    move-result v2

    iget v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->xCoord:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->getY()F

    move-result v2

    iget v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->yCoord:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->isConnectingPoint()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->isConnectingPoint()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 51
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->xCoord:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 56
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->yCoord:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 149
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->xCoord:F

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0x3fff

    .line 150
    .local v0, "xPart":I
    iget v1, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->yCoord:F

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0x3fff

    shl-int/lit8 v1, v1, 0xf

    .line 151
    .local v1, "yPart":I
    const/4 v2, 0x0

    .line 152
    .local v2, "typePart":I
    iget-boolean v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->jumpPoint:Z

    if-eqz v3, :cond_0

    .line 153
    const/high16 v2, 0x20000000

    .line 155
    :cond_0
    iget-boolean v3, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->colorChangePoint:Z

    if-eqz v3, :cond_1

    .line 156
    const/high16 v2, 0x60000000

    .line 158
    :cond_1
    or-int v3, v0, v1

    or-int/2addr v3, v2

    return v3
.end method

.method public isColorChangePoint()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->colorChangePoint:Z

    return v0
.end method

.method public isConnectingPoint()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->jumpPoint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->colorChangePoint:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isJumpPoint()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->jumpPoint:Z

    return v0
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 87
    iput-object p1, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 88
    return-void
.end method

.method public setColorChange(Z)V
    .locals 0
    .param p1, "colorChangePoint"    # Z

    .line 82
    iput-boolean p1, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->colorChangePoint:Z

    .line 83
    return-void
.end method

.method public setJump(Z)V
    .locals 0
    .param p1, "jumpPoint"    # Z

    .line 72
    iput-boolean p1, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->jumpPoint:Z

    .line 73
    return-void
.end method

.method public setRelativeCoordinatesToPreviousPoint(FF)V
    .locals 2
    .param p1, "previousX"    # F
    .param p2, "previousY"    # F

    .line 97
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->xCoord:F

    invoke-static {v0}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v0

    invoke-static {p1}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->relativeX:I

    .line 98
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->yCoord:F

    invoke-static {v0}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v0

    invoke-static {p2}, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->toEmbroideryUnit(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/embroidery/DSTStitchPoint;->relativeY:I

    .line 99
    return-void
.end method
