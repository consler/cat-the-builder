.class public final Landroidx/work/OperationKt;
.super Ljava/lang/Object;
.source "Operation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Operation.kt\nandroidx/work/OperationKt\n+ 2 ListenableFuture.kt\nandroidx/work/ListenableFutureKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,30:1\n39#2,8:31\n47#2,2:48\n59#2,3:50\n308#3,9:39\n317#3,2:53\n*E\n*S KotlinDebug\n*F\n+ 1 Operation.kt\nandroidx/work/OperationKt\n*L\n29#1,8:31\n29#1,2:48\n29#1,3:50\n29#1,9:39\n29#1,2:53\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0004"
    }
    d2 = {
        "await",
        "Landroidx/work/Operation$State$SUCCESS;",
        "Landroidx/work/Operation;",
        "(Landroidx/work/Operation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "work-runtime-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final await(Landroidx/work/Operation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/Operation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/Operation$State$SUCCESS;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/work/OperationKt$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/work/OperationKt$await$1;

    iget v1, v0, Landroidx/work/OperationKt$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/work/OperationKt$await$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/work/OperationKt$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/work/OperationKt$await$1;

    invoke-direct {v0, p1}, Landroidx/work/OperationKt$await$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Landroidx/work/OperationKt$await$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, p1, Landroidx/work/OperationKt$await$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    const/4 p0, 0x0

    move v1, p0

    .local v1, "$i$f$await":I
    move v2, p0

    .local v2, "$i$f$await":I
    .local p0, "$i$f$suspendCancellableCoroutine":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 p0, 0x0

    iget-object v3, p1, Landroidx/work/OperationKt$await$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_2

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v1    # "$i$f$await":I
    .end local v2    # "$i$f$await":I
    .end local p0    # "$i$f$suspendCancellableCoroutine":I
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$await":Landroidx/work/Operation;
    const/4 v2, 0x0

    .restart local v2    # "$i$f$await":I
    invoke-interface {p0}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    const-string v5, "result"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v4

    .local p0, "$this$await$iv":Lcom/google/common/util/concurrent/ListenableFuture;
    const/4 v4, 0x0

    .line 31
    .local v4, "$i$f$await":I
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 32
    nop

    .line 33
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e$iv":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    .end local v1    # "e$iv":Ljava/util/concurrent/ExecutionException;
    :goto_1
    throw v3

    .line 38
    :cond_4
    const/4 v5, 0x0

    .line 39
    .local v5, "$i$f$suspendCancellableCoroutine":I
    iput-object p0, p1, Landroidx/work/OperationKt$await$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Landroidx/work/OperationKt$await$1;->label:I

    move-object v6, p1

    .local v6, "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    const/4 v7, 0x0

    .line 40
    .local v7, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    new-instance v8, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v6}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    move-object v3, v8

    .line 46
    .end local v6    # "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    .local v3, "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 47
    move-object v6, v3

    check-cast v6, Lkotlinx/coroutines/CancellableContinuation;

    .local v6, "cancellableContinuation$iv":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v8, 0x0

    .line 48
    .local v8, "$i$a$-suspendCancellableCoroutine-ListenableFutureKt$await$2$iv":I
    nop

    .line 49
    new-instance v9, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {v9, v6, p0}, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/google/common/util/concurrent/ListenableFuture;)V

    check-cast v9, Ljava/lang/Runnable;

    .line 50
    .end local v6    # "cancellableContinuation$iv":Lkotlinx/coroutines/CancellableContinuation;
    .end local p0    # "$this$await$iv":Lcom/google/common/util/concurrent/ListenableFuture;
    sget-object v6, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    check-cast v6, Ljava/util/concurrent/Executor;

    .line 48
    invoke-interface {p0, v9, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 52
    nop

    .line 53
    .end local v8    # "$i$a$-suspendCancellableCoroutine-ListenableFutureKt$await$2$iv":I
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 39
    .end local v3    # "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v7    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne p0, v3, :cond_5

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_5
    if-ne p0, v1, :cond_6

    .line 29
    return-object v1

    .line 39
    :cond_6
    move-object v1, p0

    move p0, v5

    .line 54
    .end local v5    # "$i$f$suspendCancellableCoroutine":I
    .local p0, "$i$f$suspendCancellableCoroutine":I
    :goto_2
    nop

    .line 38
    .end local p0    # "$i$f$suspendCancellableCoroutine":I
    nop

    .end local v4    # "$i$f$await":I
    :goto_3
    const-string p0, "result.await()"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    return-object v1
.end method

.method private static final await$$forInline(Landroidx/work/Operation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p0, "$this$await"    # Landroidx/work/Operation;

    const/4 v0, 0x0

    .line 29
    .local v0, "$i$f$await":I
    invoke-interface {p0}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    const-string v2, "result"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v1, "$this$await$iv":Lcom/google/common/util/concurrent/ListenableFuture;
    const/4 v2, 0x0

    .line 31
    .local v2, "$i$f$await":I
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    nop

    .line 33
    :try_start_0
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    .local p1, "e$iv":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    :goto_0
    throw v3

    .line 38
    .end local p1    # "e$iv":Ljava/util/concurrent/ExecutionException;
    :cond_1
    const/4 v3, 0x0

    .line 39
    .local v3, "$i$f$suspendCancellableCoroutine":I
    const/4 v4, 0x0

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v4, p1

    .local v4, "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    const/4 v5, 0x0

    .line 40
    .local v5, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    new-instance v6, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 46
    .local v6, "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 47
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/CancellableContinuation;

    .local v7, "cancellableContinuation$iv":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v9, 0x0

    .line 48
    .local v9, "$i$a$-suspendCancellableCoroutine-ListenableFutureKt$await$2$iv":I
    nop

    .line 49
    new-instance v10, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {v10, v7, v1}, Landroidx/work/OperationKt$await$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/google/common/util/concurrent/ListenableFuture;)V

    check-cast v10, Ljava/lang/Runnable;

    .line 50
    sget-object v11, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    check-cast v11, Ljava/util/concurrent/Executor;

    .line 48
    invoke-interface {v1, v10, v11}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 52
    nop

    .line 53
    .end local v7    # "cancellableContinuation$iv":Lkotlinx/coroutines/CancellableContinuation;
    .end local v9    # "$i$a$-suspendCancellableCoroutine-ListenableFutureKt$await$2$iv":I
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v6

    .line 39
    .end local v4    # "uCont$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v5    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv$iv":I
    .end local v6    # "cancellable$iv$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v6, v4, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 54
    nop

    .line 38
    .end local v3    # "$i$f$suspendCancellableCoroutine":I
    move-object p1, v6

    .end local v1    # "$this$await$iv":Lcom/google/common/util/concurrent/ListenableFuture;
    .end local v2    # "$i$f$await":I
    :goto_1
    const-string v1, "result.await()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    return-object p1
.end method
