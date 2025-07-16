.class public final Lorg/catrobat/paintroid/FileIO;
.super Ljava/lang/Object;
.source "FileIO.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/FileIO$FileType;,
        Lorg/catrobat/paintroid/FileIO$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileIO.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileIO.kt\norg/catrobat/paintroid/FileIO\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,667:1\n1#2:668\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020\u000eH\u0002J\u001e\u0010*\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020,J\u0018\u0010-\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020,H\u0002J\u0018\u0010.\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020,H\u0002J\u000e\u0010/\u001a\u00020\u00062\u0006\u00100\u001a\u000201J \u00102\u001a\u00020\u00062\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u0001012\u0006\u00106\u001a\u00020 J\u0018\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0002J\u001c\u0010=\u001a\u0002012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0007J*\u0010@\u001a\u0004\u0018\u00010A2\u0006\u0010+\u001a\u00020,2\u0006\u0010B\u001a\u00020 2\u0006\u0010C\u001a\u00020D2\u0008\u0010E\u001a\u0004\u0018\u00010FJ\u000e\u0010G\u001a\u00020H2\u0006\u00100\u001a\u000201J\u0014\u0010I\u001a\u0004\u0018\u00010A2\u0008\u0010J\u001a\u0004\u0018\u00010AH\u0007J\u0012\u0010K\u001a\u0004\u0018\u00010A2\u0008\u0010L\u001a\u0004\u0018\u000101J\"\u0010M\u001a\u0004\u0018\u00010A2\u0006\u0010+\u001a\u00020,2\u0006\u0010N\u001a\u00020 2\u0006\u0010E\u001a\u00020FH\u0007J\u0012\u0010O\u001a\u00020P2\u0008\u0010Q\u001a\u0004\u0018\u00010RH\u0007J\u0018\u0010S\u001a\u00020P2\u0006\u0010+\u001a\u00020,2\u0006\u0010B\u001a\u00020 H\u0003J\u001a\u0010T\u001a\u00020P2\u0006\u0010B\u001a\u00020 2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0002J \u0010U\u001a\u00020V2\u0006\u0010+\u001a\u00020,2\u0006\u0010N\u001a\u00020 2\u0008\u0010E\u001a\u0004\u0018\u00010FJ\u0012\u0010W\u001a\u00020X2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0002J\u001c\u0010Y\u001a\u0004\u0018\u00010A2\u0008\u0010J\u001a\u0004\u0018\u00010A2\u0006\u0010Z\u001a\u00020PH\u0007J\"\u0010[\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020,2\u0006\u0010N\u001a\u00020 2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0002J \u0010\\\u001a\u00020V2\u0006\u0010+\u001a\u00020,2\u0006\u0010N\u001a\u00020 2\u0008\u0010E\u001a\u0004\u0018\u00010FJ\"\u0010]\u001a\u0004\u0018\u00010 2\u0006\u0010^\u001a\u00020 2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020,H\u0002J\u0018\u0010_\u001a\u0004\u0018\u00010 2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020,J\u0018\u0010`\u001a\u0004\u0018\u00010 2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020,J\"\u0010a\u001a\u00020\u00062\u0006\u0010+\u001a\u00020,2\u0006\u0010N\u001a\u00020 2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0002J\u0010\u0010b\u001a\u0004\u0018\u00010c2\u0006\u0010d\u001a\u00020eJ\u0016\u0010f\u001a\u00020H2\u0006\u0010B\u001a\u00020 2\u0006\u0010+\u001a\u00020,J \u0010g\u001a\u00020H2\u0006\u0010h\u001a\u0002012\u0006\u0010i\u001a\u0002012\u0006\u00100\u001a\u000201H\u0002J\"\u0010j\u001a\u0004\u0018\u00010 2\u0008\u0010J\u001a\u0004\u0018\u00010A2\u0006\u00103\u001a\u0002042\u0006\u0010k\u001a\u00020\u0004J*\u0010l\u001a\u00020 2\u0006\u0010k\u001a\u00020\u00042\u0008\u0010J\u001a\u0004\u0018\u00010A2\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010E\u001a\u00020FJ\u001c\u0010m\u001a\u00020H2\u0008\u0010n\u001a\u0004\u0018\u00010<2\u0008\u0010J\u001a\u0004\u0018\u00010AH\u0002J \u0010o\u001a\u00020 2\u0006\u0010B\u001a\u00020 2\u0008\u0010J\u001a\u0004\u0018\u00010A2\u0006\u0010E\u001a\u00020FJ \u0010p\u001a\u00020H2\u0006\u0010B\u001a\u00020 2\u0006\u0010q\u001a\u0002012\u0006\u0010E\u001a\u00020FH\u0007J\u0016\u0010r\u001a\u00020H2\u0006\u00100\u001a\u0002012\u0006\u0010d\u001a\u00020eJ\u0010\u0010s\u001a\u00020H2\u0006\u00100\u001a\u000201H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0015\"\u0004\u0008#\u0010$\u00a8\u0006u"
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
        "navigator",
        "Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;",
        "getNavigator",
        "()Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;",
        "setNavigator",
        "(Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;)V",
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
        "Lorg/catrobat/paintroid/iotasks/WorkspaceReturnValue;",
        "commandSerializer",
        "Lorg/catrobat/paintroid/command/serialization/CommandSerializer;",
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
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/paintroid/FileIO;

.field private static final cacheChildFolder:Ljava/lang/String;

.field private static catroidFlag:Z

.field public static compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private static compressQuality:I

.field public static fileType:Lorg/catrobat/paintroid/FileIO$FileType;

.field public static filename:Ljava/lang/String;

.field private static navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

.field public static storeImageUri:Landroid/net/Uri;

.field private static temporaryFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/paintroid/FileIO;

    invoke-direct {v0}, Lorg/catrobat/paintroid/FileIO;-><init>()V

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    const-string v0, "image"

    .line 79
    sput-object v0, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 82
    sget-object v0, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    const/16 v0, 0x64

    .line 84
    sput v0, Lorg/catrobat/paintroid/FileIO;->compressQuality:I

    .line 87
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const-string v0, "images"

    .line 101
    sput-object v0, Lorg/catrobat/paintroid/FileIO;->cacheChildFolder:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final calculateSampleSize(IIII)I
    .locals 1

    const/4 v0, 0x1

    :goto_0
    if-gt p1, p3, :cond_1

    if-le p2, p4, :cond_0

    goto :goto_1

    :cond_0
    return v0

    .line 467
    :cond_1
    :goto_1
    div-int/lit8 p1, p1, 0x2

    .line 468
    div-int/lit8 p2, p2, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private final checkFileExistsInDownloadsFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Z
    .locals 0

    .line 460
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/FileIO;->getUriForFilenameInDownloadsFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final checkFileExistsInPicturesFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Z
    .locals 0

    .line 457
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/FileIO;->getUriForFilenameInPicturesFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 393
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-wide v1

    :cond_0
    const/4 v4, 0x0

    .line 397
    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0
.end method

.method public static final createNewEmptyPictureFile(Ljava/lang/String;Landroid/app/Activity;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    .line 269
    sget-object p0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/FileIO;->getDefaultFileName()Ljava/lang/String;

    move-result-object p0

    .line 270
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    .line 273
    :cond_2
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_4

    .line 274
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 277
    :cond_3
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    .line 275
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Can not create media directory."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 270
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final enableAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 587
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :goto_0
    return-object p0
.end method

.method public static final getBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
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

    .line 477
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 478
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 479
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/catrobat/paintroid/FileIO;->decodeBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lorg/catrobat/paintroid/FileIO;->enableAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final getBitmapOrientation(Landroidx/exifinterface/media/ExifInterface;)F
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "Orientation"

    const/4 v2, 0x1

    .line 338
    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x6

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_3
    const/high16 v0, 0x43340000    # 180.0f

    :goto_0
    return v0
.end method

.method private final getBitmapOrientationFromInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 310
    :cond_0
    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    move-object v0, p2

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    .line 311
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 312
    invoke-static {v1}, Lorg/catrobat/paintroid/FileIO;->getBitmapOrientation(Landroidx/exifinterface/media/ExifInterface;)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final getBitmapOrientationFromUri(Landroid/net/Uri;Landroid/content/Context;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 319
    :cond_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    sget-object v1, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    invoke-virtual {v1, p2, p1}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 321
    :goto_0
    invoke-static {p1}, Lorg/catrobat/paintroid/FileIO;->getBitmapOrientation(Landroidx/exifinterface/media/ExifInterface;)F

    move-result p1

    return p1
.end method

.method private final getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 2

    .line 483
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "activity"

    .line 485
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/app/ActivityManager;

    if-nez p1, :cond_1

    goto :goto_1

    .line 486
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    :goto_1
    return-object v0
.end method

.method public static final getOrientedBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 327
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 328
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 330
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 331
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method private final getScaleFactor(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    invoke-direct {p0, p3}, Lorg/catrobat/paintroid/FileIO;->getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    .line 518
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 519
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/catrobat/paintroid/FileIO;->decodeBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 520
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez p1, :cond_0

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez p1, :cond_0

    .line 523
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    .line 525
    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    sub-long/2addr p2, v1

    invoke-virtual {p1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    add-long/2addr p2, v1

    long-to-float p1, p2

    const p2, 0x3f666666    # 0.9f

    mul-float/2addr p1, p2

    .line 526
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr p3, v1

    int-to-float p3, p3

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    mul-float/2addr p1, p2

    const-wide/16 v1, 0x4

    long-to-float p2, v1

    div-float/2addr p1, p2

    div-float p2, p1, p3

    float-to-double p2, p2

    .line 529
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    div-float/2addr p1, p2

    .line 532
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 533
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    float-to-int p1, p1

    float-to-int p2, p2

    .line 531
    invoke-direct {p0, p3, v0, p1, p2}, Lorg/catrobat/paintroid/FileIO;->calculateSampleSize(IIII)I

    move-result p1

    return p1

    .line 521
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can\'t load bitmap from uri"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getUriForFilename(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const-string v4, "_display_name=?"

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    .line 406
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_display_name"

    .line 409
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "_id"

    .line 411
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 412
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 413
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 416
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final hasEnoughMemory(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-direct {p0, p3}, Lorg/catrobat/paintroid/FileIO;->getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 498
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 499
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 500
    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/catrobat/paintroid/FileIO;->decodeBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 501
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ltz p1, :cond_1

    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ltz p1, :cond_1

    .line 505
    iget-wide p1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long/2addr p1, v3

    long-to-float p1, p1

    const p2, 0x3f666666    # 0.9f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    const-wide/32 v3, 0x5f5e100

    .line 504
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 508
    iget p3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr p3, v0

    int-to-long v0, p3

    const-wide/16 v3, 0x4

    mul-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 502
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can\'t load bitmap from uri"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final reorganizeTempFiles(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 636
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 637
    new-instance p2, Ljava/io/File;

    const-string v0, "TemporaryImages/temporaryImage.catrobat-image"

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 638
    sput-object v0, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    return-void
.end method

.method private final saveBitmapToStream(Ljava/io/OutputStream;Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 116
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v0, v1, :cond_1

    .line 118
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, -0x1

    .line 120
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 121
    invoke-virtual {v1, p2, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p2, v0

    :cond_1
    if-eqz p2, :cond_3

    .line 125
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 126
    sget v1, Lorg/catrobat/paintroid/FileIO;->compressQuality:I

    .line 124
    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 130
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can not write png to stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 115
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bitmap is invalid"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static final saveFileFromUri(Landroid/net/Uri;Ljava/io/File;Landroid/content/Context;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "uri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/io/Closeable;

    const/4 p2, 0x0

    move-object v0, p2

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, p0

    check-cast v0, Ljava/io/InputStream;

    .line 379
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;

    move-object p1, p2

    check-cast p1, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object p1, v1

    check-cast p1, Ljava/io/FileOutputStream;

    .line 380
    sget-object v2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    check-cast p1, Ljava/io/OutputStream;

    invoke-direct {v2, v0, p1}, Lorg/catrobat/paintroid/FileIO;->copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    :try_start_3
    invoke-static {v1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 378
    :try_start_4
    invoke-static {p0, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 379
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 378
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Can not copy streams."

    .line 384
    check-cast p0, Ljava/lang/Throwable;

    const-string p2, "FileIO"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private final tryDeleteFile(Ljava/io/File;)V
    .locals 2

    .line 659
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 660
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 662
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final checkFileExists(Lorg/catrobat/paintroid/FileIO$FileType;Ljava/lang/String;Landroid/content/ContentResolver;)Z
    .locals 1

    const-string v0, "fileType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lorg/catrobat/paintroid/FileIO$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p2, p3}, Lorg/catrobat/paintroid/FileIO;->checkFileExistsInDownloadsFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Z

    move-result p1

    goto :goto_1

    .line 451
    :cond_2
    invoke-direct {p0, p2, p3}, Lorg/catrobat/paintroid/FileIO;->checkFileExistsInPicturesFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public final checkForTemporaryFile(Ljava/io/File;)Z
    .locals 8

    const-string v0, "internalMemoryPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/io/File;

    const-string v1, "TemporaryImages"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 619
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 620
    array-length v1, v0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    xor-int/2addr v1, v3

    if-eqz v1, :cond_4

    .line 621
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 622
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v1, v4, v6

    const-string v4, "fileList[1]"

    const-string v5, "fileList[0]"

    if-lez v1, :cond_2

    .line 623
    aget-object v1, v0, v3

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v0, v0, v2

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, p1}, Lorg/catrobat/paintroid/FileIO;->reorganizeTempFiles(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 625
    :cond_2
    aget-object v1, v0, v2

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v0, v0, v3

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0, p1}, Lorg/catrobat/paintroid/FileIO;->reorganizeTempFiles(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 628
    :cond_3
    aget-object p1, v0, v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    :goto_1
    return v3

    :cond_4
    return v2
.end method

.method public final compress(Lorg/catrobat/paintroid/MainActivity;Ljava/io/File;Landroid/net/Uri;)Z
    .locals 9

    const-string v0, "mainActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 159
    :cond_0
    new-instance v1, Lid/zelory/compressor/Compressor;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lid/zelory/compressor/Compressor;-><init>(Landroid/content/Context;)V

    .line 160
    sget v2, Lorg/catrobat/paintroid/FileIO;->compressQuality:I

    invoke-virtual {v1, v2}, Lid/zelory/compressor/Compressor;->setQuality(I)Lid/zelory/compressor/Compressor;

    .line 161
    sget-object v2, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2}, Lid/zelory/compressor/Compressor;->setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lid/zelory/compressor/Compressor;

    const-string v2, "catroidTemp"

    .line 163
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/4 v5, 0x1

    const-string v6, "Compression"

    if-lt v3, v4, :cond_4

    const/4 v3, 0x0

    .line 166
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    sget-object v8, Lorg/catrobat/paintroid/FileIO;->cacheChildFolder:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lid/zelory/compressor/Compressor;->setDestinationDirectoryPath(Ljava/lang/String;)Lid/zelory/compressor/Compressor;

    .line 169
    sget-object v4, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v4}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lid/zelory/compressor/Compressor;->compressToFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 170
    invoke-virtual {p1}, Lorg/catrobat/paintroid/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast p3, Ljava/io/InputStream;

    invoke-direct {p2, p3, p1}, Lorg/catrobat/paintroid/FileIO;->copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v3, :cond_2

    .line 177
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 178
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    move v0, v5

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "Can not compress image file."

    .line 174
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v6, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_7

    .line 177
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 178
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_4

    :goto_2
    if-eqz v3, :cond_3

    .line 177
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 178
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    throw p1

    .line 183
    :cond_4
    :try_start_2
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    .line 184
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lid/zelory/compressor/Compressor;->setDestinationDirectoryPath(Ljava/lang/String;)Lid/zelory/compressor/Compressor;

    .line 189
    :cond_6
    :goto_3
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lid/zelory/compressor/Compressor;->compressToFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "Can not compress image file"

    .line 192
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v6, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_4
    return v0
.end method

.method public final decodeBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p4, "resolver"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "uri"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "options"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 289
    check-cast p4, Ljava/io/Closeable;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p4

    check-cast v1, Ljava/io/InputStream;

    .line 290
    invoke-static {v1, v0, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 291
    iget-boolean p3, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 292
    invoke-static {p4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 295
    :cond_0
    :try_start_1
    sget-object p3, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-direct {p3, p1, p2}, Lorg/catrobat/paintroid/FileIO;->getBitmapOrientationFromInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)F

    move-result p1

    .line 299
    invoke-static {v1, p1}, Lorg/catrobat/paintroid/FileIO;->getOrientedBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    invoke-static {p4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 288
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can\'t open input stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final deleteTempFile(Ljava/io/File;)V
    .locals 1

    const-string v0, "internalMemoryPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/FileIO;->tryDeleteFile(Ljava/io/File;)V

    return-void
.end method

.method public final getBitmapFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 580
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 581
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 582
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lorg/catrobat/paintroid/FileIO;->enableAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final getBitmapReturnValueFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "resolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 546
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    const/4 v1, 0x0

    .line 547
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 549
    invoke-direct {p0, p1, p2, p3}, Lorg/catrobat/paintroid/FileIO;->hasEnoughMemory(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v1

    .line 550
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/catrobat/paintroid/FileIO;->decodeBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lorg/catrobat/paintroid/FileIO;->enableAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 551
    new-instance p2, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, v1}, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;-><init>(Ljava/util/List;Landroid/graphics/Bitmap;Z)V

    return-object p2
.end method

.method public final getCatroidFlag()Z
    .locals 1

    .line 89
    sget-boolean v0, Lorg/catrobat/paintroid/FileIO;->catroidFlag:Z

    return v0
.end method

.method public final getCompressQuality()I
    .locals 1

    .line 84
    sget v0, Lorg/catrobat/paintroid/FileIO;->compressQuality:I

    return v0
.end method

.method public final getDefaultFileName()Ljava/lang/String;
    .locals 2

    .line 99
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    sget-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNavigator()Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;
    .locals 1

    .line 91
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    return-object v0
.end method

.method public final getScaledBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;
    .locals 3
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

    const/4 v1, 0x1

    .line 565
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    const/4 v1, 0x0

    .line 566
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 567
    sget-object v2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-direct {v2, p1, p2, p3}, Lorg/catrobat/paintroid/FileIO;->getScaleFactor(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 570
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/catrobat/paintroid/FileIO;->decodeBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lorg/catrobat/paintroid/FileIO;->enableAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 571
    new-instance p2, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, v1}, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;-><init>(Ljava/util/List;Landroid/graphics/Bitmap;Z)V

    return-object p2
.end method

.method public final getTemporaryFilePath()Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getUriForFilenameInDownloadsFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 2

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 437
    sget-object v0, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "EXTERNAL_CONTENT_URI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-direct {p0, v0, p1, p2}, Lorg/catrobat/paintroid/FileIO;->getUriForFilename(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 440
    :cond_0
    new-instance p2, Ljava/io/File;

    sget-object v0, Lorg/catrobat/paintroid/common/Constants;->DOWNLOADS_DIRECTORY:Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 442
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 444
    move-object p2, p1

    check-cast p2, Landroid/net/Uri;

    :goto_0
    return-object p1
.end method

.method public final getUriForFilenameInPicturesFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 2

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 423
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "contentUri"

    .line 424
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lorg/catrobat/paintroid/FileIO;->getUriForFilename(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 426
    :cond_0
    new-instance p2, Ljava/io/File;

    sget-object v0, Lorg/catrobat/paintroid/common/Constants;->PICTURES_DIRECTORY:Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 428
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 430
    move-object p2, p1

    check-cast p2, Landroid/net/Uri;

    :goto_0
    return-object p1
.end method

.method public final openTemporaryPictureFile(Lorg/catrobat/paintroid/command/serialization/CommandSerializer;)Lorg/catrobat/paintroid/iotasks/WorkspaceReturnValue;
    .locals 2

    const-string v0, "commandSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 645
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1, v0}, Lorg/catrobat/paintroid/command/serialization/CommandSerializer;->readFromInternalMemory(Ljava/io/FileInputStream;)Lorg/catrobat/paintroid/iotasks/WorkspaceReturnValue;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Can\'t read from stream"

    .line 648
    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "Cannot read"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final parseFileName(Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 7

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_display_name"

    .line 355
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    .line 353
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "image"

    if-nez p1, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    move-object v2, p1

    check-cast v2, Ljava/io/Closeable;

    move-object v3, p2

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    .line 359
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cursor.getString(cursor.\u2026ageColumns.DISPLAY_NAME))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    .line 363
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-static {v2, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 364
    :goto_0
    sget-object p1, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v1, p1, v0, v2, p2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-nez p1, :cond_3

    const-string p1, ".jpeg"

    invoke-static {v1, p1, v0, v2, p2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ".png"

    .line 368
    invoke-static {v1, p1, v0, v2, p2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 369
    sget-object p1, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 370
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 371
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    sget-object p2, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {p2}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    goto :goto_2

    .line 365
    :cond_3
    :goto_1
    sget-object p1, Lorg/catrobat/paintroid/FileIO$FileType;->JPG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 366
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 367
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    sget-object p2, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {p2}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 358
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final saveBitmapToCache(Landroid/graphics/Bitmap;Lorg/catrobat/paintroid/MainActivity;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    const-string v0, "mainActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lorg/catrobat/paintroid/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lorg/catrobat/paintroid/FileIO;->cacheChildFolder:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 248
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 249
    move-object v0, v1

    check-cast v0, Ljava/io/OutputStream;

    invoke-direct {p0, v0, p1}, Lorg/catrobat/paintroid/FileIO;->saveBitmapToStream(Ljava/io/OutputStream;Landroid/graphics/Bitmap;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 251
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Lorg/catrobat/paintroid/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p3, ".fileprovider"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p2}, Lorg/catrobat/paintroid/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 255
    invoke-static {p2, p1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Can not write png to stream."

    .line 261
    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "Can not write"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final saveBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;Landroid/content/Context;)Landroid/net/Uri;
    .locals 3

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 205
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_display_name"

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mime_type"

    const-string v1, "image/*"

    .line 207
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "relative_path"

    .line 208
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    move-object p1, v2

    goto :goto_1

    .line 210
    :cond_0
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 212
    :cond_1
    sget-object p3, Lorg/catrobat/paintroid/common/Constants;->PICTURES_DIRECTORY:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_3

    sget-object p3, Lorg/catrobat/paintroid/common/Constants;->PICTURES_DIRECTORY:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 213
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can not create media directory."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_3
    :goto_0
    new-instance p3, Ljava/io/File;

    sget-object v0, Lorg/catrobat/paintroid/common/Constants;->PICTURES_DIRECTORY:Ljava/io/File;

    invoke-direct {p3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 219
    :goto_1
    move-object p3, p4

    check-cast p3, Lorg/catrobat/paintroid/MainActivity;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3, v0}, Lorg/catrobat/paintroid/FileIO;->saveBitmapToCache(Landroid/graphics/Bitmap;Lorg/catrobat/paintroid/MainActivity;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 222
    :cond_4
    new-instance v2, Ljava/io/File;

    sget-object p3, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    invoke-virtual {p3, p4, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_2
    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 226
    :try_start_0
    check-cast p4, Lorg/catrobat/paintroid/MainActivity;

    .line 225
    invoke-virtual {p0, p4, v2, p1}, Lorg/catrobat/paintroid/FileIO;->compress(Lorg/catrobat/paintroid/MainActivity;Ljava/io/File;Landroid/net/Uri;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_6

    .line 236
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 237
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_5
    return-object p1

    .line 231
    :cond_6
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can not compress image file."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_7

    .line 236
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 237
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 235
    :cond_7
    throw p1
.end method

.method public final saveBitmapToUri(Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
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
    move-object v1, p3

    check-cast v1, Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uid.toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1, v0}, Lorg/catrobat/paintroid/FileIO;->saveBitmapToCache(Landroid/graphics/Bitmap;Lorg/catrobat/paintroid/MainActivity;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/paintroid/presenter/MainActivityPresenter;->Companion:Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;

    invoke-virtual {v1, p3, p2}, Lorg/catrobat/paintroid/presenter/MainActivityPresenter$Companion;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 144
    :try_start_0
    check-cast p3, Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {p0, p3, p2, p1}, Lorg/catrobat/paintroid/FileIO;->compress(Lorg/catrobat/paintroid/MainActivity;Ljava/io/File;Landroid/net/Uri;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    .line 149
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 150
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_1
    return-object p1

    .line 145
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Can not open URI."

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_3

    .line 149
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 150
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 148
    :cond_3
    throw p1
.end method

.method public final saveTemporaryPictureFile(Ljava/io/File;Lorg/catrobat/paintroid/command/serialization/CommandSerializer;)V
    .locals 5

    const-string v0, "TemporaryImages/temporaryImage1.catrobat-image"

    const-string v1, "/temporaryImage1.catrobat-image"

    const-string v2, "internalMemoryPath"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "commandSerializer"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    new-instance v2, Ljava/io/File;

    const-string v3, "TemporaryImages"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 595
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 597
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2, v3}, Lorg/catrobat/paintroid/command/serialization/CommandSerializer;->writeToInternalMemory(Ljava/io/FileOutputStream;)V

    .line 599
    sput-object v0, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "Can\'t write to stream"

    .line 601
    check-cast p2, Ljava/lang/Throwable;

    const-string v2, "Cannot write"

    invoke-static {v2, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    :goto_0
    new-instance p2, Ljava/io/File;

    const-string v1, "TemporaryImages/temporaryImage.catrobat-image"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 607
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 610
    sput-object v1, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final setCatroidFlag(Z)V
    .locals 0

    .line 89
    sput-boolean p1, Lorg/catrobat/paintroid/FileIO;->catroidFlag:Z

    return-void
.end method

.method public final setCompressQuality(I)V
    .locals 0

    .line 84
    sput p1, Lorg/catrobat/paintroid/FileIO;->compressQuality:I

    return-void
.end method

.method public final setNavigator(Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;)V
    .locals 0

    .line 91
    sput-object p1, Lorg/catrobat/paintroid/FileIO;->navigator:Lorg/catrobat/paintroid/contract/MainActivityContracts$Navigator;

    return-void
.end method

.method public final setTemporaryFilePath(Ljava/lang/String;)V
    .locals 0

    .line 96
    sput-object p1, Lorg/catrobat/paintroid/FileIO;->temporaryFilePath:Ljava/lang/String;

    return-void
.end method
