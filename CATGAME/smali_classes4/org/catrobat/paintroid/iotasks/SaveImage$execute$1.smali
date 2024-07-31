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
    c = "org.catrobat.paintroid.iotasks.SaveImage$execute$1"
    f = "SaveImage.kt"
    i = {}
    l = {
        0x87
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

.field final synthetic $currentUri:Lkotlin/jvm/internal/Ref$ObjectRef;

.field label:I

.field final synthetic this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/iotasks/SaveImage;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    iput-object p2, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$currentUri:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

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

    new-instance v0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;

    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$currentUri:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;-><init>(Lorg/catrobat/paintroid/iotasks/SaveImage;Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 109
    move-object/from16 v2, p0

    iget v0, v2, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->label:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_0

    move-object/from16 v0, p0

    .local v0, "this":Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;
    move-object/from16 v1, p1

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 140
    .end local v0    # "this":Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;
    .end local v1    # "$result":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;
    move-object/from16 v5, p1

    .line 110
    .local v5, "$result":Ljava/lang/Object;
    nop

    .line 111
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v0}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getWorkspace$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Lorg/catrobat/paintroid/tools/Workspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->getBitmapOfAllLayers()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v7, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v7}, Lorg/catrobat/paintroid/FileIO;->getDefaultFileName()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    .line 113
    .local v13, "filename":Ljava/lang/String;
    iget-object v14, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$currentUri:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-boolean v7, Lorg/catrobat/paintroid/FileIO;->isCatrobatImage:Z

    if-eqz v7, :cond_4

    .line 114
    iget-object v7, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v7}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getWorkspace$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Lorg/catrobat/paintroid/tools/Workspace;

    move-result-object v7

    invoke-interface {v7}, Lorg/catrobat/paintroid/tools/Workspace;->getBitmapLisOfAllLayers()Ljava/util/List;

    move-result-object v7

    move-object v15, v7

    .line 115
    .local v15, "bitmapList":Ljava/util/List;
    iget-object v7, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v7}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getUri$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_3

    sget-object v7, Lorg/catrobat/paintroid/FileIO$FileType;->ORA:Lorg/catrobat/paintroid/FileIO$FileType;

    invoke-virtual {v7}, Lorg/catrobat/paintroid/FileIO$FileType;->toExtension()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v13, v7, v8, v9, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 116
    iget-object v7, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v7}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getUri$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_2

    .local v9, "it":Landroid/net/Uri;
    const/16 v16, 0x0

    .line 117
    .local v16, "$i$a$-let-SaveImage$execute$1$1":I
    iget-object v7, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    iget-object v8, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    invoke-interface {v8}, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object v8, v15

    move-object v10, v13

    move-object v11, v0

    invoke-static/range {v7 .. v12}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$saveOraFile(Lorg/catrobat/paintroid/iotasks/SaveImage;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v7

    .line 116
    .end local v9    # "it":Landroid/net/Uri;
    .end local v16    # "$i$a$-let-SaveImage$execute$1$1":I
    goto :goto_0

    :cond_2
    move-object v7, v6

    goto :goto_0

    .line 120
    :cond_3
    iget-object v7, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    iget-object v8, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    invoke-interface {v8}, Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v7, v15, v13, v0, v8}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$exportOraFile(Lorg/catrobat/paintroid/iotasks/SaveImage;Ljava/util/List;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v7

    .line 121
    .end local v15    # "bitmapList":Ljava/util/List;
    .local v7, "imageUri":Landroid/net/Uri;
    nop

    .line 115
    .end local v7    # "imageUri":Landroid/net/Uri;
    goto :goto_0

    .line 123
    :cond_4
    sget-object v7, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    sget-object v8, Lorg/catrobat/paintroid/FileIO$FileType;->CATROBAT:Lorg/catrobat/paintroid/FileIO$FileType;

    if-ne v7, v8, :cond_5

    .line 124
    iget-object v7, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    invoke-static {v7}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getWorkspace$p(Lorg/catrobat/paintroid/iotasks/SaveImage;)Lorg/catrobat/paintroid/tools/Workspace;

    move-result-object v7

    invoke-interface {v7}, Lorg/catrobat/paintroid/tools/Workspace;->getCommandSerializationHelper()Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;

    move-result-object v7

    invoke-virtual {v7, v13}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->writeToFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .end local v13    # "filename":Ljava/lang/String;
    goto :goto_0

    .line 126
    :cond_5
    iget-object v7, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/SaveImage;

    iget-object v8, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;

    invoke-static {v7, v8, v0}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getImageUri(Lorg/catrobat/paintroid/iotasks/SaveImage;Lorg/catrobat/paintroid/iotasks/SaveImage$SaveImageCallback;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v7

    .line 123
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    nop

    .line 113
    iput-object v7, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 130
    instance-of v7, v0, Ljava/io/IOException;

    if-eqz v7, :cond_6

    invoke-static {}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Ljava/lang/Throwable;

    const-string v9, "Can\'t save image file"

    invoke-static {v7, v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 131
    :cond_6
    instance-of v7, v0, Ljava/lang/NullPointerException;

    if-eqz v7, :cond_7

    invoke-static {}, Lorg/catrobat/paintroid/iotasks/SaveImage;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Ljava/lang/Throwable;

    const-string v9, "Can\'t load image file"

    invoke-static {v7, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    nop

    .line 133
    nop

    .line 135
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1$2;

    invoke-direct {v7, v4, v6}, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1$2;-><init>(Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    iput v3, v4, Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;->label:I

    invoke-static {v0, v7, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    .line 109
    return-object v1

    .line 135
    :cond_8
    move-object v0, v4

    move-object v1, v5

    .line 140
    .end local v4    # "this":Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;
    .end local v5    # "$result":Ljava/lang/Object;
    .local v0, "this":Lorg/catrobat/paintroid/iotasks/SaveImage$execute$1;
    .restart local v1    # "$result":Ljava/lang/Object;
    :goto_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3
.end method
