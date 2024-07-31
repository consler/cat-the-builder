.class public final Lorg/catrobat/paintroid/colorpicker/FileOperationsKt;
.super Ljava/lang/Object;
.source "FileOperations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003\u001a#\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a\u001e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "HUNDRED",
        "",
        "TAG",
        "",
        "deleteBitmapFile",
        "",
        "context",
        "Landroid/content/Context;",
        "imageName",
        "loadBitmapByName",
        "Landroid/graphics/Bitmap;",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "storeBitmapTemporally",
        "",
        "bitmap",
        "colorpicker_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final HUNDRED:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FileOperations"


# direct methods
.method public static final deleteBitmapFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageName"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final loadBitmapByName(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;

    iget v1, v0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;

    invoke-direct {v0, p2}, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 53
    iget v2, p2, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    move-object p0, v4

    .local p0, "bitmap":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object p1, p2, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;->L$0:Ljava/lang/Object;

    move-object p0, p1

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 68
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p0    # "bitmap":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .local p0, "context":Landroid/content/Context;
    .local p1, "imageName":Ljava/lang/String;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v5, v4

    check-cast v5, Landroid/graphics/Bitmap;

    iput-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    .local v2, "bitmap":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;

    invoke-direct {v6, p0, p1, v2, v4}, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v2, p2, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;->L$0:Ljava/lang/Object;

    iput v3, p2, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$1;->label:I

    invoke-static {v5, v6, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "imageName":Ljava/lang/String;
    if-ne p0, v1, :cond_3

    .line 53
    return-object v1

    .line 55
    :cond_3
    move-object p0, v2

    .line 68
    .end local v2    # "bitmap":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local p0, "bitmap":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_1
    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static final storeBitmapTemporally(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageName"    # Ljava/lang/String;

    const-string v0, "bitmap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    check-cast v0, Ljava/io/FileOutputStream;

    .line 38
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    nop

    .line 39
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 40
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    move-object v3, v0

    check-cast v3, Ljava/io/OutputStream;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 41
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 49
    :cond_0
    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    nop

    .line 44
    :try_start_1
    instance-of v2, v1, Ljava/io/FileNotFoundException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "FileOperations"

    if-eqz v2, :cond_1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 45
    :cond_1
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    nop

    .line 48
    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :goto_2
    return-void

    .line 48
    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v1
.end method
