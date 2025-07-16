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
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.catrobat.paintroid.iotasks.LoadImage$execute$1"
    f = "LoadImage.kt"
    i = {}
    l = {
        0x6f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

.field final synthetic $returnValue:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/iotasks/LoadImage;Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/iotasks/LoadImage;",
            "Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;

    iput-object p2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    iput-object p3, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$returnValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;

    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;

    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$returnValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, v2, p2}, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;-><init>(Lorg/catrobat/paintroid/iotasks/LoadImage;Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "Can\'t load image file"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 95
    iget v2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    iget-object p1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;

    invoke-static {p1}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getIdlingResource$p(Lorg/catrobat/paintroid/iotasks/LoadImage;)Landroidx/test/espresso/idling/CountingIdlingResource;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/test/espresso/idling/CountingIdlingResource;->increment()V

    .line 97
    iget-object p1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;

    invoke-static {p1}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getUri$p(Lorg/catrobat/paintroid/iotasks/LoadImage;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    .line 98
    invoke-static {}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can\'t load image file, uri is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_2
    :try_start_0
    iget-object p1, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    invoke-interface {p1}, Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 102
    sget-object v2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    const-string v2, "image"

    sput-object v2, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$returnValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;

    invoke-static {v4}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getUri$p(Lorg/catrobat/paintroid/iotasks/LoadImage;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getBitmapReturnValue(Lorg/catrobat/paintroid/iotasks/LoadImage;Landroid/net/Uri;Landroid/content/ContentResolver;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    move-result-object p1

    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    invoke-static {}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 105
    invoke-static {}, Lorg/catrobat/paintroid/iotasks/LoadImage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1$1;

    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;

    iget-object v4, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/LoadImage;

    iget-object v5, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->$returnValue:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v6, 0x0

    invoke-direct {v0, v2, v4, v5, v6}, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1$1;-><init>(Lorg/catrobat/paintroid/iotasks/LoadImage$LoadImageCallback;Lorg/catrobat/paintroid/iotasks/LoadImage;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lorg/catrobat/paintroid/iotasks/LoadImage$execute$1;->label:I

    invoke-static {p1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 120
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
