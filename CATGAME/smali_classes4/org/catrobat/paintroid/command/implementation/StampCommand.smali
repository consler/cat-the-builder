.class public final Lorg/catrobat/paintroid/command/implementation/StampCommand;
.super Ljava/lang/Object;
.source "StampCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/implementation/StampCommand$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 +2\u00020\u0001:\u0001+B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0014\u0010 \u001a\u0004\u0018\u00010\u00032\u0008\u0010!\u001a\u0004\u0018\u00010\u0003H\u0002J \u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002J\u0018\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0016J \u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0007R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u001e\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u001e\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006,"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/StampCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "position",
        "Landroid/graphics/Point;",
        "width",
        "",
        "height",
        "rotation",
        "(Landroid/graphics/Bitmap;Landroid/graphics/Point;FFF)V",
        "<set-?>",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "boxHeight",
        "getBoxHeight",
        "()F",
        "boxRotation",
        "getBoxRotation",
        "boxWidth",
        "getBoxWidth",
        "coordinates",
        "getCoordinates",
        "()Landroid/graphics/Point;",
        "fileToStoredBitmap",
        "Ljava/io/File;",
        "getFileToStoredBitmap",
        "()Ljava/io/File;",
        "setFileToStoredBitmap",
        "(Ljava/io/File;)V",
        "freeResources",
        "",
        "recycleBitmap",
        "bitmapToRecycle",
        "resizeBitmap",
        "bitmapToResize",
        "run",
        "canvas",
        "Landroid/graphics/Canvas;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "storeBitmap",
        "bitmapToStore",
        "Companion",
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
.field private static final COMPRESSION_QUALITY:I = 0x64

.field public static final Companion:Lorg/catrobat/paintroid/command/implementation/StampCommand$Companion;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private boxHeight:F

.field private boxRotation:F

.field private boxWidth:F

.field private coordinates:Landroid/graphics/Point;

.field private fileToStoredBitmap:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/StampCommand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/implementation/StampCommand$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->Companion:Lorg/catrobat/paintroid/command/implementation/StampCommand$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Point;FFF)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "rotation"    # F

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->bitmap:Landroid/graphics/Bitmap;

    .line 39
    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->coordinates:Landroid/graphics/Point;

    .line 40
    iput p5, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->boxRotation:F

    .line 41
    iput p3, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->boxWidth:F

    .line 42
    iput p4, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->boxHeight:F

    return-void
.end method

.method private final recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmapToRecycle"    # Landroid/graphics/Bitmap;

    .line 95
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 96
    .local v2, "$i$a$-let-StampCommand$recycleBitmap$1":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_0
    nop

    .line 95
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "$i$a$-let-StampCommand$recycleBitmap$1":I
    check-cast v0, Ljava/lang/Void;

    :cond_1
    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private final resizeBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmapToResize"    # Landroid/graphics/Bitmap;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F

    .line 84
    nop

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    float-to-int v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 84
    :goto_0
    nop

    .line 86
    .local v0, "newWidth":I
    nop

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    float-to-int v1, p3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 86
    :goto_1
    nop

    .line 88
    .local v1, "newHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 89
    return-object p1

    .line 91
    :cond_2
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "Bitmap.createScaledBitma\u2026wWidth, newHeight, false)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public freeResources()V
    .locals 3

    .line 104
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/command/implementation/StampCommand;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->bitmap:Landroid/graphics/Bitmap;

    .line 105
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->fileToStoredBitmap:Ljava/io/File;

    if-eqz v0, :cond_1

    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 106
    .local v1, "$i$a$-let-StampCommand$freeResources$1":I
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 109
    :cond_0
    nop

    .line 105
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "$i$a$-let-StampCommand$freeResources$1":I
    nop

    .line 110
    :cond_1
    return-void
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getBoxHeight()F
    .locals 1

    .line 42
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->boxHeight:F

    return v0
.end method

.method public final getBoxRotation()F
    .locals 1

    .line 40
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->boxRotation:F

    return v0
.end method

.method public final getBoxWidth()F
    .locals 1

    .line 41
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->boxWidth:F

    return v0
.end method

.method public final getCoordinates()Landroid/graphics/Point;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->coordinates:Landroid/graphics/Point;

    return-object v0
.end method

.method public final getFileToStoredBitmap()Ljava/io/File;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->fileToStoredBitmap:Ljava/io/File;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->bitmap:Landroid/graphics/Bitmap;

    .line 51
    .local v0, "bitmapToDraw":Ljava/lang/Object;
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->fileToStoredBitmap:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->fileToStoredBitmap:Ljava/io/File;

    invoke-virtual {v1, v2}, Lorg/catrobat/paintroid/FileIO;->getBitmapFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    :cond_0
    if-eqz v0, :cond_2

    .line 56
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->boxWidth:F

    neg-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->boxHeight:F

    neg-float v6, v5

    div-float/2addr v6, v4

    div-float/2addr v2, v4

    div-float/2addr v5, v4

    invoke-direct {v1, v3, v6, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 57
    .local v1, "rect":Landroid/graphics/RectF;
    move-object v2, p1

    .local v2, "$this$with":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    .line 58
    .local v3, "$i$a$-with-StampCommand$run$1":I
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 59
    iget-object v4, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->coordinates:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->coordinates:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 60
    iget v4, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->boxRotation:F

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 61
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 62
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 63
    nop

    .line 57
    .end local v2    # "$this$with":Landroid/graphics/Canvas;
    .end local v3    # "$i$a$-with-StampCommand$run$1":I
    nop

    .line 65
    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->fileToStoredBitmap:Ljava/io/File;

    if-nez v2, :cond_1

    .line 66
    iget v2, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->boxWidth:F

    iget v3, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->boxHeight:F

    invoke-virtual {p0, v0, v2, v3}, Lorg/catrobat/paintroid/command/implementation/StampCommand;->storeBitmap(Landroid/graphics/Bitmap;FF)V

    .line 68
    :cond_1
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/command/implementation/StampCommand;->recycleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->bitmap:Landroid/graphics/Bitmap;

    .line 69
    return-void

    .line 54
    .end local v1    # "rect":Landroid/graphics/RectF;
    :cond_2
    return-void
.end method

.method public final setFileToStoredBitmap(Ljava/io/File;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/io/File;

    .line 43
    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->fileToStoredBitmap:Ljava/io/File;

    return-void
.end method

.method public final storeBitmap(Landroid/graphics/Bitmap;FF)V
    .locals 9
    .param p1, "bitmapToStore"    # Landroid/graphics/Bitmap;
    .param p2, "boxWidth"    # F
    .param p3, "boxHeight"    # F

    const-string v0, "bitmapToStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 74
    .local v0, "random":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 75
    nop

    .line 76
    new-instance v1, Ljava/io/File;

    sget-object v2, Lorg/catrobat/paintroid/PaintroidApplication;->Companion:Lorg/catrobat/paintroid/PaintroidApplication$Companion;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/PaintroidApplication$Companion;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->fileToStoredBitmap:Ljava/io/File;

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/implementation/StampCommand;->resizeBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 78
    .local v1, "resizedBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/catrobat/paintroid/command/implementation/StampCommand;->fileToStoredBitmap:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/Closeable;

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Ljava/io/FileOutputStream;

    .local v4, "stream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 79
    .local v5, "$i$a$-use-StampCommand$storeBitmap$1":I
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    move-object v8, v4

    check-cast v8, Ljava/io/OutputStream;

    invoke-virtual {v1, v6, v7, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .end local v5    # "$i$a$-use-StampCommand$storeBitmap$1":I
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 81
    return-void

    .line 78
    :catchall_0
    move-exception v3

    .end local v0    # "random":Ljava/util/Random;
    .end local v1    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local p1    # "bitmapToStore":Landroid/graphics/Bitmap;
    .end local p2    # "boxWidth":F
    .end local p3    # "boxHeight":F
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "random":Ljava/util/Random;
    .restart local v1    # "resizedBitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "bitmapToStore":Landroid/graphics/Bitmap;
    .restart local p2    # "boxWidth":F
    .restart local p3    # "boxHeight":F
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
.end method
