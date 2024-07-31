.class final Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FileOperations.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/FileOperationsKt;->loadBitmapByName(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.catrobat.paintroid.colorpicker.FileOperationsKt$loadBitmapByName$2"
    f = "FileOperations.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $imageName:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;->$imageName:Ljava/lang/String;

    iput-object p3, p0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;

    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;->$imageName:Ljava/lang/String;

    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 55
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 56
    .local v0, "this":Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    check-cast v1, Ljava/io/FileInputStream;

    .line 57
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    nop

    .line 58
    :try_start_0
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;->$context:Landroid/content/Context;

    iget-object v3, v0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;->$imageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 59
    iget-object v2, v0, Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v3, v1

    check-cast v3, Ljava/io/InputStream;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-eqz v1, :cond_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    goto :goto_0

    .line 60
    :catch_1
    move-exception v2

    .line 61
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 66
    :cond_0
    nop

    .line 67
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 65
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    nop

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_1
    throw v2

    .line 67
    .end local v0    # "this":Lorg/catrobat/paintroid/colorpicker/FileOperationsKt$loadBitmapByName$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
