.class public final Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# static fields
.field private static final DEFAULT_MAX_BITMAP_DIMENSION:I = 0x800

.field private static maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 40
    .local v0, "maxTextureSize":[I
    const/16 v1, 0xd33

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 41
    aget v1, v0, v2

    const/16 v2, 0x800

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 42
    .local v1, "maxBitmapDimension":I
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v2, v1, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    sput-object v2, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 43
    .end local v0    # "maxTextureSize":[I
    .end local v1    # "maxBitmapDimension":I
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
    .locals 9
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "powerOf2Scale"    # Z

    .line 92
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    .line 93
    .local v0, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    .line 94
    .local v1, "srcHeight":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v2

    .line 95
    .local v2, "targetWidth":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    .line 97
    .local v3, "targetHeight":I
    const/4 v4, 0x1

    .line 99
    .local v4, "scale":I
    sget-object v5, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$nostra13$universalimageloader$core$assist$ViewScaleType:[I

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    goto :goto_3

    .line 112
    :cond_0
    if-eqz p3, :cond_2

    .line 113
    div-int/lit8 v5, v0, 0x2

    .line 114
    .local v5, "halfWidth":I
    div-int/lit8 v7, v1, 0x2

    .line 115
    .local v7, "halfHeight":I
    :goto_0
    div-int v8, v5, v4

    if-le v8, v2, :cond_1

    div-int v8, v7, v4

    if-le v8, v3, :cond_1

    .line 116
    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 118
    .end local v5    # "halfWidth":I
    .end local v7    # "halfHeight":I
    :cond_1
    goto :goto_3

    .line 119
    :cond_2
    div-int v5, v0, v2

    div-int v7, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_3

    .line 101
    :cond_3
    if-eqz p3, :cond_6

    .line 102
    div-int/lit8 v5, v0, 0x2

    .line 103
    .restart local v5    # "halfWidth":I
    div-int/lit8 v7, v1, 0x2

    .line 104
    .restart local v7    # "halfHeight":I
    :goto_1
    div-int v8, v5, v4

    if-gt v8, v2, :cond_5

    div-int v8, v7, v4

    if-le v8, v3, :cond_4

    goto :goto_2

    .line 107
    .end local v5    # "halfWidth":I
    .end local v7    # "halfHeight":I
    :cond_4
    goto :goto_3

    .line 105
    .restart local v5    # "halfWidth":I
    .restart local v7    # "halfHeight":I
    :cond_5
    :goto_2
    mul-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 108
    .end local v5    # "halfWidth":I
    .end local v7    # "halfHeight":I
    :cond_6
    div-int v5, v0, v2

    div-int v7, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 110
    nop

    .line 124
    :goto_3
    if-ge v4, v6, :cond_7

    .line 125
    const/4 v4, 0x1

    .line 127
    :cond_7
    invoke-static {v0, v1, v4, p3}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->considerMaxTextureSize(IIIZ)I

    move-result v4

    .line 129
    return v4
.end method

.method public static computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
    .locals 11
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "stretch"    # Z

    .line 190
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    .line 191
    .local v0, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    .line 192
    .local v1, "srcHeight":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v2

    .line 193
    .local v2, "targetWidth":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    .line 195
    .local v3, "targetHeight":I
    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 196
    .local v4, "widthScale":F
    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 200
    .local v5, "heightScale":F
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v6, :cond_0

    cmpl-float v6, v4, v5

    if-gez v6, :cond_1

    :cond_0
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v6, :cond_2

    cmpg-float v6, v4, v5

    if-gez v6, :cond_2

    .line 201
    :cond_1
    move v6, v2

    .line 202
    .local v6, "destWidth":I
    int-to-float v7, v1

    div-float/2addr v7, v4

    float-to-int v7, v7

    .local v7, "destHeight":I
    goto :goto_0

    .line 204
    .end local v6    # "destWidth":I
    .end local v7    # "destHeight":I
    :cond_2
    int-to-float v6, v0

    div-float/2addr v6, v5

    float-to-int v6, v6

    .line 205
    .restart local v6    # "destWidth":I
    move v7, v3

    .line 208
    .restart local v7    # "destHeight":I
    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    .line 209
    .local v8, "scale":F
    if-nez p3, :cond_3

    if-ge v6, v0, :cond_3

    if-lt v7, v1, :cond_4

    :cond_3
    if-eqz p3, :cond_5

    if-eq v6, v0, :cond_5

    if-eq v7, v1, :cond_5

    .line 210
    :cond_4
    int-to-float v9, v6

    int-to-float v10, v0

    div-float v8, v9, v10

    .line 213
    :cond_5
    return v8
.end method

.method public static computeMinImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;)I
    .locals 7
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 155
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    .line 156
    .local v0, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    .line 157
    .local v1, "srcHeight":I
    sget-object v2, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v2

    .line 158
    .local v2, "targetWidth":I
    sget-object v3, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    .line 160
    .local v3, "targetHeight":I
    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 161
    .local v4, "widthScale":I
    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 163
    .local v5, "heightScale":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    return v6
.end method

.method private static considerMaxTextureSize(IIIZ)I
    .locals 3
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "scale"    # I
    .param p3, "powerOf2"    # Z

    .line 133
    sget-object v0, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    .line 134
    .local v0, "maxWidth":I
    sget-object v1, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    .line 135
    .local v1, "maxHeight":I
    :goto_0
    div-int v2, p0, p2

    if-gt v2, v0, :cond_1

    div-int v2, p1, p2

    if-le v2, v1, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    return p2

    .line 136
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 137
    mul-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 139
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 3
    .param p0, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p1, "maxImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 54
    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWidth()I

    move-result v0

    .line 55
    .local v0, "width":I
    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    .line 57
    :cond_0
    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getHeight()I

    move-result v1

    .line 58
    .local v1, "height":I
    if-gtz v1, :cond_1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    .line 60
    :cond_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v2, v0, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v2
.end method
