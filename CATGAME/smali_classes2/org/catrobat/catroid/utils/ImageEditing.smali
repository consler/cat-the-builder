.class public final Lorg/catrobat/catroid/utils/ImageEditing;
.super Ljava/lang/Object;
.source "ImageEditing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;
    }
.end annotation


# static fields
.field private static final JPG_COMPRESSION_SETTING:I = 0x5f

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/catrobat/catroid/utils/ImageEditing;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/utils/ImageEditing;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static calculateInSampleSize(IIII)I
    .locals 4
    .param p0, "origWidth"    # I
    .param p1, "origHeight"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .line 170
    const/4 v0, 0x1

    .line 172
    .local v0, "inSampleSize":I
    if-gt p1, p3, :cond_0

    if-le p0, p2, :cond_1

    .line 173
    :cond_0
    div-int/lit8 v1, p1, 0x2

    .line 174
    .local v1, "halfHeight":I
    div-int/lit8 v2, p0, 0x2

    .line 176
    .local v2, "halfWidth":I
    :goto_0
    div-int v3, v1, v0

    if-le v3, p3, :cond_1

    div-int v3, v2, v0

    if-le v3, p2, :cond_1

    .line 178
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 181
    .end local v1    # "halfHeight":I
    .end local v2    # "halfWidth":I
    :cond_1
    return v0
.end method

.method public static calculateScaleFactor(IIII)D
    .locals 6
    .param p0, "originalWidth"    # I
    .param p1, "originalHeight"    # I
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I

    .line 160
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 163
    int-to-double v0, p2

    int-to-double v2, p0

    div-double/2addr v0, v2

    .line 164
    .local v0, "widthScaleFactor":D
    int-to-double v2, p3

    int-to-double v4, p1

    div-double/2addr v2, v4

    .line 166
    .local v2, "heightScaleFactor":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    return-wide v4

    .line 161
    .end local v0    # "widthScaleFactor":D
    .end local v2    # "heightScaleFactor":D
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One or more values are 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getImageDimensions(Ljava/lang/String;)[I
    .locals 5
    .param p0, "imagePath"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 99
    .local v0, "imageDimensions":[I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 100
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 101
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 103
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 104
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v3, v0, v2

    .line 106
    return-object v0
.end method

.method public static getScaledBitmapFromPath(Ljava/lang/String;IILorg/catrobat/catroid/utils/ImageEditing$ResizeType;Z)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "imagePath"    # Ljava/lang/String;
    .param p1, "outputRectangleWidth"    # I
    .param p2, "outputRectangleHeight"    # I
    .param p3, "resizeType"    # Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;
    .param p4, "justScaleDown"    # Z

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    invoke-static {p0}, Lorg/catrobat/catroid/utils/ImageEditing;->getImageDimensions(Ljava/lang/String;)[I

    move-result-object v0

    .line 77
    .local v0, "imageDimensions":[I
    const/4 v1, 0x0

    aget v8, v0, v1

    .line 78
    .local v8, "originalWidth":I
    const/4 v9, 0x1

    aget v10, v0, v9

    .line 80
    .local v10, "originalHeight":I
    move v2, v8

    move v3, v10

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lorg/catrobat/catroid/utils/ImageEditing;->getScaledImageDimensions(IIIILorg/catrobat/catroid/utils/ImageEditing$ResizeType;Z)[I

    move-result-object v2

    .line 82
    .local v2, "scaledImageDimensions":[I
    aget v3, v2, v1

    .line 83
    .local v3, "newWidth":I
    aget v4, v2, v9

    .line 85
    .local v4, "newHeight":I
    invoke-static {v8, v10, p1, p2}, Lorg/catrobat/catroid/utils/ImageEditing;->calculateInSampleSize(IIII)I

    move-result v5

    .line 88
    .local v5, "loadingSampleSize":I
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v6, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    iput v5, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 90
    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    invoke-static {p0, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 93
    .local v1, "tempBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, v3, v4}, Lorg/catrobat/catroid/utils/ImageEditing;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7
.end method

.method private static getScaledImageDimensions(IIIILorg/catrobat/catroid/utils/ImageEditing$ResizeType;Z)[I
    .locals 16
    .param p0, "originalWidth"    # I
    .param p1, "originalHeight"    # I
    .param p2, "outputRectangleWidth"    # I
    .param p3, "outputRectangleHeight"    # I
    .param p4, "resizeType"    # Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;
    .param p5, "justScaleDown"    # Z

    .line 112
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p0

    .line 113
    .local v5, "newWidth":I
    move/from16 v6, p1

    .line 115
    .local v6, "newHeight":I
    int-to-double v7, v0

    int-to-double v9, v2

    div-double/2addr v7, v9

    .line 116
    .local v7, "sampleSizeWidth":D
    int-to-double v9, v1

    int-to-double v11, v3

    div-double/2addr v9, v11

    .line 117
    .local v9, "sampleSizeHeight":D
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    .line 118
    .local v11, "sampleSizeMinimum":D
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    .line 120
    .local v13, "sampleSizeMaximum":D
    if-eqz p5, :cond_0

    if-ge v1, v3, :cond_0

    if-lt v0, v2, :cond_3

    .line 121
    :cond_0
    sget-object v15, Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;->STRETCH_TO_RECTANGLE:Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;

    if-ne v4, v15, :cond_1

    .line 122
    move/from16 v5, p2

    .line 123
    move/from16 v6, p3

    goto :goto_0

    .line 124
    :cond_1
    sget-object v15, Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;->STAY_IN_RECTANGLE_WITH_SAME_ASPECT_RATIO:Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;

    if-ne v4, v15, :cond_2

    .line 125
    int-to-double v2, v0

    div-double/2addr v2, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v5, v2

    .line 126
    int-to-double v2, v1

    div-double/2addr v2, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v6, v2

    goto :goto_0

    .line 127
    :cond_2
    sget-object v2, Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;->FILL_RECTANGLE_WITH_SAME_ASPECT_RATIO:Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;

    if-ne v4, v2, :cond_3

    .line 128
    int-to-double v2, v0

    div-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v5, v2

    .line 129
    int-to-double v2, v1

    div-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v6, v2

    .line 132
    :cond_3
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 133
    .local v2, "scaledImageDimensions":[I
    const/4 v3, 0x0

    aput v5, v2, v3

    .line 134
    const/4 v3, 0x1

    aput v6, v2, v3

    .line 135
    return-object v2
.end method

.method public static isPixelTransparent([IIII)Z
    .locals 1
    .param p0, "pixels"    # [I
    .param p1, "width"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 251
    mul-int v0, p3, p1

    add-int/2addr v0, p2

    aget v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static readMetaDataStringFromPNG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "absolutePath"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lar/com/hjg/pngj/PngjException;
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "image":Ljava/io/File;
    new-instance v1, Lar/com/hjg/pngj/PngReader;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngReader;-><init>(Ljava/io/File;)V

    .line 208
    .local v1, "pngr":Lar/com/hjg/pngj/PngReader;
    invoke-virtual {v1}, Lar/com/hjg/pngj/PngReader;->readSkippingAllRows()V

    .line 209
    invoke-virtual {v1}, Lar/com/hjg/pngj/PngReader;->getChunksList()Lar/com/hjg/pngj/chunks/ChunksList;

    move-result-object v2

    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/ChunksList;->getChunks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 210
    .local v3, "c":Lar/com/hjg/pngj/chunks/PngChunk;
    invoke-static {v3}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isText(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    goto :goto_0

    .line 213
    :cond_0
    move-object v4, v3

    check-cast v4, Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    .line 214
    .local v4, "ct":Lar/com/hjg/pngj/chunks/PngChunkTextVar;
    invoke-virtual {v4}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "k":Ljava/lang/String;
    invoke-virtual {v4}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->getVal()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "val":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 217
    invoke-virtual {v1}, Lar/com/hjg/pngj/PngReader;->close()V

    .line 218
    return-object v6

    .line 220
    .end local v3    # "c":Lar/com/hjg/pngj/chunks/PngChunk;
    .end local v4    # "ct":Lar/com/hjg/pngj/chunks/PngChunkTextVar;
    .end local v5    # "k":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {v1}, Lar/com/hjg/pngj/PngReader;->close()V

    .line 222
    const-string v2, ""

    return-object v2
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rotationDegree"    # I

    .line 139
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 140
    .local v0, "rotateMatrix":Landroid/graphics/Matrix;
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static saveBitmapToImageFile(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p0, "outputFile"    # Ljava/io/File;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 185
    const-string v0, "Could not close OutputStream."

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 187
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    .line 189
    :cond_1
    :goto_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 193
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 197
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lorg/catrobat/catroid/utils/ImageEditing;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 201
    :goto_2
    goto :goto_3

    .line 199
    :catch_1
    move-exception v2

    .line 200
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v3, Lorg/catrobat/catroid/utils/ImageEditing;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 203
    :goto_3
    return-void

    .line 198
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 201
    goto :goto_5

    .line 199
    :catch_2
    move-exception v3

    .line 200
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lorg/catrobat/catroid/utils/ImageEditing;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    throw v2
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "xSize"    # I
    .param p2, "ySize"    # I

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    .local v0, "matrix":Landroid/graphics/Matrix;
    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v1, v2

    .line 66
    .local v8, "scaleWidth":F
    int-to-float v1, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 67
    .local v9, "scaleHeight":F
    invoke-virtual {v0, v8, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 68
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static scaleImageFile(Ljava/io/File;D)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "scaleFactor"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lorg/catrobat/catroid/utils/ImageEditing;->getImageDimensions(Ljava/lang/String;)[I

    move-result-object v1

    .line 147
    .local v1, "originalBackgroundImageDimensions":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-double v3, v3

    mul-double/2addr v3, p1

    double-to-int v3, v3

    invoke-static {p0, v2, v3}, Lorg/catrobat/catroid/utils/ImageEditing;->scaleImageFile(Ljava/io/File;II)V

    .line 150
    return-void
.end method

.method public static scaleImageFile(Ljava/io/File;II)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;->FILL_RECTANGLE_WITH_SAME_ASPECT_RATIO:Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/utils/ImageEditing;->getScaledBitmapFromPath(Ljava/lang/String;IILorg/catrobat/catroid/utils/ImageEditing$ResizeType;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 156
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0, v1}, Lorg/catrobat/catroid/utils/ImageEditing;->saveBitmapToImageFile(Ljava/io/File;Landroid/graphics/Bitmap;)V

    .line 157
    return-void
.end method

.method public static declared-synchronized writeMetaDataStringToPNG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "absolutePath"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    const-class v0, Lorg/catrobat/catroid/utils/ImageEditing;

    monitor-enter v0

    .line 226
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "___temp.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "tempFilename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v2, "oldFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v3, "newFile":Ljava/io/File;
    new-instance v4, Lar/com/hjg/pngj/PngReader;

    invoke-direct {v4, v2}, Lar/com/hjg/pngj/PngReader;-><init>(Ljava/io/File;)V

    .line 232
    .local v4, "pngr":Lar/com/hjg/pngj/PngReader;
    new-instance v5, Lar/com/hjg/pngj/PngWriter;

    iget-object v6, v4, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    const/4 v7, 0x1

    invoke-direct {v5, v3, v6, v7}, Lar/com/hjg/pngj/PngWriter;-><init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;Z)V

    .line 233
    .local v5, "pngw":Lar/com/hjg/pngj/PngWriter;
    invoke-virtual {v4}, Lar/com/hjg/pngj/PngReader;->getChunksList()Lar/com/hjg/pngj/chunks/ChunksList;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lar/com/hjg/pngj/PngWriter;->copyChunksFrom(Lar/com/hjg/pngj/chunks/ChunksList;I)V

    .line 234
    invoke-virtual {v5}, Lar/com/hjg/pngj/PngWriter;->getMetadata()Lar/com/hjg/pngj/chunks/PngMetadata;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lar/com/hjg/pngj/chunks/PngMetadata;->setText(Ljava/lang/String;Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    .line 235
    const/4 v6, 0x0

    .local v6, "row":I
    :goto_0
    iget-object v7, v4, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v7, v7, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ge v6, v7, :cond_0

    .line 236
    invoke-virtual {v4}, Lar/com/hjg/pngj/PngReader;->readRow()Lar/com/hjg/pngj/IImageLine;

    move-result-object v7

    .line 237
    .local v7, "l1":Lar/com/hjg/pngj/IImageLine;
    invoke-virtual {v5, v7}, Lar/com/hjg/pngj/PngWriter;->writeRow(Lar/com/hjg/pngj/IImageLine;)V

    .line 235
    .end local v7    # "l1":Lar/com/hjg/pngj/IImageLine;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 239
    .end local v6    # "row":I
    :cond_0
    invoke-virtual {v4}, Lar/com/hjg/pngj/PngReader;->end()V

    .line 240
    invoke-virtual {v5}, Lar/com/hjg/pngj/PngWriter;->end()V

    .line 242
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 243
    sget-object v6, Lorg/catrobat/catroid/utils/ImageEditing;->TAG:Ljava/lang/String;

    const-string v7, "writeMetaDataStringToPNG: Failed to delete old file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 246
    sget-object v6, Lorg/catrobat/catroid/utils/ImageEditing;->TAG:Ljava/lang/String;

    const-string v7, "writeMetaDataStringToPNG: Failed to rename new file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_2
    monitor-exit v0

    return-void

    .line 225
    .end local v1    # "tempFilename":Ljava/lang/String;
    .end local v2    # "oldFile":Ljava/io/File;
    .end local v3    # "newFile":Ljava/io/File;
    .end local v4    # "pngr":Lar/com/hjg/pngj/PngReader;
    .end local v5    # "pngw":Lar/com/hjg/pngj/PngWriter;
    .end local p0    # "absolutePath":Ljava/lang/String;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
