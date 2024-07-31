.class final Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncCommandManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V
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
    value = "SMAP\nAsyncCommandManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncCommandManager.kt\norg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,142:1\n111#2,8:143\n120#2,2:152\n1#3:151\n*E\n*S KotlinDebug\n*F\n+ 1 AsyncCommandManager.kt\norg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1\n*L\n63#1,8:143\n63#1,2:152\n*E\n"
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
    c = "org.catrobat.paintroid.command.implementation.AsyncCommandManager$addCommand$1"
    f = "AsyncCommandManager.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x94,
        0x43
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
.field final synthetic $command:Lorg/catrobat/paintroid/command/Command;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lorg/catrobat/paintroid/command/Command;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->this$0:Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->$command:Lorg/catrobat/paintroid/command/Command;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;

    iget-object v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->this$0:Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    iget-object v2, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->$command:Lorg/catrobat/paintroid/command/Command;

    invoke-direct {v0, v1, v2, p2}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;-><init>(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;Lorg/catrobat/paintroid/command/Command;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 62
    iget v1, p0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    move-object v0, p0

    .local v0, "this":Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;
    move-object v1, v4

    .local v1, "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    .local p1, "$result":Ljava/lang/Object;
    move-object v2, v4

    .local v2, "owner$iv":Ljava/lang/Object;
    move v3, v5

    .local v3, "$i$a$-withLock-AsyncCommandManager$addCommand$1$1":I
    move v4, v5

    .local v4, "$i$f$withLock":I
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v5, v0, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->L$0:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 153
    .end local v3    # "$i$a$-withLock-AsyncCommandManager$addCommand$1$1":I
    :catchall_0
    move-exception v3

    goto/16 :goto_3

    .line 71
    .end local v0    # "this":Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;
    .end local v1    # "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v2    # "owner$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$withLock":I
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
    move-object v1, p0

    .local v1, "this":Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;
    move-object v3, v4

    .local v3, "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object v6, v4

    .local v5, "$i$f$withLock":I
    .local v6, "owner$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->L$0:Ljava/lang/Object;

    move-object v3, v7

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;
    .end local v3    # "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v5    # "$i$f$withLock":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 63
    .restart local v1    # "this":Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v5, v1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->this$0:Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    invoke-static {v5}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->access$getMutex$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v5

    .line 143
    .local v5, "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    const/4 v6, 0x0

    .restart local v6    # "owner$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 144
    .local v7, "$i$f$withLock":I
    nop

    .line 148
    iput-object v5, v1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->L$0:Ljava/lang/Object;

    iput v3, v1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->label:I

    invoke-interface {v5, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    .line 62
    return-object v0

    .line 148
    :cond_3
    move-object v3, v5

    move v5, v7

    .line 149
    .end local v7    # "$i$f$withLock":I
    .restart local v3    # "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    .local v5, "$i$f$withLock":I
    :goto_0
    nop

    .line 150
    const/4 v7, 0x0

    .line 64
    .local v7, "$i$a$-withLock-AsyncCommandManager$addCommand$1$1":I
    :try_start_1
    iget-object v8, v1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->this$0:Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    invoke-static {v8}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->access$getShuttingDown$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 65
    iget-object v8, v1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->this$0:Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    invoke-static {v8}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->access$getLayerModel$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    move-result-object v8

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 151
    const/4 v9, 0x0

    .line 65
    .local v9, "$i$a$-synchronized-AsyncCommandManager$addCommand$1$1$1":I
    :try_start_2
    iget-object v10, v1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->this$0:Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;

    invoke-static {v10}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;->access$getCommandManager$p(Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager;)Lorg/catrobat/paintroid/command/CommandManager;

    move-result-object v10

    iget-object v11, v1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->$command:Lorg/catrobat/paintroid/command/Command;

    invoke-interface {v10, v11}, Lorg/catrobat/paintroid/command/CommandManager;->addCommand(Lorg/catrobat/paintroid/command/Command;)V

    .end local v9    # "$i$a$-synchronized-AsyncCommandManager$addCommand$1$1$1":I
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v8

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v8

    .end local v1    # "this":Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;
    .end local v3    # "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v5    # "$i$f$withLock":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v0

    .line 67
    .restart local v1    # "this":Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;
    .restart local v3    # "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v5    # "$i$f$withLock":I
    .restart local v6    # "owner$iv":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_4
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v8

    check-cast v8, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1$invokeSuspend$$inlined$withLock$lambda$1;

    invoke-direct {v9, v4, v1}, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1$invokeSuspend$$inlined$withLock$lambda$1;-><init>(Lkotlin/coroutines/Continuation;Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object v3, v1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->L$0:Ljava/lang/Object;

    iput v2, v1, Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;->label:I

    invoke-static {v8, v9, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v2, v0, :cond_5

    .line 62
    return-object v0

    .line 67
    :cond_5
    move-object v0, v1

    move-object v1, v3

    move v4, v5

    move-object v2, v6

    move v3, v7

    .line 70
    .end local v5    # "$i$f$withLock":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-withLock-AsyncCommandManager$addCommand$1$1":I
    .restart local v0    # "this":Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;
    .local v1, "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v2    # "owner$iv":Ljava/lang/Object;
    .local v3, "$i$a$-withLock-AsyncCommandManager$addCommand$1$1":I
    .restart local v4    # "$i$f$withLock":I
    :goto_2
    :try_start_4
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    .end local v3    # "$i$a$-withLock-AsyncCommandManager$addCommand$1$1":I
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 71
    .end local v1    # "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v2    # "owner$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$withLock":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 153
    .end local v0    # "this":Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;
    .local v1, "this":Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;
    .local v3, "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v5    # "$i$f$withLock":I
    .restart local v6    # "owner$iv":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move v4, v5

    move-object v2, v6

    move-object v12, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v12

    .line 152
    .end local v3    # "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    .end local v5    # "$i$f$withLock":I
    .end local v6    # "owner$iv":Ljava/lang/Object;
    .restart local v0    # "this":Lorg/catrobat/paintroid/command/implementation/AsyncCommandManager$addCommand$1;
    .local v1, "$this$withLock$iv":Lkotlinx/coroutines/sync/Mutex;
    .restart local v2    # "owner$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$withLock":I
    :goto_3
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v3
.end method
