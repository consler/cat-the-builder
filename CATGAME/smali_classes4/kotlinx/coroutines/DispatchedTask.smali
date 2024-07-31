.class public abstract Lkotlinx/coroutines/DispatchedTask;
.super Lkotlinx/coroutines/scheduling/Task;
.source "DispatchedTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/scheduling/Task;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,221:1\n1#2:222\n43#3,3:223\n47#3:230\n219#4:226\n220#4:229\n57#5,2:227\n75#6:231\n*E\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n*L\n90#1,3:223\n90#1:230\n101#1:226\n101#1:229\n101#1,2:227\n140#1:231\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000f\u0008 \u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00060\u0002j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0010\u00a2\u0006\u0002\u0008\u0014J\u001f\u0010\u0015\u001a\u0002H\u0001\"\u0004\u0008\u0001\u0010\u00012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0010\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u0018\u001a\u00020\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0010H\u0000\u00a2\u0006\u0002\u0008\u001bJ\u0006\u0010\u001c\u001a\u00020\u000cJ\u000f\u0010\u001d\u001a\u0004\u0018\u00010\u000eH \u00a2\u0006\u0002\u0008\u001eR\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lkotlinx/coroutines/DispatchedTask;",
        "T",
        "Lkotlinx/coroutines/scheduling/Task;",
        "Lkotlinx/coroutines/SchedulerTask;",
        "resumeMode",
        "",
        "(I)V",
        "delegate",
        "Lkotlin/coroutines/Continuation;",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "cancelCompletedResult",
        "",
        "takenState",
        "",
        "cause",
        "",
        "cancelCompletedResult$kotlinx_coroutines_core",
        "getExceptionalResult",
        "state",
        "getExceptionalResult$kotlinx_coroutines_core",
        "getSuccessfulResult",
        "getSuccessfulResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "handleFatalException",
        "exception",
        "finallyException",
        "handleFatalException$kotlinx_coroutines_core",
        "run",
        "takeState",
        "takeState$kotlinx_coroutines_core",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public resumeMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "resumeMode"    # I

    .line 50
    nop

    .line 52
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/Task;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    return-void
.end method


# virtual methods
.method public cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "takenState"    # Ljava/lang/Object;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 60
    return-void
.end method

.method public abstract getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "state"    # Ljava/lang/Object;

    .line 79
    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 69
    return-object p1
.end method

.method public final handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "finallyException"    # Ljava/lang/Throwable;

    .line 138
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 139
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 140
    move-object v0, p1

    .local v0, "$this$addSuppressedThrowable$iv":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 231
    .local v1, "$i$f$addSuppressedThrowable":I
    invoke-static {v0, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 143
    .end local v0    # "$this$addSuppressedThrowable$iv":Ljava/lang/Throwable;
    .end local v1    # "$i$f$addSuppressedThrowable":I
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 144
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal exception in coroutines machinery for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 144
    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .local v1, "reason":Lkotlinx/coroutines/CoroutinesInternalError;
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 147
    return-void
.end method

.method public final run()V
    .locals 19

    .line 82
    move-object/from16 v1, p0

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    const/4 v0, 0x0

    .line 82
    .local v0, "$i$a$-assert-DispatchedTask$run$1":I
    iget v2, v1, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .end local v0    # "$i$a$-assert-DispatchedTask$run$1":I
    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 83
    :cond_2
    :goto_1
    iget-object v2, v1, Lkotlinx/coroutines/DispatchedTask;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 84
    .local v2, "taskContext":Lkotlinx/coroutines/scheduling/TaskContext;
    const/4 v0, 0x0

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    .line 85
    .local v3, "fatalException":Ljava/lang/Throwable;
    nop

    .line 86
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DispatchedTask;->getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;

    move-result-object v4

    if-eqz v4, :cond_8

    check-cast v4, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 87
    .local v4, "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    iget-object v5, v4, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .line 88
    .local v5, "continuation":Lkotlin/coroutines/Continuation;
    invoke-interface {v5}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    .line 89
    .local v6, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DispatchedTask;->takeState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v7

    .line 90
    .local v7, "state":Ljava/lang/Object;
    iget-object v8, v4, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .local v8, "countOrElement$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 223
    .local v9, "$i$f$withCoroutineContext":I
    invoke-static {v6, v8}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 224
    .local v10, "oldValue$iv":Ljava/lang/Object;
    nop

    .line 225
    const/4 v11, 0x0

    .line 91
    .local v11, "$i$a$-withCoroutineContext-DispatchedTask$run$2":I
    :try_start_1
    invoke-virtual {v1, v7}, Lkotlinx/coroutines/DispatchedTask;->getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 97
    .local v12, "exception":Ljava/lang/Throwable;
    if-nez v12, :cond_3

    :try_start_2
    iget v13, v1, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-static {v13}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result v13

    if-eqz v13, :cond_3

    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v6, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 225
    .end local v11    # "$i$a$-withCoroutineContext-DispatchedTask$run$2":I
    .end local v12    # "exception":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_6

    .line 98
    .local v0, "job":Lkotlinx/coroutines/Job;
    .restart local v11    # "$i$a$-withCoroutineContext-DispatchedTask$run$2":I
    .restart local v12    # "exception":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    if-eqz v0, :cond_6

    :try_start_3
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v13

    if-nez v13, :cond_6

    .line 99
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v13

    .line 100
    .local v13, "cause":Ljava/util/concurrent/CancellationException;
    move-object v14, v13

    check-cast v14, Ljava/lang/Throwable;

    invoke-virtual {v1, v7, v14}, Lkotlinx/coroutines/DispatchedTask;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 101
    move-object v14, v5

    .local v14, "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    const/4 v15, 0x0

    .line 226
    .local v15, "$i$f$resumeWithStackTrace":I
    sget-object v16, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/16 v16, 0x0

    .line 227
    .local v16, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v17, v0

    .end local v0    # "job":Lkotlinx/coroutines/Job;
    .local v17, "job":Lkotlinx/coroutines/Job;
    instance-of v0, v14, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v0, :cond_4

    move-object/from16 v18, v4

    goto :goto_3

    .line 228
    :cond_4
    move-object v0, v13

    check-cast v0, Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v18, v4

    .end local v4    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .local v18, "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :try_start_4
    move-object v4, v14

    check-cast v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v0, v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_4

    .line 227
    .end local v17    # "job":Lkotlinx/coroutines/Job;
    .end local v18    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v0    # "job":Lkotlinx/coroutines/Job;
    .restart local v4    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :cond_5
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    .end local v0    # "job":Lkotlinx/coroutines/Job;
    .end local v4    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v17    # "job":Lkotlinx/coroutines/Job;
    .restart local v18    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_3
    move-object v0, v13

    check-cast v0, Ljava/lang/Throwable;

    .line 226
    .end local v16    # "$i$f$recoverStackTrace":I
    :goto_4
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v14, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 229
    .end local v13    # "cause":Ljava/util/concurrent/CancellationException;
    .end local v14    # "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    .end local v15    # "$i$f$resumeWithStackTrace":I
    goto :goto_5

    .line 98
    .end local v17    # "job":Lkotlinx/coroutines/Job;
    .end local v18    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v0    # "job":Lkotlinx/coroutines/Job;
    .restart local v4    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :cond_6
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    .line 103
    .end local v0    # "job":Lkotlinx/coroutines/Job;
    .end local v4    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v17    # "job":Lkotlinx/coroutines/Job;
    .restart local v18    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    if-eqz v12, :cond_7

    .line 104
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v12}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_5

    .line 106
    :cond_7
    invoke-virtual {v1, v7}, Lkotlinx/coroutines/DispatchedTask;->getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 107
    .end local v12    # "exception":Ljava/lang/Throwable;
    .end local v17    # "job":Lkotlinx/coroutines/Job;
    :goto_5
    nop

    .line 108
    nop

    .line 109
    nop

    .end local v11    # "$i$a$-withCoroutineContext-DispatchedTask$run$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 230
    :try_start_5
    invoke-static {v6, v10}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 225
    nop

    .line 230
    .end local v8    # "countOrElement$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$withCoroutineContext":I
    .end local v10    # "oldValue$iv":Ljava/lang/Object;
    nop

    .line 114
    .end local v5    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v6    # "context":Lkotlin/coroutines/CoroutineContext;
    .end local v7    # "state":Ljava/lang/Object;
    .end local v18    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :try_start_6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    .line 222
    .local v0, "$this$runCatching":Lkotlinx/coroutines/DispatchedTask;
    const/4 v4, 0x0

    .line 114
    .local v4, "$i$a$-runCatching-DispatchedTask$run$result$1":I
    invoke-interface {v2}, Lkotlinx/coroutines/scheduling/TaskContext;->afterTask()V

    .end local v0    # "$this$runCatching":Lkotlinx/coroutines/DispatchedTask;
    .end local v4    # "$i$a$-runCatching-DispatchedTask$run$result$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 225
    .restart local v5    # "continuation":Lkotlin/coroutines/Continuation;
    .restart local v6    # "context":Lkotlin/coroutines/CoroutineContext;
    .restart local v7    # "state":Ljava/lang/Object;
    .restart local v8    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v9    # "$i$f$withCoroutineContext":I
    .restart local v10    # "oldValue$iv":Ljava/lang/Object;
    .restart local v18    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :catchall_2
    move-exception v0

    goto :goto_6

    .end local v18    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .local v4, "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v4

    .line 230
    .end local v4    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v18    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    :goto_6
    :try_start_7
    invoke-static {v6, v10}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .end local v2    # "taskContext":Lkotlinx/coroutines/scheduling/TaskContext;
    .end local v3    # "fatalException":Ljava/lang/Throwable;
    throw v0

    .line 86
    .end local v5    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v6    # "context":Lkotlin/coroutines/CoroutineContext;
    .end local v7    # "state":Ljava/lang/Object;
    .end local v8    # "countOrElement$iv":Ljava/lang/Object;
    .end local v9    # "$i$f$withCoroutineContext":I
    .end local v10    # "oldValue$iv":Ljava/lang/Object;
    .end local v18    # "delegate":Lkotlinx/coroutines/internal/DispatchedContinuation;
    .restart local v2    # "taskContext":Lkotlinx/coroutines/scheduling/TaskContext;
    .restart local v3    # "fatalException":Ljava/lang/Throwable;
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v2    # "taskContext":Lkotlinx/coroutines/scheduling/TaskContext;
    .end local v3    # "fatalException":Ljava/lang/Throwable;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 110
    .restart local v2    # "taskContext":Lkotlinx/coroutines/scheduling/TaskContext;
    .restart local v3    # "fatalException":Ljava/lang/Throwable;
    :catchall_4
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Throwable;
    move-object v3, v0

    .line 114
    .end local v0    # "e":Ljava/lang/Throwable;
    :try_start_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    .line 222
    .local v0, "$this$runCatching":Lkotlinx/coroutines/DispatchedTask;
    const/4 v4, 0x0

    .line 114
    .local v4, "$i$a$-runCatching-DispatchedTask$run$result$1":I
    invoke-interface {v2}, Lkotlinx/coroutines/scheduling/TaskContext;->afterTask()V

    .end local v0    # "$this$runCatching":Lkotlinx/coroutines/DispatchedTask;
    .end local v4    # "$i$a$-runCatching-DispatchedTask$run$result$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    :goto_7
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, "result":Ljava/lang/Object;
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 116
    .end local v0    # "result":Ljava/lang/Object;
    nop

    .line 117
    return-void
.end method

.method public abstract takeState$kotlinx_coroutines_core()Ljava/lang/Object;
.end method
