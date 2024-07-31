.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Combine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u00020\u0004H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x39,
        0x4f,
        0x52
    }
    m = "invokeSuspend"
    n = {
        "$this$flowScope",
        "size",
        "latestValues",
        "resultChannel",
        "nonClosed",
        "remainingAbsentValues",
        "lastReceivedEpoch",
        "currentEpoch",
        "$this$flowScope",
        "size",
        "latestValues",
        "resultChannel",
        "nonClosed",
        "remainingAbsentValues",
        "lastReceivedEpoch",
        "currentEpoch",
        "element",
        "results",
        "$this$flowScope",
        "size",
        "latestValues",
        "resultChannel",
        "nonClosed",
        "remainingAbsentValues",
        "lastReceivedEpoch",
        "currentEpoch",
        "element",
        "results"
    }
    s = {
        "L$0",
        "I$0",
        "L$1",
        "L$2",
        "L$3",
        "I$1",
        "L$4",
        "B$0",
        "L$0",
        "I$0",
        "L$1",
        "L$2",
        "L$3",
        "I$1",
        "L$4",
        "I$2",
        "L$5",
        "L$6",
        "L$0",
        "I$0",
        "L$1",
        "L$2",
        "L$3",
        "I$1",
        "L$4",
        "I$2",
        "L$5",
        "L$6"
    }
.end annotation


# instance fields
.field final synthetic $arrayFactory:Lkotlin/jvm/functions/Function0;

.field final synthetic $flows:[Lkotlinx/coroutines/flow/Flow;

.field final synthetic $this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic $transform:Lkotlin/jvm/functions/Function3;

.field B$0:B

.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iput-object v0, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v6, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 22
    iget v0, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v10, :cond_2

    if-eq v0, v9, :cond_1

    if-ne v0, v8, :cond_0

    move-object v0, v2

    .local v0, "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    move-object v3, v2

    .local v3, "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v4, v2

    .local v4, "latestValues":[Ljava/lang/Object;
    move-object v5, v2

    .local v5, "lastReceivedEpoch":[B
    move v11, v1

    .local v11, "currentEpoch":B
    move-object v12, v2

    .local v12, "results":[Ljava/lang/Object;
    move-object v13, v2

    .local v13, "element":Lkotlin/collections/IndexedValue;
    move v14, v1

    .local v1, "remainingAbsentValues":I
    .local v2, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .local v14, "size":I
    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$6:Ljava/lang/Object;

    move-object v12, v15

    check-cast v12, [Ljava/lang/Object;

    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$5:Ljava/lang/Object;

    move-object v13, v15

    check-cast v13, Lkotlin/collections/IndexedValue;

    iget v11, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$2:I

    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$4:Ljava/lang/Object;

    move-object v5, v15

    check-cast v5, [B

    iget v1, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$3:Ljava/lang/Object;

    move-object v3, v15

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    move-object v2, v15

    check-cast v2, Lkotlinx/coroutines/channels/Channel;

    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    move-object v4, v15

    check-cast v4, [Ljava/lang/Object;

    iget v14, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    move-object v0, v15

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v6

    move-object v9, v12

    move v12, v11

    move-object v11, v0

    move v0, v8

    move-object v8, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_6

    .line 86
    .end local v0    # "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v1    # "remainingAbsentValues":I
    .end local v2    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v3    # "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v4    # "latestValues":[Ljava/lang/Object;
    .end local v5    # "lastReceivedEpoch":[B
    .end local v11    # "currentEpoch":B
    .end local v12    # "results":[Ljava/lang/Object;
    .end local v13    # "element":Lkotlin/collections/IndexedValue;
    .end local v14    # "size":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    move-object v0, v2

    .restart local v0    # "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    move-object v3, v2

    .restart local v3    # "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v4, v2

    .restart local v4    # "latestValues":[Ljava/lang/Object;
    move-object v5, v2

    .restart local v5    # "lastReceivedEpoch":[B
    move v11, v1

    .restart local v11    # "currentEpoch":B
    move-object v12, v2

    .restart local v12    # "results":[Ljava/lang/Object;
    move-object v13, v2

    .restart local v13    # "element":Lkotlin/collections/IndexedValue;
    move v14, v1

    .restart local v1    # "remainingAbsentValues":I
    .restart local v2    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .restart local v14    # "size":I
    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$6:Ljava/lang/Object;

    move-object v12, v15

    check-cast v12, [Ljava/lang/Object;

    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$5:Ljava/lang/Object;

    move-object v13, v15

    check-cast v13, Lkotlin/collections/IndexedValue;

    iget v11, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$2:I

    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$4:Ljava/lang/Object;

    move-object v5, v15

    check-cast v5, [B

    iget v1, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$3:Ljava/lang/Object;

    move-object v3, v15

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    move-object v2, v15

    check-cast v2, Lkotlinx/coroutines/channels/Channel;

    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    move-object v4, v15

    check-cast v4, [Ljava/lang/Object;

    iget v14, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iget-object v15, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    move-object v0, v15

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v6

    move-object v8, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object/from16 v1, p1

    move/from16 v23, v11

    move-object v11, v0

    move v0, v9

    move-object v9, v12

    move/from16 v12, v23

    goto/16 :goto_5

    .end local v0    # "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v1    # "remainingAbsentValues":I
    .end local v2    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v3    # "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v4    # "latestValues":[Ljava/lang/Object;
    .end local v5    # "lastReceivedEpoch":[B
    .end local v11    # "currentEpoch":B
    .end local v12    # "results":[Ljava/lang/Object;
    .end local v13    # "element":Lkotlin/collections/IndexedValue;
    .end local v14    # "size":I
    :cond_2
    move-object v0, v2

    .restart local v0    # "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    move-object v3, v2

    .restart local v3    # "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object v4, v2

    .restart local v4    # "latestValues":[Ljava/lang/Object;
    move-object v5, v2

    .restart local v5    # "lastReceivedEpoch":[B
    move v11, v1

    .restart local v11    # "currentEpoch":B
    move v12, v1

    .restart local v1    # "remainingAbsentValues":I
    .restart local v2    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .local v12, "size":I
    iget-byte v11, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->B$0:B

    iget-object v13, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$4:Ljava/lang/Object;

    move-object v5, v13

    check-cast v5, [B

    iget v1, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iget-object v13, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$3:Ljava/lang/Object;

    move-object v3, v13

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v13, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    move-object v2, v13

    check-cast v2, Lkotlinx/coroutines/channels/Channel;

    iget-object v13, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    move-object v4, v13

    check-cast v4, [Ljava/lang/Object;

    iget v12, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iget-object v13, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    move-object v0, v13

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v15, p1

    move-object v13, v6

    move v14, v12

    move v12, v11

    move-object v11, v0

    move-object v0, v15

    goto/16 :goto_2

    .end local v0    # "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v1    # "remainingAbsentValues":I
    .end local v2    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v3    # "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v4    # "latestValues":[Ljava/lang/Object;
    .end local v5    # "lastReceivedEpoch":[B
    .end local v11    # "currentEpoch":B
    .end local v12    # "size":I
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v11, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .local v11, "$this$flowScope":Lkotlinx/coroutines/CoroutineScope;
    iget-object v0, v6, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    array-length v12, v0

    .line 24
    .restart local v12    # "size":I
    if-nez v12, :cond_4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 25
    :cond_4
    new-array v5, v12, [Ljava/lang/Object;

    .line 26
    .local v5, "latestValues":[Ljava/lang/Object;
    sget-object v14, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    move-object v13, v5

    invoke-static/range {v13 .. v18}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 27
    const/4 v0, 0x6

    invoke-static {v12, v2, v2, v0, v2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v19

    .line 28
    .local v19, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 29
    .local v4, "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    move/from16 v20, v12

    .line 30
    .local v20, "remainingAbsentValues":I
    nop

    :goto_0
    if-ge v1, v12, :cond_5

    move/from16 v21, v1

    .line 32
    .local v21, "i":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;

    const/16 v16, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, v21

    move-object/from16 v3, v19

    move-object/from16 v22, v5

    .end local v5    # "latestValues":[Ljava/lang/Object;
    .local v22, "latestValues":[Ljava/lang/Object;
    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$1;-><init>(Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;ILkotlinx/coroutines/channels/Channel;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v13

    check-cast v16, Lkotlin/jvm/functions/Function2;

    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object v13, v11

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 30
    nop

    .end local v21    # "i":I
    add-int/lit8 v1, v21, 0x1

    move-object/from16 v5, v22

    goto :goto_0

    .line 51
    .end local v22    # "latestValues":[Ljava/lang/Object;
    .restart local v5    # "latestValues":[Ljava/lang/Object;
    :cond_5
    move-object/from16 v22, v5

    .end local v5    # "latestValues":[Ljava/lang/Object;
    .restart local v22    # "latestValues":[Ljava/lang/Object;
    new-array v0, v12, [B

    .line 52
    .local v0, "lastReceivedEpoch":[B
    const/4 v1, 0x0

    move v2, v1

    move-object v14, v4

    move-object v13, v6

    move-object/from16 v4, v19

    move/from16 v3, v20

    move-object v1, v0

    move-object/from16 v0, p1

    .line 53
    .end local v19    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v20    # "remainingAbsentValues":I
    .end local v22    # "latestValues":[Ljava/lang/Object;
    .end local p0    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "lastReceivedEpoch":[B
    .local v2, "currentEpoch":B
    .local v3, "remainingAbsentValues":I
    .local v4, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .restart local v5    # "latestValues":[Ljava/lang/Object;
    .local v13, "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .local v14, "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    :goto_1
    nop

    .line 54
    add-int/lit8 v15, v2, 0x1

    int-to-byte v2, v15

    .line 57
    move-object v15, v4

    check-cast v15, Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object v11, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput v12, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput-object v5, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v4, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput-object v14, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$3:Ljava/lang/Object;

    iput v3, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iput-object v1, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$4:Ljava/lang/Object;

    iput-byte v2, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->B$0:B

    iput v10, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-static {v15, v13}, Lkotlinx/coroutines/channels/ChannelsKt;->receiveOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v7, :cond_6

    .line 22
    return-object v7

    .line 57
    :cond_6
    move-object/from16 v23, v5

    move-object v5, v1

    move v1, v3

    move-object v3, v14

    move v14, v12

    move v12, v2

    move-object v2, v4

    move-object/from16 v4, v23

    .local v1, "remainingAbsentValues":I
    .local v2, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .local v3, "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    .local v4, "latestValues":[Ljava/lang/Object;
    .local v5, "lastReceivedEpoch":[B
    .local v12, "currentEpoch":B
    .local v14, "size":I
    :goto_2
    check-cast v15, Lkotlin/collections/IndexedValue;

    if-eqz v15, :cond_10

    .line 58
    .local v15, "element":Lkotlin/collections/IndexedValue;
    :goto_3
    nop

    .line 59
    invoke-virtual {v15}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result v16

    .line 61
    .local v16, "index":I
    aget-object v10, v4, v16

    .line 62
    .local v10, "previous":Ljava/lang/Object;
    invoke-virtual {v15}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v4, v16

    .line 63
    sget-object v8, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->UNINITIALIZED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v10, v8, :cond_7

    add-int/lit8 v1, v1, -0x1

    .line 66
    :cond_7
    aget-byte v8, v5, v16

    if-ne v8, v12, :cond_8

    goto :goto_4

    .line 67
    :cond_8
    aput-byte v12, v5, v16

    .line 68
    invoke-interface {v2}, Lkotlinx/coroutines/channels/Channel;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/collections/IndexedValue;

    if-eqz v8, :cond_9

    move-object v15, v8

    .line 58
    .end local v10    # "previous":Ljava/lang/Object;
    .end local v16    # "index":I
    const/4 v8, 0x3

    const/4 v10, 0x1

    goto :goto_3

    .line 72
    :cond_9
    :goto_4
    if-nez v1, :cond_f

    .line 77
    iget-object v8, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 78
    .local v8, "results":[Ljava/lang/Object;
    if-nez v8, :cond_c

    .line 79
    iget-object v10, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    iget-object v9, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    if-eqz v4, :cond_b

    iput-object v11, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput v14, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput-object v4, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v2, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput-object v3, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$3:Ljava/lang/Object;

    iput v1, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iput-object v5, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$4:Ljava/lang/Object;

    iput v12, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$2:I

    iput-object v15, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$5:Ljava/lang/Object;

    iput-object v8, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$6:Ljava/lang/Object;

    move-object/from16 p1, v0

    const/4 v0, 0x2

    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    iput v0, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-interface {v10, v9, v4, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_a

    .line 22
    return-object v7

    .line 79
    :cond_a
    move-object v9, v8

    move-object v10, v13

    move-object v13, v15

    move-object v8, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object/from16 v1, p1

    .end local v8    # "results":[Ljava/lang/Object;
    .end local v15    # "element":Lkotlin/collections/IndexedValue;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v2, "remainingAbsentValues":I
    .local v3, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .local v4, "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    .local v5, "latestValues":[Ljava/lang/Object;
    .local v7, "lastReceivedEpoch":[B
    .local v9, "results":[Ljava/lang/Object;
    .local v10, "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .local v13, "element":Lkotlin/collections/IndexedValue;
    :goto_5
    move-object v13, v10

    const/4 v0, 0x3

    move-object/from16 v23, v3

    move v3, v2

    move v2, v12

    move v12, v14

    move-object v14, v4

    move-object/from16 v4, v23

    goto/16 :goto_7

    .end local v7    # "lastReceivedEpoch":[B
    .end local v9    # "results":[Ljava/lang/Object;
    .end local v10    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .restart local v0    # "$result":Ljava/lang/Object;
    .local v1, "remainingAbsentValues":I
    .local v2, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .local v3, "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    .local v4, "latestValues":[Ljava/lang/Object;
    .local v5, "lastReceivedEpoch":[B
    .restart local v8    # "results":[Ljava/lang/Object;
    .local v13, "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .restart local v15    # "element":Lkotlin/collections/IndexedValue;
    :cond_b
    move-object/from16 p1, v0

    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    :cond_c
    move-object/from16 p1, v0

    move v0, v9

    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    if-eqz v4, :cond_e

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xe

    const/16 v22, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v8

    invoke-static/range {v16 .. v22}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 82
    iget-object v9, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    iget-object v10, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v11, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput v14, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput-object v4, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v2, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput-object v3, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$3:Ljava/lang/Object;

    iput v1, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$1:I

    iput-object v5, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$4:Ljava/lang/Object;

    iput v12, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$2:I

    iput-object v15, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$5:Ljava/lang/Object;

    iput-object v8, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$6:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v13, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    invoke-interface {v9, v10, v8, v13}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_d

    .line 22
    return-object v7

    .line 82
    :cond_d
    move-object v9, v8

    move-object v10, v13

    move-object v13, v15

    move-object v8, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    move-object/from16 v1, p1

    .line 83
    .end local v8    # "results":[Ljava/lang/Object;
    .end local v15    # "element":Lkotlin/collections/IndexedValue;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v2, "remainingAbsentValues":I
    .local v3, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .local v4, "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    .local v5, "latestValues":[Ljava/lang/Object;
    .restart local v7    # "lastReceivedEpoch":[B
    .restart local v9    # "results":[Ljava/lang/Object;
    .restart local v10    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .local v13, "element":Lkotlin/collections/IndexedValue;
    :goto_6
    move-object v13, v10

    move-object/from16 v23, v3

    move v3, v2

    move v2, v12

    move v12, v14

    move-object v14, v4

    move-object/from16 v4, v23

    goto :goto_7

    .line 81
    .end local v7    # "lastReceivedEpoch":[B
    .end local v9    # "results":[Ljava/lang/Object;
    .end local v10    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .local v1, "remainingAbsentValues":I
    .local v2, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .local v3, "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    .local v4, "latestValues":[Ljava/lang/Object;
    .local v5, "lastReceivedEpoch":[B
    .restart local v8    # "results":[Ljava/lang/Object;
    .local v13, "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .restart local v15    # "element":Lkotlin/collections/IndexedValue;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T?>"

    invoke-direct {v0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    .end local v8    # "results":[Ljava/lang/Object;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    :cond_f
    move-object/from16 p1, v0

    const/4 v0, 0x3

    .end local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object v8, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v2

    move v2, v12

    move v12, v14

    move-object v14, v3

    move v3, v1

    move-object/from16 v1, p1

    .line 53
    .end local v15    # "element":Lkotlin/collections/IndexedValue;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v2, "currentEpoch":B
    .local v3, "remainingAbsentValues":I
    .local v4, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .local v5, "latestValues":[Ljava/lang/Object;
    .restart local v7    # "lastReceivedEpoch":[B
    .local v12, "size":I
    .local v14, "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    :goto_7
    const/4 v9, 0x2

    const/4 v10, 0x1

    move-object/from16 v23, v8

    move v8, v0

    move-object v0, v1

    move-object v1, v7

    move-object/from16 v7, v23

    goto/16 :goto_1

    .line 57
    .end local v7    # "lastReceivedEpoch":[B
    .restart local v0    # "$result":Ljava/lang/Object;
    .local v1, "remainingAbsentValues":I
    .local v2, "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .local v3, "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    .local v4, "latestValues":[Ljava/lang/Object;
    .local v5, "lastReceivedEpoch":[B
    .local v12, "currentEpoch":B
    .local v14, "size":I
    :cond_10
    move-object/from16 p1, v0

    .line 86
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v1    # "remainingAbsentValues":I
    .end local v2    # "resultChannel":Lkotlinx/coroutines/channels/Channel;
    .end local v3    # "nonClosed":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v4    # "latestValues":[Ljava/lang/Object;
    .end local v5    # "lastReceivedEpoch":[B
    .end local v12    # "currentEpoch":B
    .end local v14    # "size":I
    .restart local p1    # "$result":Ljava/lang/Object;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
