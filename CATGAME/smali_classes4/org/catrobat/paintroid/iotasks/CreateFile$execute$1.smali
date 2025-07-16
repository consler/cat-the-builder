.class final Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CreateFile.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/iotasks/CreateFile;->execute()V
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
    c = "org.catrobat.paintroid.iotasks.CreateFile$execute$1"
    f = "CreateFile.kt"
    i = {}
    l = {
        0x32
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;

.field final synthetic $file:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lorg/catrobat/paintroid/iotasks/CreateFile;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/catrobat/paintroid/iotasks/CreateFile;Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/io/File;",
            ">;",
            "Lorg/catrobat/paintroid/iotasks/CreateFile;",
            "Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->$file:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/CreateFile;

    iput-object p3, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;

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

    new-instance p1, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;

    iget-object v0, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->$file:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/CreateFile;

    iget-object v2, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;

    invoke-direct {p1, v0, v1, v2, p2}, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/catrobat/paintroid/iotasks/CreateFile;Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 44
    iget v1, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 46
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->$file:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/CreateFile;

    invoke-static {v3}, Lorg/catrobat/paintroid/iotasks/CreateFile;->access$getFilename$p(Lorg/catrobat/paintroid/iotasks/CreateFile;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;

    if-nez v4, :cond_2

    move-object v4, p1

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;->getFileActivity()Landroid/app/Activity;

    move-result-object v4

    :goto_0
    invoke-static {v3, v4}, Lorg/catrobat/paintroid/FileIO;->createNewEmptyPictureFile(Ljava/lang/String;Landroid/app/Activity;)Ljava/io/File;

    move-result-object v3

    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 48
    invoke-static {}, Lorg/catrobat/paintroid/iotasks/CreateFile;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Can\'t create file"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1$1;

    iget-object v4, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->$callback:Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;

    iget-object v5, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->this$0:Lorg/catrobat/paintroid/iotasks/CreateFile;

    iget-object v6, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->$file:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3, v4, v5, v6, p1}, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1$1;-><init>(Lorg/catrobat/paintroid/iotasks/CreateFile$CreateFileCallback;Lorg/catrobat/paintroid/iotasks/CreateFile;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lorg/catrobat/paintroid/iotasks/CreateFile$execute$1;->label:I

    invoke-static {v1, v3, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 55
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
