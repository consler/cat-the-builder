.class Lid/zelory/compressor/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .line 76
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 77
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_1

    .line 82
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 83
    div-int/lit8 p0, p0, 0x2

    .line 87
    :goto_0
    div-int v2, v0, v1

    if-lt v2, p2, :cond_1

    div-int v2, p0, v1

    if-lt v2, p1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method static compressImage(Ljava/io/File;IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v0, 0x0

    .line 31
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-static {p0, p1, p2}, Lid/zelory/compressor/ImageUtil;->decodeSampledBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0, p3, p4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 37
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 41
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 37
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 39
    :cond_1
    throw p0
.end method

.method static decodeSampledBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 51
    invoke-static {v0, p1, p2}, Lid/zelory/compressor/ImageUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 60
    new-instance p2, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    .line 61
    invoke-virtual {p2, p0, p1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    .line 62
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/4 p1, 0x6

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    .line 64
    invoke-virtual {v6, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    const/high16 p0, 0x43340000    # 180.0f

    .line 66
    invoke-virtual {v6, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    if-ne p0, p1, :cond_2

    const/high16 p0, 0x43870000    # 270.0f

    .line 68
    invoke-virtual {v6, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_2
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 70
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
