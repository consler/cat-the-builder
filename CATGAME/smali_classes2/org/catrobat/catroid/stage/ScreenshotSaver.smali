.class public final Lorg/catrobat/catroid/stage/ScreenshotSaver;
.super Ljava/lang/Object;
.source "ScreenshotSaver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/stage/ScreenshotSaver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J*\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/catrobat/catroid/stage/ScreenshotSaver;",
        "",
        "gdxFileHandler",
        "Lcom/badlogic/gdx/Files;",
        "folder",
        "",
        "width",
        "",
        "height",
        "(Lcom/badlogic/gdx/Files;Ljava/lang/String;II)V",
        "retrieveColorFromData",
        "data",
        "",
        "i",
        "saveScreenshot",
        "",
        "fileName",
        "saveScreenshotAndNotify",
        "",
        "callback",
        "Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/stage/ScreenshotSaver$Companion;

.field private static final IMAGE_QUALITY:I = 0x64

.field private static final NUMBER_OF_COLORS:I = 0x4

.field private static final ONLY_WHITESPACE_REGEX:Lkotlin/text/Regex;

.field private static final TAG:Ljava/lang/String;

.field private static final VALID_FILENAME_REGEX:Lkotlin/text/Regex;


# instance fields
.field private final folder:Ljava/lang/String;

.field private final gdxFileHandler:Lcom/badlogic/gdx/Files;

.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/stage/ScreenshotSaver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/stage/ScreenshotSaver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/stage/ScreenshotSaver;->Companion:Lorg/catrobat/catroid/stage/ScreenshotSaver$Companion;

    .line 50
    const-class v0, Lorg/catrobat/catroid/stage/ScreenshotSaver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/stage/ScreenshotSaver;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[^<>:;,?\"*|/]+$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/stage/ScreenshotSaver;->VALID_FILENAME_REGEX:Lkotlin/text/Regex;

    .line 54
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\s*"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/stage/ScreenshotSaver;->ONLY_WHITESPACE_REGEX:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/Files;Ljava/lang/String;II)V
    .locals 1
    .param p1, "gdxFileHandler"    # Lcom/badlogic/gdx/Files;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I

    const-string v0, "gdxFileHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver;->gdxFileHandler:Lcom/badlogic/gdx/Files;

    iput-object p2, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver;->folder:Ljava/lang/String;

    iput p3, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver;->width:I

    iput p4, p0, Lorg/catrobat/catroid/stage/ScreenshotSaver;->height:I

    return-void
.end method

.method public static final synthetic access$saveScreenshot(Lorg/catrobat/catroid/stage/ScreenshotSaver;[BLjava/lang/String;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/stage/ScreenshotSaver;
    .param p1, "data"    # [B
    .param p2, "fileName"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/stage/ScreenshotSaver;->saveScreenshot([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final retrieveColorFromData([BI)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "i"    # I

    .line 128
    nop

    .line 129
    nop

    .line 130
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 131
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v1

    .line 132
    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/2addr v3, v1

    .line 128
    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private final saveScreenshot([BLjava/lang/String;)Z
    .locals 16
    .param p1, "data"    # [B
    .param p2, "fileName"    # Ljava/lang/String;

    .line 87
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "ProjectManager.getInstance()"

    const-string v4, ".nomedia"

    array-length v5, v2

    .line 88
    .local v5, "length":I
    const/4 v6, 0x0

    .line 89
    .local v6, "fullScreenBitmap":Landroid/graphics/Bitmap;
    div-int/lit8 v7, v5, 0x4

    new-array v7, v7, [I

    .line 91
    .local v7, "colors":[I
    array-length v8, v7

    iget v9, v1, Lorg/catrobat/catroid/stage/ScreenshotSaver;->width:I

    iget v10, v1, Lorg/catrobat/catroid/stage/ScreenshotSaver;->height:I

    mul-int/2addr v9, v10

    const/4 v14, 0x0

    if-ne v8, v9, :cond_5

    array-length v8, v7

    const/4 v15, 0x1

    if-nez v8, :cond_0

    move v8, v15

    goto :goto_0

    :cond_0
    move v8, v14

    :goto_0
    if-eqz v8, :cond_1

    move v4, v14

    goto/16 :goto_2

    .line 95
    :cond_1
    invoke-static {v14, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v8

    check-cast v8, Lkotlin/ranges/IntProgression;

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v9

    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v10

    invoke-virtual {v8}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v8

    if-ltz v8, :cond_2

    if-gt v9, v10, :cond_3

    goto :goto_1

    :cond_2
    if-lt v9, v10, :cond_3

    .line 96
    .local v9, "i":I
    :goto_1
    div-int/lit8 v11, v9, 0x4

    invoke-direct {v1, v2, v9}, Lorg/catrobat/catroid/stage/ScreenshotSaver;->retrieveColorFromData([BI)I

    move-result v12

    aput v12, v7, v11

    .line 95
    if-eq v9, v10, :cond_3

    add-int v11, v9, v8

    move v9, v11

    .end local v9    # "i":I
    goto :goto_1

    .line 98
    :cond_3
    nop

    .line 99
    const/4 v9, 0x0

    iget v11, v1, Lorg/catrobat/catroid/stage/ScreenshotSaver;->width:I

    iget v12, v1, Lorg/catrobat/catroid/stage/ScreenshotSaver;->height:I

    .line 100
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 98
    move-object v8, v7

    move v10, v11

    invoke-static/range {v8 .. v13}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const-string v9, "Bitmap.createBitmap(\n   \u2026onfig.ARGB_8888\n        )"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v8

    .line 103
    iget-object v8, v1, Lorg/catrobat/catroid/stage/ScreenshotSaver;->gdxFileHandler:Lcom/badlogic/gdx/Files;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lorg/catrobat/catroid/stage/ScreenshotSaver;->folder:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    .line 104
    .local v8, "imageScene":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v9

    .line 105
    .local v9, "streamScene":Ljava/io/OutputStream;
    nop

    .line 106
    :try_start_0
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lorg/catrobat/catroid/stage/ScreenshotSaver;->folder:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 107
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v6, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 108
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 110
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v10

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v12

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    const-string v12, "ProjectManager.getInstance().currentProject"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v0

    const-string v12, "ProjectManager.getInstan\u2026.currentProject.directory"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "projectFolder":Ljava/lang/String;
    iget-object v10, v1, Lorg/catrobat/catroid/stage/ScreenshotSaver;->gdxFileHandler:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    .line 113
    .local v10, "imageProject":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v10, v14}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v12

    .line 114
    .local v12, "streamProject":Ljava/io/OutputStream;
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 115
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v4, v11, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 116
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "projectFolder":Ljava/lang/String;
    .end local v10    # "imageProject":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12    # "streamProject":Ljava/io/OutputStream;
    :cond_4
    nop

    .line 123
    return v15

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lorg/catrobat/catroid/stage/ScreenshotSaver;->TAG:Ljava/lang/String;

    move-object v10, v0

    check-cast v10, Ljava/lang/Throwable;

    const-string v11, "Could not save screenshot to file"

    invoke-static {v4, v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 v4, 0x0

    return v4

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "imageScene":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9    # "streamScene":Ljava/io/OutputStream;
    :cond_5
    move v4, v14

    .line 92
    :goto_2
    return v4
.end method


# virtual methods
.method public final saveScreenshotAndNotify([BLjava/lang/String;Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;
    .param p4, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 64
    sget-object v1, Lorg/catrobat/catroid/stage/ScreenshotSaver;->TAG:Ljava/lang/String;

    const-string v2, "Screenshot data is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-interface {p3, v0}, Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;->screenshotSaved(Z)V

    goto :goto_1

    .line 66
    :cond_0
    nop

    .line 67
    nop

    .line 68
    if-eqz p2, :cond_2

    .line 67
    sget-object v1, Lorg/catrobat/catroid/stage/ScreenshotSaver;->ONLY_WHITESPACE_REGEX:Lkotlin/text/Regex;

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    sget-object v1, Lorg/catrobat/catroid/stage/ScreenshotSaver;->VALID_FILENAME_REGEX:Lkotlin/text/Regex;

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lorg/catrobat/catroid/stage/ScreenshotSaver$saveScreenshotAndNotify$1;-><init>(Lorg/catrobat/catroid/stage/ScreenshotSaver;[BLjava/lang/String;Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p4

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    sget-object v1, Lorg/catrobat/catroid/stage/ScreenshotSaver;->TAG:Ljava/lang/String;

    const-string v2, "Screenshot filename invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-interface {p3, v0}, Lorg/catrobat/catroid/stage/ScreenshotSaverCallback;->screenshotSaved(Z)V

    .line 80
    :goto_1
    nop

    .line 81
    return-void
.end method
