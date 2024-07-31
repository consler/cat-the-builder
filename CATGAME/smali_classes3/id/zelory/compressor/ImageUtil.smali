.class Lid/zelory/compressor/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 76
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 77
    .local v0, "height":I
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 78
    .local v1, "width":I
    const/4 v2, 0x1

    .line 80
    .local v2, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v1, p1, :cond_1

    .line 82
    :cond_0
    div-int/lit8 v3, v0, 0x2

    .line 83
    .local v3, "halfHeight":I
    div-int/lit8 v4, v1, 0x2

    .line 87
    .local v4, "halfWidth":I
    :goto_0
    div-int v5, v3, v2

    if-lt v5, p2, :cond_1

    div-int v5, v4, v2

    if-lt v5, p1, :cond_1

    .line 88
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 92
    .end local v3    # "halfHeight":I
    .end local v4    # "halfWidth":I
    :cond_1
    return v2
.end method

.method static compressImage(Ljava/io/File;IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "imageFile"    # Ljava/io/File;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "quality"    # I
    .param p5, "destinationPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 27
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 31
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 33
    invoke-static {p0, p1, p2}, Lid/zelory/compressor/ImageUtil;->decodeSampledBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, p3, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    nop

    .line 36
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 37
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 41
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 35
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 37
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 39
    :cond_1
    throw v2
.end method

.method static decodeSampledBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "imageFile"    # Ljava/io/File;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 51
    invoke-static {v0, p1, p2}, Lid/zelory/compressor/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 60
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    .line 61
    .local v10, "exif":Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    invoke-virtual {v10, v3, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 62
    .local v1, "orientation":I
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move-object v11, v3

    .line 63
    .local v11, "matrix":Landroid/graphics/Matrix;
    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 64
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 65
    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 66
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 67
    :cond_1
    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 68
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 70
    :cond_2
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object v3, v2

    move-object v8, v11

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 71
    return-object v2
.end method
