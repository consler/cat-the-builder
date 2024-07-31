.class public final Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ContextKt;->flowWith(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Context.kt\nkotlinx/coroutines/flow/FlowKt__ContextKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 4 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,112:1\n328#2:113\n329#2,2:115\n333#2:120\n259#3:114\n72#4,3:117\n*E\n*S KotlinDebug\n*F\n+ 1 Context.kt\nkotlinx/coroutines/flow/FlowKt__ContextKt\n*L\n328#1:114\n330#1,3:117\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field final synthetic $bufferSize$inlined:I

.field final synthetic $builder$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $flowContext$inlined:Lkotlin/coroutines/CoroutineContext;

.field final synthetic $source$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$source$inlined:Lkotlinx/coroutines/flow/Flow;

    iput p2, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$bufferSize$inlined:I

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$builder$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$flowContext$inlined:Lkotlin/coroutines/CoroutineContext;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 108
    move-object v0, p1

    .local v0, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v1, p2

    .local v1, "continuation":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 113
    .local v2, "$i$a$-unsafeFlow-FlowKt__ContextKt$flowWith$1":I
    const/4 v3, 0x0

    .line 114
    .local v3, "$i$f$currentCoroutineContext":I
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 113
    .end local v3    # "$i$f$currentCoroutineContext":I
    sget-object v3, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v3, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v4, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 115
    .local v3, "originalContext":Lkotlin/coroutines/CoroutineContext;
    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$source$inlined:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v4, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    iget v5, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$bufferSize$inlined:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7, v6}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;ILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    .line 116
    .local v4, "prepared":Lkotlinx/coroutines/flow/Flow;
    iget-object v5, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$builder$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    iget-object v8, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$flowContext$inlined:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v5, v8}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iget v8, p0, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1;->$bufferSize$inlined:I

    invoke-static {v5, v8, v6, v7, v6}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;ILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    .local v5, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v6, 0x0

    .line 117
    .local v6, "$i$f$collect":I
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1$lambda$1;

    invoke-direct {v7, v0}, Lkotlinx/coroutines/flow/FlowKt__ContextKt$flowWith$$inlined$unsafeFlow$1$lambda$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v5, v7, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_0

    return-object v7

    .line 119
    :cond_0
    nop

    .line 120
    .end local v3    # "originalContext":Lkotlin/coroutines/CoroutineContext;
    .end local v4    # "prepared":Lkotlinx/coroutines/flow/Flow;
    .end local v5    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v6    # "$i$f$collect":I
    nop

    .line 109
    .end local v0    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v1    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-unsafeFlow-FlowKt__ContextKt$flowWith$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
