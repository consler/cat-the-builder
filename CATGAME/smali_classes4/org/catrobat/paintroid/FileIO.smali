.class public final Lorg/catrobat/paintroid/FileIO;
.super Ljava/lang/Object;
.source "FileIO.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/FileIO$FileType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileIO.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileIO.kt\norg/catrobat/paintroid/FileIO\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,665:1\n1#2:666\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001oB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u000eH\u0002J\u001e\u0010%\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\'J\u0018\u0010(\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\'H\u0002J\u0018\u0010)\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\'H\u0002J\u000e\u0010*\u001a\u00020\u00062\u0006\u0010+\u001a\u00020,J \u0010-\u001a\u00020\u00062\u0006\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u00010,2\u0006\u00101\u001a\u00020\u001bJ\u0018\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u0002J\u001c\u00108\u001a\u00020,2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0008\u00109\u001a\u0004\u0018\u00010:H\u0007J*\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010&\u001a\u00020\'2\u0006\u0010=\u001a\u00020\u001b2\u0006\u0010>\u001a\u00020?2\u0008\u0010@\u001a\u0004\u0018\u00010AJ\u000e\u0010B\u001a\u00020C2\u0006\u0010+\u001a\u00020,J\u0014\u0010D\u001a\u0004\u0018\u00010<2\u0008\u0010E\u001a\u0004\u0018\u00010<H\u0007J\u0012\u0010F\u001a\u0004\u0018\u00010<2\u0008\u0010G\u001a\u0004\u0018\u00010,J\"\u0010H\u001a\u0004\u0018\u00010<2\u0006\u0010&\u001a\u00020\'2\u0006\u0010I\u001a\u00020\u001b2\u0006\u0010@\u001a\u00020AH\u0007J\u0012\u0010J\u001a\u00020K2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0007J\u0018\u0010N\u001a\u00020K2\u0006\u0010&\u001a\u00020\'2\u0006\u0010=\u001a\u00020\u001bH\u0003J\u001a\u0010O\u001a\u00020K2\u0006\u0010=\u001a\u00020\u001b2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0002J \u0010P\u001a\u00020Q2\u0006\u0010&\u001a\u00020\'2\u0006\u0010I\u001a\u00020\u001b2\u0008\u0010@\u001a\u0004\u0018\u00010AJ\u0012\u0010R\u001a\u00020S2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0002J\u001c\u0010T\u001a\u0004\u0018\u00010<2\u0008\u0010E\u001a\u0004\u0018\u00010<2\u0006\u0010U\u001a\u00020KH\u0007J\"\u0010V\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\'2\u0006\u0010I\u001a\u00020\u001b2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0002J \u0010W\u001a\u00020Q2\u0006\u0010&\u001a\u00020\'2\u0006\u0010I\u001a\u00020\u001b2\u0008\u0010@\u001a\u0004\u0018\u00010AJ\"\u0010X\u001a\u0004\u0018\u00010\u001b2\u0006\u0010Y\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\'H\u0003J\u0018\u0010Z\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\'J\u0018\u0010[\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\'J\"\u0010\\\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\'2\u0006\u0010I\u001a\u00020\u001b2\u0008\u0010@\u001a\u0004\u0018\u00010AH\u0002J\u0010\u0010]\u001a\u0004\u0018\u00010^2\u0006\u0010_\u001a\u00020`J\u0016\u0010a\u001a\u00020C2\u0006\u0010=\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\'J \u0010b\u001a\u00020C2\u0006\u0010c\u001a\u00020,2\u0006\u0010d\u001a\u00020,2\u0006\u0010+\u001a\u00020,H\u0002J\"\u0010e\u001a\u0004\u0018\u00010\u001b2\u0008\u0010E\u001a\u0004\u0018\u00010<2\u0006\u0010.\u001a\u00020/2\u0006\u0010f\u001a\u00020\u0004J*\u0010g\u001a\u00020\u001b2\u0006\u0010f\u001a\u00020\u00042\u0008\u0010E\u001a\u0004\u0018\u00010<2\u0008\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010@\u001a\u00020AJ\u001c\u0010h\u001a\u00020C2\u0008\u0010i\u001a\u0004\u0018\u0001072\u0008\u0010E\u001a\u0004\u0018\u00010<H\u0002J \u0010j\u001a\u00020\u001b2\u0006\u0010=\u001a\u00020\u001b2\u0008\u0010E\u001a\u0004\u0018\u00010<2\u0006\u0010@\u001a\u00020AJ \u0010k\u001a\u00020C2\u0006\u0010=\u001a\u00020\u001b2\u0006\u0010l\u001a\u00020,2\u0006\u0010@\u001a\u00020AH\u0007J\u0016\u0010m\u001a\u00020C2\u0006\u0010+\u001a\u00020,2\u0006\u0010_\u001a\u00020`J\u0010\u0010n\u001a\u00020C2\u0006\u0010+\u001a\u00020,H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0015\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006p"
    }
    d2 = {
        "Lorg/catrobat/paintroid/FileIO;",
        "",
        "()V",
        "cacheChildFolder",
        "",
        "catroidFlag",
        "",
        "getCatroidFlag",
        "()Z",
        "setCatroidFlag",
        "(Z)V",
        "compressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "compressQuality",
        "",
        "getCompressQuality",
        "()I",
        "setCompressQuality",
        "(I)V",
        "defaultFileName",
        "getDefaultFileName",
        "()Ljava/lang/String;",
        "fileType",
        "Lorg/catrobat/paintroid/FileIO$FileType;",
        "filename",
        "isCatrobatImage",
        "storeImageUri",
        "Landroid/net/Uri;",
        "temporaryFilePath",
        "getTemporaryFilePath",
        "setTemporaryFilePath",
        "(Ljava/lang/String;)V",
        "calculateSampleSize",
        "width",
        "height",
        "maxWidth",
        "maxHeight",
        "checkFileExists",
        "resolver",
        "Landroid/content/ContentResolver;",
        "checkFileExistsInDownloadsFolder",
        "checkFileExistsInPicturesFolder",
        "checkForTemporaryFile",
        "internalMemoryPath",
        "Ljava/io/File;",
        "compress",
        "mainActivity",
        "Lorg/catrobat/paintroid/MainActivity;",
        "fileToCompress",
        "destination",
        "copyStreams",
        "",
        "from",
        "Ljava/io/InputStream;",
        "to",
        "Ljava/io/OutputStream;",
        "createNewEmptyPictureFile",
        "activity",
        "Landroid/app/Activity;",
        "decodeBitmapFromUri",
        "Landroid/graphics/Bitmap;",
        "uri",
        "options",
        "Landroid/graphics/BitmapFactory$Options;",
        "context",
        "Landroid/content/Context;",
        "deleteTempFile",
        "",
        "enableAlpha",
        "bitmap",
        "getBitmapFromFile",
        "bitmapFile",
        "getBitmapFromUri",
        "bitmapUri",
        "getBitmapOrientation",
        "",
        "exifInterface",
        "Landroidx/exifinterface/media/ExifInterface;",
        "getBitmapOrientationFromInputStream",
        "getBitmapOrientationFromUri",
        "getBitmapReturnValueFromUri",
        "Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;",
        "getMemoryInfo",
        "Landroid/app/ActivityManager$MemoryInfo;",
        "getOrientedBitmap",
        "angle",
        "getScaleFactor",
        "getScaledBitmapFromUri",
        "getUriForFilename",
        "contentLocationUri",
        "getUriForFilenameInDownloadsFolder",
        "getUriForFilenameInPicturesFolder",
        "hasEnoughMemory",
        "openTemporaryPictureFile",
        "Lorg/catrobat/paintroid/model/CommandManagerModel;",
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "parseFileName",
        "reorganizeTempFiles",
        "file1",
        "file2",
        "saveBitmapToCache",
        "fileName",
        "saveBitmapToFile",
        "saveBitmapToStream",
        "outputStream",
        "saveBitmapToUri",
        "saveFileFromUri",
        "destFile",
        "saveTemporaryPictureFile",
        "tryDeleteFile",
        "FileType",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/paintroid/FileIO;

.field private static final cacheChildFolder:Ljava/lang/String;

.field private static catroidFlag:Z

.field public static compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private static compressQuality:I

.field public static fileType:Lorg/catrobat/paintroid/FileIO$FileType;

.field public static filename:Ljava/lang/String;

.field public static isCatrobatImage:Z

.field public static storeImageUri:Landroid/net/Uri;

.field private static temporaryFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lorg/catrobat/paintroid/FileIO;

    invoke-direct {v0}, Lorg/catrobat/paintroid/FileIO;-><init>()V

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    .line 78
    const-string v0, "image"

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 81
    sget-object v0, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 83
    const/16 v0, 0x64

    sput v0, Lorg/catrobat/paintroid/FileIO;->compressQuality:I

    .line 86
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 101
    const-string v0, "images"

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->cacheChildFolder:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final calculateSampleSize(IIII)I
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .line 464
    move v0, p1

    .line 465
    .local v0, "w":I
    move v1, p2

    .line 466
    .local v1, "h":I
    const/4 v2, 0x1

    .line 467
    .local v2, "sampleSize":I
    :goto_0
    if-gt v0, p3, :cond_1

    if-le v1, p4, :cond_0

    goto :goto_1

    .line 472
    :cond_0
    return v2

    .line 468
    :cond_1
    :goto_1
    div-int/lit8 v0, v0, 0x2

    .line 469
    div-int/lit8 v1, v1, 0x2

    .line 470
    mul-int/lit8 v2, v2, 0x2

    .line 467
    goto :goto_0
.end method

.method private final checkFileExistsInDownloadsFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 461
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/FileIO;->getUriForFilenameInDownloadsFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final checkFileExistsInPicturesFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 458
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/FileIO;->getUriForFilenameInPicturesFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p1, "from"    # Ljava/io/InputStream;
    .param p2, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 391
    .local v0, "buffer":[B
    const-wide/16 v1, 0x0

    .line 392
    .local v1, "total":J
    :goto_0
    nop

    .line 393
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 394
    .local v3, "read":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 395
    nop

    .line 400
    .end local v3    # "read":I
    return-wide v1

    .line 397
    .restart local v3    # "read":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 398
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 392
    .end local v3    # "read":I
    goto :goto_0
.end method

.method public static final createNewEmptyPictureFile(Ljava/lang/String;Landroid/app/Activity;)Ljava/io/File;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 269
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/FileIO;->getDefaultFileName()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Locale.US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    :cond_2
    move-object v1, v5

    .line 274
    .local v1, "externalFilesDir":Ljava/io/File;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 275
    :cond_4
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Can not create media directory."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 270
    .end local v1    # "externalFilesDir":Ljava/io/File;
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final enableAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 585
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 586
    :cond_0
    return-object p0
.end method

.method public static final getBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "bitmapUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "resolver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 479
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 480
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/catrobat/paintroid/FileIO;->decodeBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/paintroid/FileIO;->enableAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static final getBitmapOrientation(Landroidx/exifinterface/media/ExifInterface;)F
    .locals 3
    .param p0, "exifInterface"    # Landroidx/exifinterface/media/ExifInterface;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 337
    if-eqz p0, :cond_3

    .line 338
    nop

    .line 339
    nop

    .line 340
    const/4 v0, 0x1

    .line 338
    const-string v1, "Orientation"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 342
    .local v0, "orientation":I
    const/4 v1, 0x0

    .line 343
    .local v1, "angle":F
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    const/high16 v1, 0x43870000    # 270.0f

    goto :goto_0

    .line 344
    :cond_1
    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_0

    .line 345
    :cond_2
    const/high16 v1, 0x43340000    # 180.0f

    .line 347
    :goto_0
    nop

    .line 348
    return v1

    .line 337
    .end local v0    # "orientation":I
    .end local v1    # "angle":F
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final getBitmapOrientationFromInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)F
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "resolver.openInputStream(uri) ?: return 0f"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .local v0, "inputStream":Ljava/io/InputStream;
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Ljava/io/InputStream;

    .local v3, "it":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 311
    .local v4, "$i$a$-use-FileIO$getBitmapOrientationFromInputStream$1":I
    new-instance v5, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v5, v3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 312
    .local v5, "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    invoke-static {v5}, Lorg/catrobat/paintroid/FileIO;->getBitmapOrientation(Landroidx/exifinterface/media/ExifInterface;)F

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v3    # "it":Ljava/io/InputStream;
    .end local v4    # "$i$a$-use-FileIO$getBitmapOrientationFromInputStream$1":I
    .end local v5    # "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v6

    :catchall_0
    move-exception v2

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "resolver":Landroid/content/ContentResolver;
    .end local p2    # "uri":Landroid/net/Uri;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "resolver":Landroid/content/ContentResolver;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 309
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getBitmapOrientationFromUri(Landroid/net/Uri;Landroid/content/Context;)F
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    if-eqz p2, :cond_0

    move-object v0, p2

    .local v0, "it":Landroid/content/Context;
    const/4 v1, 0x0

    .line 319
    .local v1, "$i$a$-let-FileIO$getBitmapOrientationFromUri$exifInterface$1":I
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    sget-object v3, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    invoke-virtual {v3, v0, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 318
    .end local v0    # "it":Landroid/content/Context;
    .end local v1    # "$i$a$-let-FileIO$getBitmapOrientationFromUri$exifInterface$1":I
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .line 321
    .local v0, "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    invoke-static {v0}, Lorg/catrobat/paintroid/FileIO;->getBitmapOrientation(Landroidx/exifinterface/media/ExifInterface;)F

    move-result v1

    return v1
.end method

.method private final getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 484
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 485
    .local v0, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    nop

    .line 486
    if-eqz p1, :cond_0

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroid/app/ActivityManager;

    .line 485
    nop

    .line 487
    .local v1, "activityManager":Landroid/app/ActivityManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 488
    :cond_1
    return-object v0
.end method

.method public static final getOrientedBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "angle"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 326
    if-eqz p0, :cond_0

    .line 327
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 328
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 329
    nop

    .line 330
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

    .line 329
    nop

    .line 331
    .local v1, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 332
    return-object v1

    .line 326
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v1    # "rotatedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getScaleFactor(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)I
    .locals 11
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "bitmapUri"    # Landroid/net/Uri;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    invoke-direct {p0, p3}, Lorg/catrobat/paintroid/FileIO;->getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    .line 519
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 520
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/catrobat/paintroid/FileIO;->decodeBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 521
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_0

    .line 524
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 525
    .local v1, "info":Ljava/lang/Runtime;
    nop

    .line 526
    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    .line 525
    nop

    .line 527
    .local v2, "availableMemory":F
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    .line 528
    .local v4, "heightToWidthFactor":F
    nop

    .line 529
    const/4 v5, 0x4

    int-to-float v5, v5

    div-float v5, v2, v5

    mul-float/2addr v5, v3

    const-wide/16 v6, 0x4

    long-to-float v3, v6

    div-float/2addr v5, v3

    .line 528
    move v3, v5

    .line 530
    .local v3, "availablePixels":F
    div-float v5, v3, v4

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 531
    .local v5, "availableHeight":F
    div-float v6, v3, v5

    .line 532
    .local v6, "availableWidth":F
    nop

    .line 533
    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 534
    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 535
    float-to-int v9, v6

    .line 536
    float-to-int v10, v5

    .line 532
    invoke-direct {p0, v7, v8, v9, v10}, Lorg/catrobat/paintroid/FileIO;->calculateSampleSize(IIII)I

    move-result v7

    return v7

    .line 522
    .end local v1    # "info":Ljava/lang/Runtime;
    .end local v2    # "availableMemory":F
    .end local v3    # "availablePixels":F
    .end local v4    # "heightToWidthFactor":F
    .end local v5    # "availableHeight":F
    .end local v6    # "availableWidth":F
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t load bitmap from uri"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final getUriForFilename(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 9
    .param p1, "contentLocationUri"    # Landroid/net/Uri;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "resolver"    # Landroid/content/ContentResolver;

    .line 405
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    .line 406
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v0, "_display_name=?"

    .line 407
    .local v0, "selection":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 408
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    move-object v2, v1

    .local v2, "$this$run":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 409
    .local v3, "$i$a$-run-FileIO$getUriForFilename$1":I
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 410
    const-string v4, "_display_name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 412
    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 413
    .local v6, "id":J
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 414
    invoke-static {p1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    return-object v8

    .line 409
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "id":J
    :cond_0
    goto :goto_0

    .line 417
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 418
    nop

    .line 408
    .end local v2    # "$this$run":Landroid/database/Cursor;
    .end local v3    # "$i$a$-run-FileIO$getUriForFilename$1":I
    nop

    .line 419
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private final hasEnoughMemory(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "bitmapUri"    # Landroid/net/Uri;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "scaling":Z
    invoke-direct {p0, p3}, Lorg/catrobat/paintroid/FileIO;->getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    .line 499
    .local v1, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 500
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 501
    invoke-virtual {p0, p1, p2, v2, p3}, Lorg/catrobat/paintroid/FileIO;->decodeBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 502
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ltz v3, :cond_1

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ltz v3, :cond_1

    .line 505
    nop

    .line 506
    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v5, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    .line 507
    const-wide/32 v5, 0x5f5e100

    .line 505
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 509
    .local v3, "availableMemory":J
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    const-wide/16 v7, 0x4

    mul-long/2addr v5, v7

    .line 510
    .local v5, "requiredMemory":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    .line 511
    const/4 v0, 0x1

    .line 513
    :cond_0
    return v0

    .line 503
    .end local v3    # "availableMemory":J
    .end local v5    # "requiredMemory":J
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Can\'t load bitmap from uri"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method private final reorganizeTempFiles(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "file2"    # Ljava/io/File;
    .param p3, "internalMemoryPath"    # Ljava/io/File;

    .line 634
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 635
    new-instance v0, Ljava/io/File;

    const-string v1, "TemporaryImages/temporaryImage.catrobat-image"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 636
    sput-object v1, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    .line 637
    return-void
.end method

.method private final saveBitmapToStream(Ljava/io/OutputStream;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    move-object v0, p2

    .line 115
    .local v0, "currentBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 116
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v1, v2, :cond_1

    .line 117
    nop

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    nop

    .line 119
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 120
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 121
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    move-object v0, v1

    .line 124
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    if-eqz v0, :cond_3

    .line 125
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 126
    sget v2, Lorg/catrobat/paintroid/FileIO;->compressQuality:I

    .line 127
    nop

    .line 124
    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 130
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can not write png to stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 132
    :cond_3
    :goto_1
    return-void

    .line 666
    :cond_4
    const/4 v1, 0x0

    .line 115
    .local v1, "$i$a$-require-FileIO$saveBitmapToStream$1":I
    nop

    .end local v1    # "$i$a$-require-FileIO$saveBitmapToStream$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bitmap is invalid"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final saveFileFromUri(Landroid/net/Uri;Ljava/io/File;Landroid/content/Context;)V
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "uri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    nop

    .line 378
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v3, v0

    check-cast v3, Ljava/io/InputStream;

    .local v3, "fileInputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 379
    .local v4, "$i$a$-use-FileIO$saveFileFromUri$1":I
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v5, Ljava/io/Closeable;

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v6, v5

    check-cast v6, Ljava/io/FileOutputStream;

    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 380
    .local v7, "$i$a$-use-FileIO$saveFileFromUri$1$1":I
    sget-object v8, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    const-string v9, "fileInputStream"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v6

    check-cast v9, Ljava/io/OutputStream;

    invoke-direct {v8, v3, v9}, Lorg/catrobat/paintroid/FileIO;->copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "$i$a$-use-FileIO$saveFileFromUri$1$1":I
    :try_start_3
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "$i$a$-use-FileIO$saveFileFromUri$1":I
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 378
    :try_start_4
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 379
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v4    # "$i$a$-use-FileIO$saveFileFromUri$1":I
    :catchall_0
    move-exception v1

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "$i$a$-use-FileIO$saveFileFromUri$1":I
    .end local p0    # "uri":Landroid/net/Uri;
    .end local p1    # "destFile":Ljava/io/File;
    .end local p2    # "context":Landroid/content/Context;
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v4    # "$i$a$-use-FileIO$saveFileFromUri$1":I
    .restart local p0    # "uri":Landroid/net/Uri;
    .restart local p1    # "destFile":Ljava/io/File;
    .restart local p2    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p0    # "uri":Landroid/net/Uri;
    .end local p1    # "destFile":Ljava/io/File;
    .end local p2    # "context":Landroid/content/Context;
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 378
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "$i$a$-use-FileIO$saveFileFromUri$1":I
    .restart local p0    # "uri":Landroid/net/Uri;
    .restart local p1    # "destFile":Ljava/io/File;
    .restart local p2    # "context":Landroid/content/Context;
    :catchall_2
    move-exception v1

    .end local p0    # "uri":Landroid/net/Uri;
    .end local p1    # "destFile":Ljava/io/File;
    .end local p2    # "context":Landroid/content/Context;
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .restart local p0    # "uri":Landroid/net/Uri;
    .restart local p1    # "destFile":Ljava/io/File;
    .restart local p2    # "context":Landroid/content/Context;
    :catchall_3
    move-exception v2

    :try_start_8
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p0    # "uri":Landroid/net/Uri;
    .end local p1    # "destFile":Ljava/io/File;
    .end local p2    # "context":Landroid/content/Context;
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 383
    .restart local p0    # "uri":Landroid/net/Uri;
    .restart local p1    # "destFile":Ljava/io/File;
    .restart local p2    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "FileIO"

    const-string v3, "Can not copy streams."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 386
    return-void
.end method

.method private final tryDeleteFile(Ljava/io/File;)V
    .locals 2
    .param p1, "internalMemoryPath"    # Ljava/io/File;

    .line 657
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 658
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 659
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 660
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 663
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method


# virtual methods
.method public final checkFileExists(Lorg/catrobat/paintroid/FileIO$FileType;Ljava/lang/String;Landroid/content/ContentResolver;)Z
    .locals 2
    .param p1, "fileType"    # Lorg/catrobat/paintroid/FileIO$FileType;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "resolver"    # Landroid/content/ContentResolver;

    const-string v0, "fileType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    sget-object v0, Lorg/catrobat/paintroid/FileIO$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0, p2, p3}, Lorg/catrobat/paintroid/FileIO;->checkFileExistsInDownloadsFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Z

    move-result v0

    goto :goto_1

    .line 452
    :cond_2
    invoke-direct {p0, p2, p3}, Lorg/catrobat/paintroid/FileIO;->checkFileExistsInPicturesFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 451
    :goto_1
    return v0
.end method

.method public final checkForTemporaryFile(Ljava/io/File;)Z
    .locals 11
    .param p1, "internalMemoryPath"    # Ljava/io/File;

    const-string v0, "internalMemoryPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/io/File;

    const-string v1, "TemporaryImages"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 614
    .local v0, "tempPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 615
    return v2

    .line 617
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 618
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_4

    array-length v3, v1

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    xor-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 619
    array-length v3, v1

    const/4 v5, 0x2

    const-string v6, "fileList[0]"

    if-ne v3, v5, :cond_3

    .line 620
    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    cmp-long v3, v7, v9

    const-string v5, "fileList[1]"

    if-lez v3, :cond_2

    .line 621
    aget-object v3, v1, v4

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v2, v1, v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, p1}, Lorg/catrobat/paintroid/FileIO;->reorganizeTempFiles(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 623
    :cond_2
    aget-object v2, v1, v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v3, v1, v4

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, p1}, Lorg/catrobat/paintroid/FileIO;->reorganizeTempFiles(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 624
    goto :goto_1

    .line 626
    :cond_3
    aget-object v2, v1, v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    .line 627
    :goto_1
    nop

    .line 628
    return v4

    .line 630
    :cond_4
    return v2
.end method

.method public final compress(Lorg/catrobat/paintroid/MainActivity;Ljava/io/File;Landroid/net/Uri;)Z
    .locals 12
    .param p1, "mainActivity"    # Lorg/catrobat/paintroid/MainActivity;
    .param p2, "fileToCompress"    # Ljava/io/File;
    .param p3, "destination"    # Landroid/net/Uri;

    const-string v0, "mainActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 159
    new-instance v1, Lid/zelory/compressor/Compressor;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lid/zelory/compressor/Compressor;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, "compressor":Lid/zelory/compressor/Compressor;
    sget v2, Lorg/catrobat/paintroid/FileIO;->compressQuality:I

    invoke-virtual {v1, v2}, Lid/zelory/compressor/Compressor;->setQuality(I)Lid/zelory/compressor/Compressor;

    .line 161
    sget-object v2, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2}, Lid/zelory/compressor/Compressor;->setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lid/zelory/compressor/Compressor;

    .line 162
    const-string v2, "catroidTemp"

    .line 163
    .local v2, "tempFileName":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/4 v5, 0x1

    const-string v6, "Compression"

    if-lt v3, v4, :cond_4

    .line 164
    const/4 v3, 0x0

    check-cast v3, Ljava/io/File;

    .line 165
    .local v3, "compressed":Ljava/lang/Object;
    nop

    .line 166
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    sget-object v8, Lorg/catrobat/paintroid/FileIO;->cacheChildFolder:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v4, "cachePath":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lid/zelory/compressor/Compressor;->setDestinationDirectoryPath(Ljava/lang/String;)Lid/zelory/compressor/Compressor;

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v8}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, p2, v7}, Lid/zelory/compressor/Compressor;->compressToFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    move-object v3, v7

    .line 170
    invoke-virtual {p1}, Lorg/catrobat/paintroid/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    .line 171
    .local v7, "os":Ljava/io/OutputStream;
    if-eqz v7, :cond_0

    move-object v8, v7

    .line 666
    .local v8, "it":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 171
    .local v9, "$i$a$-let-FileIO$compress$1":I
    sget-object v10, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v11, Ljava/io/InputStream;

    invoke-direct {v10, v11, v8}, Lorg/catrobat/paintroid/FileIO;->copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v8    # "it":Ljava/io/OutputStream;
    .end local v9    # "$i$a$-let-FileIO$compress$1":I
    :cond_0
    nop

    .line 177
    .end local v4    # "cachePath":Ljava/io/File;
    .end local v7    # "os":Ljava/io/OutputStream;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 180
    :cond_1
    move v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 173
    :catch_0
    move-exception v4

    .line 174
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "Can not compress image file."

    move-object v7, v4

    check-cast v7, Ljava/lang/Throwable;

    invoke-static {v6, v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    nop

    .line 177
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 180
    :cond_2
    nop

    .line 165
    :goto_0
    nop

    .end local v3    # "compressed":Ljava/lang/Object;
    goto :goto_3

    .line 177
    .restart local v3    # "compressed":Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    throw v0

    .line 182
    .end local v3    # "compressed":Ljava/lang/Object;
    :cond_4
    nop

    .line 183
    :try_start_2
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .local v3, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 184
    .local v4, "$i$a$-let-FileIO$compress$2":I
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 185
    .local v7, "file":Ljava/io/File;
    if-eqz v7, :cond_5

    .line 186
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lid/zelory/compressor/Compressor;->setDestinationDirectoryPath(Ljava/lang/String;)Lid/zelory/compressor/Compressor;

    .line 188
    .end local v7    # "file":Ljava/io/File;
    :cond_5
    nop

    .line 183
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-FileIO$compress$2":I
    :cond_6
    nop

    .line 189
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lid/zelory/compressor/Compressor;->compressToFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 190
    move v0, v5

    goto :goto_2

    .line 191
    :catch_1
    move-exception v3

    .line 192
    .local v3, "e":Ljava/io/IOException;
    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    const-string v5, "Can not compress image file"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    nop

    .line 182
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .line 163
    :goto_3
    return v0

    .line 158
    .end local v1    # "compressor":Lid/zelory/compressor/Compressor;
    .end local v2    # "tempFileName":Ljava/lang/String;
    :cond_7
    return v0
.end method

.method public final decodeBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "resolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    nop

    .line 288
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "resolver.openInputStream\u2026Can\'t open input stream\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    nop

    .line 289
    .local v0, "inputStream":Ljava/io/InputStream;
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v1

    check-cast v4, Ljava/io/InputStream;

    .local v4, "it":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 290
    .local v5, "$i$a$-use-FileIO$decodeBitmapFromUri$1":I
    invoke-static {v4, v2, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 291
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v6, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 292
    nop

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "it":Ljava/io/InputStream;
    .end local v5    # "$i$a$-use-FileIO$decodeBitmapFromUri$1":I
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 294
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "it":Ljava/io/InputStream;
    .restart local v5    # "$i$a$-use-FileIO$decodeBitmapFromUri$1":I
    :cond_0
    :try_start_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_1

    .line 295
    sget-object v6, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-direct {v6, p1, p2}, Lorg/catrobat/paintroid/FileIO;->getBitmapOrientationFromInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)F

    move-result v6

    goto :goto_0

    .line 297
    :cond_1
    sget-object v6, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-direct {v6, p2, p4}, Lorg/catrobat/paintroid/FileIO;->getBitmapOrientationFromUri(Landroid/net/Uri;Landroid/content/Context;)F

    move-result v6

    .line 294
    :goto_0
    nop

    .line 299
    .local v6, "angle":F
    invoke-static {v2, v6}, Lorg/catrobat/paintroid/FileIO;->getOrientedBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "it":Ljava/io/InputStream;
    .end local v5    # "$i$a$-use-FileIO$decodeBitmapFromUri$1":I
    .end local v6    # "angle":F
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v7

    :catchall_0
    move-exception v2

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "resolver":Landroid/content/ContentResolver;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p4    # "context":Landroid/content/Context;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "resolver":Landroid/content/ContentResolver;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p4    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 288
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t open input stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final deleteTempFile(Ljava/io/File;)V
    .locals 1
    .param p1, "internalMemoryPath"    # Ljava/io/File;

    const-string v0, "internalMemoryPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/FileIO;->tryDeleteFile(Ljava/io/File;)V

    .line 654
    return-void
.end method

.method public final getBitmapFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmapFile"    # Ljava/io/File;

    .line 577
    if-eqz p1, :cond_0

    .line 578
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 579
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 580
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/paintroid/FileIO;->enableAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 577
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBitmapReturnValueFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;
    .locals 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "bitmapUri"    # Landroid/net/Uri;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "resolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    .line 547
    .local v2, "$i$a$-apply-FileIO$getBitmapReturnValueFromUri$options$1":I
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 548
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 549
    nop

    .line 546
    .end local v1    # "$this$apply":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "$i$a$-apply-FileIO$getBitmapReturnValueFromUri$options$1":I
    nop

    .line 550
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p0, p1, p2, p3}, Lorg/catrobat/paintroid/FileIO;->hasEnoughMemory(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v1

    .line 551
    .local v1, "scaling":Z
    new-instance v2, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    .line 552
    nop

    .line 553
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/catrobat/paintroid/FileIO;->decodeBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lorg/catrobat/paintroid/FileIO;->enableAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 554
    nop

    .line 551
    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v1}, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;-><init>(Ljava/util/List;Landroid/graphics/Bitmap;Z)V

    return-object v2
.end method

.method public final getCatroidFlag()Z
    .locals 1

    .line 88
    sget-boolean v0, Lorg/catrobat/paintroid/FileIO;->catroidFlag:Z

    return v0
.end method

.method public final getCompressQuality()I
    .locals 1

    .line 83
    sget v0, Lorg/catrobat/paintroid/FileIO;->compressQuality:I

    return v0
.end method

.method public final getDefaultFileName()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getScaledBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;
    .locals 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "bitmapUri"    # Landroid/net/Uri;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "resolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    .line 565
    .local v2, "$i$a$-apply-FileIO$getScaledBitmapFromUri$options$1":I
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 566
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 567
    sget-object v4, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-direct {v4, p1, p2, p3}, Lorg/catrobat/paintroid/FileIO;->getScaleFactor(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 568
    nop

    .line 564
    .end local v1    # "$this$apply":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "$i$a$-apply-FileIO$getScaledBitmapFromUri$options$1":I
    nop

    .line 569
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    new-instance v1, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    .line 570
    nop

    .line 571
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/catrobat/paintroid/FileIO;->decodeBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/paintroid/FileIO;->enableAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 572
    nop

    .line 569
    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;-><init>(Ljava/util/List;Landroid/graphics/Bitmap;Z)V

    return-object v1
.end method

.method public final getTemporaryFilePath()Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getUriForFilenameInDownloadsFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 438
    sget-object v0, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "MediaStore.Downloads.EXTERNAL_CONTENT_URI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-direct {p0, v0, p1, p2}, Lorg/catrobat/paintroid/FileIO;->getUriForFilename(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    .line 437
    .end local v0    # "contentUri":Landroid/net/Uri;
    return-object v0

    .line 441
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/paintroid/common/Constants;->DOWNLOADS_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 445
    :cond_1
    const/4 v1, 0x0

    .line 442
    :goto_0
    return-object v1
.end method

.method public final getUriForFilenameInPicturesFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 424
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 425
    .local v0, "contentUri":Landroid/net/Uri;
    const-string v1, "contentUri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lorg/catrobat/paintroid/FileIO;->getUriForFilename(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    .line 423
    .end local v0    # "contentUri":Landroid/net/Uri;
    return-object v0

    .line 427
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/paintroid/common/Constants;->PICTURES_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 431
    :cond_1
    const/4 v1, 0x0

    .line 428
    :goto_0
    return-object v1
.end method

.method public final openTemporaryPictureFile(Lorg/catrobat/paintroid/tools/Workspace;)Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 5
    .param p1, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;

    const-string v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    const/4 v0, 0x0

    check-cast v0, Lorg/catrobat/paintroid/model/CommandManagerModel;

    .line 641
    .local v0, "commandModel":Lorg/catrobat/paintroid/model/CommandManagerModel;
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 642
    nop

    .line 643
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 644
    .local v1, "stream":Ljava/io/FileInputStream;
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/Workspace;->getCommandSerializationHelper()Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->readFromInternalMemory(Ljava/io/FileInputStream;)Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .end local v1    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 645
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Cannot read"

    const-string v4, "Can\'t read from stream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 649
    return-object v0
.end method

.method public final parseFileName(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    const-string v0, "image"

    .line 353
    .local v0, "fileName":Ljava/lang/Object;
    nop

    .line 354
    nop

    .line 355
    const-string v1, "_display_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 356
    nop

    .line 353
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 358
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v4, v2

    check-cast v4, Ljava/io/Closeable;

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    :try_start_0
    move-object v6, v4

    check-cast v6, Landroid/database/Cursor;

    .local v6, "it":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 359
    .local v7, "$i$a$-use-FileIO$parseFileName$1":I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 360
    nop

    .line 361
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v8, "cursor.getString(cursor.\u2026ageColumns.DISPLAY_NAME))"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 363
    :cond_0
    nop

    .end local v6    # "it":Landroid/database/Cursor;
    .end local v7    # "$i$a$-use-FileIO$parseFileName$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .end local v0    # "fileName":Ljava/lang/Object;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "resolver":Landroid/content/ContentResolver;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "fileName":Ljava/lang/Object;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "resolver":Landroid/content/ContentResolver;
    :catchall_1
    move-exception v3

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 364
    :cond_1
    :goto_0
    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v1, v4, v5, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-nez v1, :cond_4

    const-string v1, ".jpeg"

    invoke-static {v0, v1, v4, v5, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 368
    :cond_2
    const-string v1, ".png"

    invoke-static {v0, v1, v4, v5, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 369
    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 370
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 371
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v3, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_4
    :goto_1
    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 366
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 367
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v3, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    if-eqz v0, :cond_6

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 372
    :cond_5
    :goto_2
    nop

    .line 373
    return-void

    .line 367
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final saveBitmapToCache(Landroid/graphics/Bitmap;Lorg/catrobat/paintroid/MainActivity;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "mainActivity"    # Lorg/catrobat/paintroid/MainActivity;
    .param p3, "fileName"    # Ljava/lang/String;

    const-string v0, "mainActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    check-cast v0, Landroid/net/Uri;

    .line 245
    .local v0, "uri":Landroid/net/Uri;
    nop

    .line 246
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lorg/catrobat/paintroid/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lorg/catrobat/paintroid/FileIO;->cacheChildFolder:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    .local v1, "cachePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 248
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v4}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 249
    .local v2, "stream":Ljava/io/FileOutputStream;
    move-object v3, v2

    check-cast v3, Ljava/io/OutputStream;

    invoke-direct {p0, v3, p1}, Lorg/catrobat/paintroid/FileIO;->saveBitmapToStream(Ljava/io/OutputStream;Landroid/graphics/Bitmap;)V

    .line 250
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 251
    new-instance v3, Ljava/io/File;

    invoke-virtual {p2}, Lorg/catrobat/paintroid/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lorg/catrobat/paintroid/FileIO;->cacheChildFolder:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    .local v3, "imagePath":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v6}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    .local v4, "newFile":Ljava/io/File;
    nop

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "mainActivity.applicationContext"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".fileprovider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 253
    nop

    .line 255
    .local v5, "fileProviderString":Ljava/lang/String;
    nop

    .line 256
    invoke-virtual {p2}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 257
    nop

    .line 258
    nop

    .line 255
    invoke-static {v6, v5, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .end local v1    # "cachePath":Ljava/io/File;
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "imagePath":Ljava/io/File;
    .end local v4    # "newFile":Ljava/io/File;
    .end local v5    # "fileProviderString":Ljava/lang/String;
    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/io/IOException;
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Can not write"

    const-string v4, "Can not write png to stream."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 263
    return-object v0
.end method

.method public final saveBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;Landroid/content/Context;)Landroid/net/Uri;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "resolver"    # Landroid/content/ContentResolver;
    .param p4, "context"    # Landroid/content/Context;

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 205
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v2, v0

    .local v2, "$this$apply":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 206
    .local v3, "$i$a$-apply-FileIO$saveBitmapToFile$imageUri$contentValues$1":I
    const-string v4, "_display_name"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v4, "mime_type"

    const-string v5, "image/*"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const-string v5, "relative_path"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    nop

    .line 205
    .end local v2    # "$this$apply":Landroid/content/ContentValues;
    .end local v3    # "$i$a$-apply-FileIO$saveBitmapToFile$imageUri$contentValues$1":I
    nop

    .line 210
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v1

    .end local v0    # "contentValues":Landroid/content/ContentValues;
    goto :goto_1

    .line 212
    :cond_1
    sget-object v0, Lorg/catrobat/paintroid/common/Constants;->PICTURES_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/catrobat/paintroid/common/Constants;->PICTURES_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 213
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can not create media directory."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 215
    :cond_3
    :goto_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lorg/catrobat/paintroid/common/Constants;->PICTURES_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 204
    :goto_1
    move-object v0, v2

    .line 218
    .local v0, "imageUri":Landroid/net/Uri;
    nop

    .line 219
    move-object v2, p4

    check-cast v2, Lorg/catrobat/paintroid/MainActivity;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UUID.randomUUID().toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v2, v3}, Lorg/catrobat/paintroid/FileIO;->saveBitmapToCache(Landroid/graphics/Bitmap;Lorg/catrobat/paintroid/MainActivity;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 218
    nop

    .line 220
    .local v2, "cachedImageUri":Landroid/net/Uri;
    check-cast v1, Ljava/io/File;

    .line 221
    .local v1, "cachedFile":Ljava/lang/Object;
    if-eqz v2, :cond_4

    move-object v3, v2

    .local v3, "it":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 222
    .local v4, "$i$a$-let-FileIO$saveBitmapToFile$1":I
    new-instance v5, Ljava/io/File;

    sget-object v6, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    invoke-virtual {v6, p4, v3}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 223
    nop

    .line 221
    .end local v3    # "it":Landroid/net/Uri;
    .end local v4    # "$i$a$-let-FileIO$saveBitmapToFile$1":I
    nop

    .line 224
    :cond_4
    nop

    .line 225
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 226
    :try_start_0
    move-object v3, p4

    check-cast v3, Lorg/catrobat/paintroid/MainActivity;

    .line 227
    nop

    .line 228
    nop

    .line 225
    invoke-virtual {p0, v3, v1, v0}, Lorg/catrobat/paintroid/FileIO;->compress(Lorg/catrobat/paintroid/MainActivity;Ljava/io/File;Landroid/net/Uri;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_7

    .line 233
    nop

    .line 235
    if-eqz v1, :cond_6

    move-object v3, v1

    .local v3, "it":Ljava/io/File;
    const/4 v4, 0x0

    .line 236
    .local v4, "$i$a$-let-FileIO$saveBitmapToFile$2":I
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 237
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 239
    :cond_5
    nop

    .line 235
    .end local v3    # "it":Ljava/io/File;
    .end local v4    # "$i$a$-let-FileIO$saveBitmapToFile$2":I
    nop

    .line 233
    :cond_6
    return-object v0

    .line 231
    :cond_7
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Can not compress image file."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    .end local v0    # "imageUri":Landroid/net/Uri;
    .end local v1    # "cachedFile":Ljava/lang/Object;
    .end local v2    # "cachedImageUri":Landroid/net/Uri;
    .end local p1    # "fileName":Ljava/lang/String;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    .end local p3    # "resolver":Landroid/content/ContentResolver;
    .end local p4    # "context":Landroid/content/Context;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    .restart local v0    # "imageUri":Landroid/net/Uri;
    .restart local v1    # "cachedFile":Ljava/lang/Object;
    .restart local v2    # "cachedImageUri":Landroid/net/Uri;
    .restart local p1    # "fileName":Ljava/lang/String;
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p3    # "resolver":Landroid/content/ContentResolver;
    .restart local p4    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v3

    .line 235
    if-eqz v1, :cond_9

    move-object v4, v1

    .local v4, "it":Ljava/io/File;
    const/4 v5, 0x0

    .line 236
    .local v5, "$i$a$-let-FileIO$saveBitmapToFile$2":I
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 237
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 239
    :cond_8
    nop

    .line 235
    .end local v4    # "it":Ljava/io/File;
    .end local v5    # "$i$a$-let-FileIO$saveBitmapToFile$2":I
    nop

    :cond_9
    throw v3
.end method

.method public final saveBitmapToUri(Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/net/Uri;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 137
    .local v0, "uid":Ljava/util/UUID;
    move-object v1, p3

    check-cast v1, Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1, v2}, Lorg/catrobat/paintroid/FileIO;->saveBitmapToCache(Landroid/graphics/Bitmap;Lorg/catrobat/paintroid/MainActivity;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, "cachedImageUri":Landroid/net/Uri;
    const/4 v2, 0x0

    check-cast v2, Ljava/io/File;

    .line 139
    .local v2, "cachedFile":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v3, v1

    .local v3, "it":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 140
    .local v4, "$i$a$-let-FileIO$saveBitmapToUri$1":I
    new-instance v5, Ljava/io/File;

    sget-object v6, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    invoke-virtual {v6, p3, v3}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 141
    nop

    .line 139
    .end local v3    # "it":Landroid/net/Uri;
    .end local v4    # "$i$a$-let-FileIO$saveBitmapToUri$1":I
    nop

    .line 143
    :cond_0
    nop

    .line 144
    if-eqz v2, :cond_3

    :try_start_0
    move-object v3, p3

    check-cast v3, Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {p0, v3, v2, p1}, Lorg/catrobat/paintroid/FileIO;->compress(Lorg/catrobat/paintroid/MainActivity;Ljava/io/File;Landroid/net/Uri;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 148
    if-eqz v2, :cond_2

    move-object v3, v2

    .local v3, "it":Ljava/io/File;
    const/4 v4, 0x0

    .line 149
    .local v4, "$i$a$-let-FileIO$saveBitmapToUri$2":I
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 152
    :cond_1
    nop

    .line 148
    .end local v3    # "it":Ljava/io/File;
    .end local v4    # "$i$a$-let-FileIO$saveBitmapToUri$2":I
    nop

    .line 153
    :cond_2
    nop

    .line 154
    return-object p1

    .line 145
    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Can not open URI."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    .end local v0    # "uid":Ljava/util/UUID;
    .end local v1    # "cachedImageUri":Landroid/net/Uri;
    .end local v2    # "cachedFile":Ljava/lang/Object;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    .end local p3    # "context":Landroid/content/Context;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .restart local v0    # "uid":Ljava/util/UUID;
    .restart local v1    # "cachedImageUri":Landroid/net/Uri;
    .restart local v2    # "cachedFile":Ljava/lang/Object;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p3    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v3

    .line 148
    if-eqz v2, :cond_5

    move-object v4, v2

    .local v4, "it":Ljava/io/File;
    const/4 v5, 0x0

    .line 149
    .local v5, "$i$a$-let-FileIO$saveBitmapToUri$2":I
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 150
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 152
    :cond_4
    nop

    .line 148
    .end local v4    # "it":Ljava/io/File;
    .end local v5    # "$i$a$-let-FileIO$saveBitmapToUri$2":I
    nop

    :cond_5
    throw v3
.end method

.method public final saveTemporaryPictureFile(Ljava/io/File;Lorg/catrobat/paintroid/tools/Workspace;)V
    .locals 7
    .param p1, "internalMemoryPath"    # Ljava/io/File;
    .param p2, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;

    const-string v0, "TemporaryImages/temporaryImage1.catrobat-image"

    const-string v1, "internalMemoryPath"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "workspace"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    const-string v1, "temporaryImage1.catrobat-image"

    .line 591
    .local v1, "newFileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v3, "TemporaryImages"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 592
    .local v2, "tempPath":Ljava/io/File;
    nop

    .line 593
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 595
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 596
    .local v3, "stream":Ljava/io/FileOutputStream;
    invoke-interface {p2}, Lorg/catrobat/paintroid/tools/Workspace;->getCommandSerializationHelper()Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->writeToInternalMemory(Ljava/io/FileOutputStream;)V

    .line 597
    sput-object v0, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 598
    :catch_0
    move-exception v3

    .line 599
    .local v3, "e":Ljava/io/IOException;
    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    const-string v5, "Cannot write"

    const-string v6, "Can\'t write to stream"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 601
    new-instance v3, Ljava/io/File;

    const-string v4, "TemporaryImages/temporaryImage.catrobat-image"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 602
    .local v3, "oldFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 603
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 605
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v5

    .line 606
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 607
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 608
    sput-object v4, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    .line 610
    :cond_1
    return-void
.end method

.method public final setCatroidFlag(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 88
    sput-boolean p1, Lorg/catrobat/paintroid/FileIO;->catroidFlag:Z

    return-void
.end method

.method public final setCompressQuality(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 83
    sput p1, Lorg/catrobat/paintroid/FileIO;->compressQuality:I

    return-void
.end method

.method public final setTemporaryFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 96
    sput-object p1, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    return-void
.end method
