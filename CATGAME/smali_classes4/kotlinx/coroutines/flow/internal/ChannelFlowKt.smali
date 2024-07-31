.class public final Lkotlinx/coroutines/flow/internal/ChannelFlowKt;
.super Ljava/lang/Object;
.source "ChannelFlow.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,257:1\n43#2,5:258\n*E\n*S KotlinDebug\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n*L\n238#1,5:258\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a[\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001\"\u0004\u0008\u0001\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\"\u0010\u0008\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\tH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\r\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u000eH\u0000\u001a&\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0010\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "withContextUndispatched",
        "T",
        "V",
        "newContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "value",
        "countOrElement",
        "",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "asChannelFlow",
        "Lkotlinx/coroutines/flow/internal/ChannelFlow;",
        "Lkotlinx/coroutines/flow/Flow;",
        "withUndispatchedContextCollector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "emitContext",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final synthetic access$withUndispatchedContextCollector(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/FlowCollector;
    .locals 1
    .param p0, "$this$access_u24withUndispatchedContextCollector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p1, "emitContext"    # Lkotlin/coroutines/CoroutineContext;

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->withUndispatchedContextCollector(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/FlowCollector;

    move-result-object v0

    return-object v0
.end method

.method public static final asChannelFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlow;
    .locals 8
    .param p0, "$this$asChannelFlow"    # Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/internal/ChannelFlow<",
            "TT;>;"
        }
    .end annotation

    .line 16
    instance-of v0, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    :goto_1
    return-object v0
.end method

.method public static final withContextUndispatched(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "newContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "countOrElement"    # Ljava/lang/Object;
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext;",
            "TV;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-TV;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 237
    move-object v0, p4

    .local v0, "uCont":Lkotlin/coroutines/Continuation;
    const/4 v1, 0x0

    .line 238
    .local v1, "$i$a$-suspendCoroutineUninterceptedOrReturn-ChannelFlowKt$withContextUndispatched$2":I
    move-object v2, p2

    .local v2, "countOrElement$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "context$iv":Lkotlin/coroutines/CoroutineContext;
    const/4 v4, 0x0

    .line 258
    .local v4, "$i$f$withCoroutineContext":I
    invoke-static {v3, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 259
    .local v5, "oldValue$iv":Ljava/lang/Object;
    nop

    .line 260
    const/4 v6, 0x0

    .line 239
    .local v6, "$i$a$-withCoroutineContext-ChannelFlowKt$withContextUndispatched$2$1":I
    :try_start_0
    new-instance v7, Lkotlinx/coroutines/flow/internal/StackFrameContinuation;

    invoke-direct {v7, v0, p0}, Lkotlinx/coroutines/flow/internal/StackFrameContinuation;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    if-eqz p3, :cond_1

    const/4 v8, 0x2

    invoke-static {p3, v8}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, p1, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .end local v6    # "$i$a$-withCoroutineContext-ChannelFlowKt$withContextUndispatched$2$1":I
    invoke-static {v3, v5}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 260
    nop

    .line 237
    .end local v0    # "uCont":Lkotlin/coroutines/Continuation;
    .end local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-ChannelFlowKt$withContextUndispatched$2":I
    .end local v2    # "countOrElement$iv":Ljava/lang/Object;
    .end local v3    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v4    # "$i$f$withCoroutineContext":I
    .end local v5    # "oldValue$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne v7, v0, :cond_0

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 241
    :cond_0
    return-object v7

    .line 239
    .restart local v0    # "uCont":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-ChannelFlowKt$withContextUndispatched$2":I
    .restart local v2    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v3    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v4    # "$i$f$withCoroutineContext":I
    .restart local v5    # "oldValue$iv":Ljava/lang/Object;
    .restart local v6    # "$i$a$-withCoroutineContext-ChannelFlowKt$withContextUndispatched$2$1":I
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "uCont":Lkotlin/coroutines/Continuation;
    .end local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-ChannelFlowKt$withContextUndispatched$2":I
    .end local v2    # "countOrElement$iv":Ljava/lang/Object;
    .end local v3    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v4    # "$i$f$withCoroutineContext":I
    .end local v5    # "oldValue$iv":Ljava/lang/Object;
    .end local p0    # "newContext":Lkotlin/coroutines/CoroutineContext;
    .end local p1    # "value":Ljava/lang/Object;
    .end local p2    # "countOrElement":Ljava/lang/Object;
    .end local p3    # "block":Lkotlin/jvm/functions/Function2;
    .end local p4    # "$completion":Lkotlin/coroutines/Continuation;
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .end local v6    # "$i$a$-withCoroutineContext-ChannelFlowKt$withContextUndispatched$2$1":I
    .restart local v0    # "uCont":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$i$a$-suspendCoroutineUninterceptedOrReturn-ChannelFlowKt$withContextUndispatched$2":I
    .restart local v2    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v3    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v4    # "$i$f$withCoroutineContext":I
    .restart local v5    # "oldValue$iv":Ljava/lang/Object;
    .restart local p0    # "newContext":Lkotlin/coroutines/CoroutineContext;
    .restart local p1    # "value":Ljava/lang/Object;
    .restart local p2    # "countOrElement":Ljava/lang/Object;
    .restart local p3    # "block":Lkotlin/jvm/functions/Function2;
    .restart local p4    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_0
    move-exception v6

    .line 262
    invoke-static {v3, v5}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw v6
.end method

.method public static synthetic withContextUndispatched$default(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 234
    invoke-static {p0}, Lkotlinx/coroutines/internal/ThreadContextKt;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->withContextUndispatched(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final withUndispatchedContextCollector(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/FlowCollector;
    .locals 1
    .param p0, "$this$withUndispatchedContextCollector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p1, "emitContext"    # Lkotlin/coroutines/CoroutineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "TT;>;"
        }
    .end annotation

    .line 212
    nop

    .line 214
    instance-of v0, p0, Lkotlinx/coroutines/flow/internal/SendingCollector;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lkotlinx/coroutines/flow/internal/NopCollector;

    if-eqz v0, :cond_1

    :goto_0
    move-object v0, p0

    goto :goto_1

    .line 216
    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 212
    :goto_1
    nop

    .line 217
    return-object v0
.end method
