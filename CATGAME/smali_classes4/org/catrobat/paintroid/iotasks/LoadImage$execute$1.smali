.class final Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoadImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/iotasks/LoadImage;->execute()V
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
    c = "org.catrobat.paintroid.iotasks.LoadImage$execute$1"
    f = "LoadImage.kt"
    i = {}
    l = {
        0x6a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

.field final synthetic $returnValue:Lkotlin/jvm/internal/Ref$ObjectRef;

.field label:I

.field final synthetic this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/iotasks/LoadImage;Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;

    iput-object p2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    iput-object p3, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$returnValue:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance v0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;

    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;

    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$returnValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;-><init>(Lorg/catrobat/paintroid/iotasks/LoadImage;Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "Can\'t load image file"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 91
    iget v2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    move-object v0, p0

    .local v0, "this":Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 111
    .end local v0    # "this":Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 92
    .local v2, "this":Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;

    invoke-static {v4}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getUri$p(Lorg/catrobat/paintroid/iotasks/LoadImage;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_2

    .line 93
    invoke-static {}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Can\'t load image file, uri is null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_2
    nop

    .line 96
    :try_start_0
    iget-object v4, v2, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    invoke-interface {v4}, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 97
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v5, "image"

    sput-object v5, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 98
    iget-object v5, v2, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$returnValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v2, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;

    iget-object v7, v2, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;

    invoke-static {v7}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getUri$p(Lorg/catrobat/paintroid/iotasks/LoadImage;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getBitmapReturnValue(Lorg/catrobat/paintroid/iotasks/LoadImage;Landroid/net/Uri;Landroid/content/ContentResolver;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object v6

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "resolver":Landroid/content/ContentResolver;
    goto :goto_0

    .line 101
    :catch_0
    move-exception v4

    .line 102
    .local v4, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v5, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    .line 100
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v5, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 104
    nop

    .line 106
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1$1;-><init>(Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput v3, v2, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->label:I

    invoke-static {v0, v4, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    .line 91
    return-object v1

    .line 106
    :cond_3
    move-object v0, v2

    .line 111
    .end local v2    # "this":Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;
    .restart local v0    # "this":Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
