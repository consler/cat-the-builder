.class final Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncCommandManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncCommandManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncCommandManager.kt\norg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,226:1\n111#2,8:227\n120#2,2:236\n1#3:235\n*S KotlinDebug\n*F\n+ 1 AsyncCommandManager.kt\norg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1\n*L\n93#1:227,8\n93#1:236,2\n*E\n"
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
    c = "org.catrobat.paintroid.command.implementation.AsyncCommandManager$loadCommandsCatrobatImage$1"
    f = "AsyncCommandManager.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0xe8,
        0x61
    }
    m = "invokeSuspend"
    n = {
        "$this$withLock$iv",
        "$this$withLock$iv"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $model:Lorg/catrobat/paintroid/model/CommandManagerModel;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lorg/catrobat/paintroid/model/CommandManagerModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;",
            "Lorg/catrobat/paintroid/model/CommandManagerModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->this$0:Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->$model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;

    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->this$0:Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->$model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    invoke-direct {p1, v0, v1, p2}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lorg/catrobat/paintroid/model/CommandManagerModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 92
    iget v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lorg/catrobat/paintroid/model/CommandManagerModel;

    iget-object v3, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    iget-object v5, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v5

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->this$0:Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    invoke-static {p1}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->access$getMutex$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->this$0:Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    iget-object v5, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->$model:Lorg/catrobat/paintroid/model/CommandManagerModel;

    .line 232
    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->L$1:Ljava/lang/Object;

    iput-object v5, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->label:I

    invoke-interface {p1, v4, v6}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, v1

    move-object v1, v5

    .line 94
    :goto_0
    :try_start_1
    invoke-static {v3}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->access$getShuttingDown$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 95
    invoke-static {v3}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->access$getLayerModel$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v3}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->access$getCommandManager$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/catrobat/paintroid/command/CommandManager;->loadCommandsCatrobatImage(Lorg/catrobat/paintroid/model/CommandManagerModel;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v5

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    .line 97
    :cond_4
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1$1$2;

    invoke-direct {v5, v3, v4}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1$1$2;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$loadCommandsCatrobatImage$1;->label:I

    invoke-static {v1, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    .line 100
    :goto_2
    :try_start_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 101
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_2
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 236
    :goto_3
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
