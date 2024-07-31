.class public final Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Merge.kt\nkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3\n*L\n1#1,132:1\n28#2,9:133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "emit",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field final synthetic $previousFlow$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $this_flowScope$inlined:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->this$0:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->$this_flowScope$inlined:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->$previousFlow$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;

    iget v3, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;

    invoke-direct {v2, v0, v1}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;-><init>(Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;Lkotlin/coroutines/Continuation;)V

    .local v2, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 27
    iget v5, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->label:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    move-object v4, v7

    .local v4, "continuation":Lkotlin/coroutines/Continuation;
    move-object v5, v7

    .local v5, "$this$apply":Lkotlinx/coroutines/Job;
    const/4 v6, 0x0

    move v8, v6

    .local v6, "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    .local v8, "$i$a$-apply-ChannelFlowTransformLatest$flowCollect$3$1$1":I
    move-object v9, v7

    .local v9, "value":Ljava/lang/Object;
    iget-object v10, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$5:Ljava/lang/Object;

    move-object v5, v10

    check-cast v5, Lkotlinx/coroutines/Job;

    iget-object v10, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/Job;

    iget-object v9, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$3:Ljava/lang/Object;

    iget-object v10, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$2:Ljava/lang/Object;

    move-object v4, v10

    check-cast v4, Lkotlin/coroutines/Continuation;

    iget-object v10, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    .end local p1    # "value":Ljava/lang/Object;
    .local v10, "value":Ljava/lang/Object;
    iget-object v11, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;

    .end local p0    # "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    .local v11, "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v10

    goto :goto_1

    .line 141
    .end local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v5    # "$this$apply":Lkotlinx/coroutines/Job;
    .end local v6    # "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    .end local v8    # "$i$a$-apply-ChannelFlowTransformLatest$flowCollect$3$1$1":I
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    .end local v11    # "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    .restart local p0    # "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 27
    .restart local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    .local v5, "continuation":Lkotlin/coroutines/Continuation;
    move-object/from16 v9, p1

    .restart local v9    # "value":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 133
    .local v8, "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    iget-object v10, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->$previousFlow$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/Job;

    if-eqz v10, :cond_4

    move-object v11, v10

    .local v11, "$this$apply":Lkotlinx/coroutines/Job;
    const/4 v12, 0x0

    .line 134
    .local v12, "$i$a$-apply-ChannelFlowTransformLatest$flowCollect$3$1$1":I
    new-instance v13, Lkotlinx/coroutines/flow/internal/ChildCancelledException;

    invoke-direct {v13}, Lkotlinx/coroutines/flow/internal/ChildCancelledException;-><init>()V

    check-cast v13, Ljava/util/concurrent/CancellationException;

    invoke-interface {v11, v13}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 135
    iput-object v0, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    move-object/from16 v13, p1

    iput-object v13, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$3:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$4:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->L$5:Ljava/lang/Object;

    iput v6, v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$1;->label:I

    invoke-interface {v11, v2}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_3

    .line 27
    return-object v4

    .line 135
    :cond_3
    move-object v4, v5

    move v6, v8

    move-object v5, v11

    move v8, v12

    move-object v11, v0

    .line 136
    .end local v12    # "$i$a$-apply-ChannelFlowTransformLatest$flowCollect$3$1$1":I
    .end local p0    # "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    .end local p1    # "value":Ljava/lang/Object;
    .restart local v4    # "continuation":Lkotlin/coroutines/Continuation;
    .local v5, "$this$apply":Lkotlinx/coroutines/Job;
    .restart local v6    # "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    .local v8, "$i$a$-apply-ChannelFlowTransformLatest$flowCollect$3$1$1":I
    .local v11, "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    .local v13, "value":Ljava/lang/Object;
    :goto_1
    nop

    .line 133
    .end local v5    # "$this$apply":Lkotlinx/coroutines/Job;
    .end local v8    # "$i$a$-apply-ChannelFlowTransformLatest$flowCollect$3$1$1":I
    move-object v5, v4

    move v8, v6

    goto :goto_2

    .end local v4    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v6    # "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    .end local v11    # "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    .end local v13    # "value":Ljava/lang/Object;
    .local v5, "continuation":Lkotlin/coroutines/Continuation;
    .local v8, "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_4
    move-object/from16 v13, p1

    move-object v11, v0

    .line 138
    .end local p1    # "value":Ljava/lang/Object;
    .restart local v11    # "this":Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    .restart local v13    # "value":Ljava/lang/Object;
    :goto_2
    iget-object v4, v11, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->$previousFlow$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v14, v11, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;->$this_flowScope$inlined:Lkotlinx/coroutines/CoroutineScope;

    const/4 v15, 0x0

    sget-object v16, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v6, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$lambda$1;

    invoke-direct {v6, v9, v7, v11}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$lambda$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;)V

    move-object/from16 v17, v6

    check-cast v17, Lkotlin/jvm/functions/Function2;

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v6

    iput-object v6, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 141
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v5    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v8    # "$i$a$-collect-ChannelFlowTransformLatest$flowCollect$3$1":I
    .end local v9    # "value":Ljava/lang/Object;
    return-object v4
.end method
