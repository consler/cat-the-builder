.class final Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SaveImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/iotasks/SaveImage;->execute()V
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
    c = "org.catrobat.paintroid.iotasks.SaveImage$execute$1"
    f = "SaveImage.kt"
    i = {}
    l = {
        0x94
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

.field final synthetic $currentUri:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/iotasks/SaveImage;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/iotasks/SaveImage;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/net/Uri;",
            ">;",
            "Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    iput-object p2, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$currentUri:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

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

    new-instance p1, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;

    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$currentUri:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    invoke-direct {p1, v0, v1, v2, p2}, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;-><init>(Lorg/catrobat/paintroid/iotasks/SaveImage;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 113
    iget v1, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 153
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 115
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v1}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getIdlingResource$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Landroidx/test/espresso/idling/CountingIdlingResource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/espresso/idling/CountingIdlingResource;->increment()V

    .line 116
    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v1}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getLayerModel$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v1

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getBitmapOfAllLayers()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 117
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO;->getDefaultFileName()Ljava/lang/String;

    move-result-object v6

    .line 118
    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$currentUri:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object v3, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    sget-object v4, Lorg/catrobat/paintroid/FileIO$FileType;->ORA:Lorg/catrobat/paintroid/FileIO$FileType;

    if-ne v3, v4, :cond_4

    .line 119
    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v3}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getLayerModel$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v3

    invoke-interface {v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayers()Ljava/util/List;

    move-result-object v4

    .line 120
    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v3}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getUri$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lorg/catrobat/paintroid/FileIO$FileType;->ORA:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x2

    invoke-static {v6, v3, v5, v8, p1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v3}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getUri$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    iget-object v8, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    .line 122
    invoke-interface {v8}, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$saveOraFile(Lorg/catrobat/paintroid/iotasks/SaveImage;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    .line 125
    :cond_3
    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    iget-object v5, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    invoke-interface {v5}, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v3, v4, v6, v7, v5}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$exportOraFile(Lorg/catrobat/paintroid/iotasks/SaveImage;Ljava/util/List;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    .line 128
    :cond_4
    sget-object v3, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    sget-object v4, Lorg/catrobat/paintroid/FileIO$FileType;->CATROBAT:Lorg/catrobat/paintroid/FileIO$FileType;

    if-ne v3, v4, :cond_7

    .line 129
    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v3}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getUri$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 130
    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v3}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getUri$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_5

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    iget-object v5, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    .line 131
    invoke-static {v4}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getCommandSerializer$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    move-result-object v4

    invoke-interface {v5}, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v6, v3, v5}, Lorg/catrobat/paintroid/command/serialization/CommandSerializer;->overWriteFile(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    .line 134
    :cond_6
    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v3}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getCommandSerializer$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Lorg/catrobat/paintroid/command/serialization/CommandSerializer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/catrobat/paintroid/command/serialization/CommandSerializer;->writeToFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    .line 137
    :cond_7
    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    iget-object v4, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    invoke-static {v3, v4, v7}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getImageUri(Lorg/catrobat/paintroid/iotasks/SaveImage;Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v3

    .line 118
    :goto_1
    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v1}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getIdlingResource$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Landroidx/test/espresso/idling/CountingIdlingResource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/espresso/idling/CountingIdlingResource;->decrement()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 141
    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v3}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getIdlingResource$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Landroidx/test/espresso/idling/CountingIdlingResource;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/test/espresso/idling/CountingIdlingResource;->decrement()V

    .line 143
    instance-of v3, v1, Ljava/io/IOException;

    if-eqz v3, :cond_8

    invoke-static {}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Can\'t save image file"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 144
    :cond_8
    instance-of v3, v1, Ljava/lang/NullPointerException;

    if-eqz v3, :cond_9

    invoke-static {}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Can\'t load image file"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_9
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1$3;

    iget-object v4, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    iget-object v5, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    iget-object v6, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$currentUri:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3, v4, v5, v6, p1}, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1$3;-><init>(Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;Lorg/catrobat/paintroid/iotasks/SaveImage;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->label:I

    invoke-static {v1, v3, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 153
    :cond_a
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
