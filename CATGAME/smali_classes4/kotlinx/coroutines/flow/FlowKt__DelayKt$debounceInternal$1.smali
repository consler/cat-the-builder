.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Delay.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__DelayKt;->debounceInternal$FlowKt__DelayKt(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,351:1\n16#2:352\n16#2:354\n1#3:353\n199#4,11:355\n*E\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n*L\n222#1:352\n225#1:354\n232#1,11:355\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "downstream",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1"
    f = "Delay.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x162,
        0x166
    }
    m = "invokeSuspend"
    n = {
        "$this$scopedFlow",
        "downstream",
        "values",
        "lastValue",
        "timeoutMillis",
        "$this$scopedFlow",
        "downstream",
        "values",
        "lastValue",
        "timeoutMillis"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field final synthetic $this_debounceInternal:Lkotlinx/coroutines/flow/Flow;

.field final synthetic $timeoutMillisSelector:Lkotlin/jvm/functions/Function1;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field private p$0:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$this_debounceInternal:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$timeoutMillisSelector:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$this_debounceInternal:Lkotlinx/coroutines/flow/Flow;

    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$timeoutMillisSelector:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->p$0:Lkotlinx/coroutines/flow/FlowCollector;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->create(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 210
    iget v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v3, :cond_0

    move-object v2, v8

    .local v2, "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    move-object v9, v8

    .local v9, "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    move-object v10, v8

    .local v10, "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    move v11, v4

    .local v11, "$i$f$select":I
    move-object v12, v8

    .local v12, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v13, v8

    .local v13, "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v14, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$5:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;

    iget-object v14, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$4:Ljava/lang/Object;

    move-object v9, v14

    check-cast v9, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v14, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    move-object v13, v14

    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v14, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    move-object v10, v14

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v14, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    move-object v12, v14

    check-cast v12, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v14, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    move-object v2, v14

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v2

    move/from16 v22, v3

    move-object v11, v12

    move-object v12, v13

    move-object v2, v0

    move-object v13, v1

    move-object/from16 v0, p1

    goto/16 :goto_a

    .line 251
    .end local v2    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local v9    # "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v10    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "$i$f$select":I
    .end local v12    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v13    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    move-object v2, v8

    .restart local v2    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    move-object v9, v8

    .restart local v9    # "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    move-object v10, v8

    .restart local v10    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v11, v8

    .local v11, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    move-object v12, v8

    .local v12, "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v13, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$4:Ljava/lang/Object;

    move-object v9, v13

    check-cast v9, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v13, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    move-object v12, v13

    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    move-object v10, v13

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    move-object v11, v13

    check-cast v11, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v13, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    move-object v2, v13

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v1

    move-object v14, v9

    move-object v9, v2

    move-object v2, v0

    move-object/from16 v0, p1

    goto/16 :goto_2

    .end local v2    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local v9    # "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v10    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v12    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .restart local v2    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    iget-object v9, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->p$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 213
    .local v9, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v11, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1;

    invoke-direct {v11, v1, v8}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v11

    check-cast v16, Lkotlin/jvm/functions/Function2;

    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object v13, v2

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v11

    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 217
    .restart local v10    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v8, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v13, v1

    move-object v12, v11

    move-object v11, v9

    move-object v9, v2

    move-object v2, v0

    move-object/from16 v0, p1

    .line 218
    .end local v2    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v9, "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .restart local v11    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v12    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v13, "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    :goto_0
    iget-object v14, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v15, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->DONE:Lkotlinx/coroutines/internal/Symbol;

    if-eq v14, v15, :cond_10

    .line 219
    new-instance v14, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v5, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 221
    .local v14, "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v15, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v15, :cond_8

    .line 222
    iget-object v15, v13, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$timeoutMillisSelector:Lkotlin/jvm/functions/Function1;

    sget-object v4, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .local v4, "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    iget-object v3, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .local v3, "value$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 352
    .local v18, "$i$f$unbox":I
    if-ne v3, v4, :cond_3

    move-object v3, v8

    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v4    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .end local v18    # "$i$f$unbox":I
    :cond_3
    invoke-interface {v15, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iput-wide v3, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 223
    iget-wide v3, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    move v3, v7

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    .line 224
    iget-wide v3, v14, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 225
    sget-object v3, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    .local v3, "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    iget-object v4, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .local v4, "value$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 354
    .local v15, "$i$f$unbox":I
    if-ne v4, v3, :cond_5

    move-object v4, v8

    .end local v3    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .end local v4    # "value$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$unbox":I
    :cond_5
    iput-object v9, v13, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    iput-object v11, v13, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    iput-object v10, v13, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    iput-object v12, v13, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    iput-object v14, v13, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$4:Ljava/lang/Object;

    iput v7, v13, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->label:I

    .line 225
    invoke-interface {v11, v4, v13}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6

    .line 210
    return-object v2

    .line 226
    :cond_6
    :goto_2
    iput-object v8, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, v2

    move-object v15, v10

    move-object v4, v14

    move-object v2, v0

    move-object v14, v11

    move-object/from16 v25, v13

    move-object v13, v12

    move-object/from16 v12, v25

    goto :goto_3

    .line 353
    :cond_7
    const/4 v2, 0x0

    .line 223
    .local v2, "$i$a$-require-FlowKt__DelayKt$debounceInternal$1$1":I
    nop

    .end local v2    # "$i$a$-require-FlowKt__DelayKt$debounceInternal$1$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Debounce timeout should not be negative"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 230
    :cond_8
    move-object v3, v2

    move-object v15, v10

    move-object v4, v14

    move-object v2, v0

    move-object v14, v11

    move-object/from16 v25, v13

    move-object v13, v12

    move-object/from16 v12, v25

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v10    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v11    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .local v2, "$result":Ljava/lang/Object;
    .local v4, "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    .local v12, "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .local v13, "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v14, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .local v15, "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 353
    const/4 v0, 0x0

    .line 230
    .local v0, "$i$a$-assert-FlowKt__DelayKt$debounceInternal$1$2":I
    iget-object v10, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v10, :cond_a

    iget-wide v10, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v10, v10, v5

    if-lez v10, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    move v0, v7

    .end local v0    # "$i$a$-assert-FlowKt__DelayKt$debounceInternal$1$2":I
    :goto_5
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 232
    :cond_c
    :goto_6
    const/16 v18, 0x0

    .line 355
    .local v18, "$i$f$select":I
    nop

    .line 358
    iput-object v9, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    iput-object v14, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    iput-object v15, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    iput-object v13, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    iput-object v4, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$4:Ljava/lang/Object;

    iput-object v12, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$5:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->label:I

    move-object v10, v12

    check-cast v10, Lkotlin/coroutines/Continuation;

    .local v10, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/16 v17, 0x0

    .line 359
    .local v17, "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$3$iv":I
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-direct {v0, v10}, Lkotlinx/coroutines/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object/from16 p1, v0

    .line 360
    .local p1, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    nop

    .line 361
    move-object/from16 v5, p1

    .end local p1    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .local v5, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    :try_start_0
    move-object v0, v5

    check-cast v0, Lkotlinx/coroutines/selects/SelectBuilder;

    .local v0, "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    const/4 v6, 0x0

    .line 234
    .local v6, "$i$a$-select-FlowKt__DelayKt$debounceInternal$1$3":I
    iget-object v7, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v7, :cond_d

    .line 235
    move-object v7, v9

    .end local v9    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .local v7, "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    :try_start_1
    iget-wide v8, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v19, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v20, 0x0

    move-object/from16 v21, v10

    .end local v10    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v21, "uCont$iv":Lkotlin/coroutines/Continuation;
    move-object/from16 v10, v19

    move/from16 v22, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v12

    .end local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .local v20, "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    move-object v12, v13

    move-object/from16 v23, v13

    .end local v13    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v23, "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v13, v4

    move-object/from16 v24, v14

    .end local v14    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .local v24, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    move-object/from16 p1, v15

    .end local v15    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local p1, "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    :try_start_2
    invoke-direct/range {v10 .. v15}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v10, v19

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v8, v9, v10}, Lkotlinx/coroutines/selects/SelectBuilder;->onTimeout(JLkotlin/jvm/functions/Function1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 362
    .end local v0    # "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    .end local v6    # "$i$a$-select-FlowKt__DelayKt$debounceInternal$1$3":I
    :catchall_0
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_8

    .end local v20    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v23    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v24    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p1    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v10    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .restart local v13    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v14    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v15    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_1
    move-exception v0

    move-object/from16 v21, v10

    move/from16 v22, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object v8, v15

    .end local v10    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .end local v13    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v15    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v20    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .restart local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v23    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v24    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local p1    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    goto :goto_8

    .line 234
    .end local v7    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local v20    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v23    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v24    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p1    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v0    # "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    .restart local v6    # "$i$a$-select-FlowKt__DelayKt$debounceInternal$1$3":I
    .restart local v9    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .restart local v10    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .restart local v13    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v14    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v15    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_d
    move-object v7, v9

    move-object/from16 v21, v10

    move/from16 v22, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 p1, v15

    .line 241
    .end local v9    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local v10    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .end local v13    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v15    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .restart local v20    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .restart local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v23    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v24    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local p1    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_7
    move-object/from16 v8, p1

    .end local p1    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v8, "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    :try_start_3
    iget-object v9, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v9}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v9

    new-instance v19, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;

    const/4 v11, 0x0

    move-object/from16 v10, v19

    move-object/from16 v12, v23

    move-object v13, v4

    move-object/from16 v14, v24

    move-object v15, v8

    invoke-direct/range {v10 .. v15}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v10, v19

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v9, v10}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 249
    .end local v0    # "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    .end local v6    # "$i$a$-select-FlowKt__DelayKt$debounceInternal$1$3":I
    goto :goto_9

    .line 362
    :catchall_2
    move-exception v0

    goto :goto_8

    .end local v7    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local v8    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v20    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v23    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v24    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v9    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .restart local v10    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .restart local v13    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v14    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v15    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_3
    move-exception v0

    move-object v7, v9

    move-object/from16 v21, v10

    move/from16 v22, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object v8, v15

    .line 363
    .end local v9    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local v10    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .end local v13    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v15    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local v7    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .restart local v8    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v20    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .restart local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v23    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v24    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    :goto_8
    invoke-virtual {v5, v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 364
    .end local v0    # "e$iv":Ljava/lang/Throwable;
    :goto_9
    nop

    .line 365
    invoke-virtual {v5}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 358
    .end local v5    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v17    # "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$3$iv":I
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_e

    move-object/from16 v5, v20

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_e
    if-ne v0, v3, :cond_f

    .line 210
    return-object v3

    .line 358
    :cond_f
    move-object v0, v2

    move-object v2, v3

    move-object v9, v4

    move-object v10, v8

    move-object/from16 v13, v20

    move-object/from16 v12, v23

    move-object/from16 v11, v24

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v4    # "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    .end local v8    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v18    # "$i$f$select":I
    .end local v20    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    .end local v23    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v24    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .local v0, "$result":Ljava/lang/Object;
    .local v9, "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    .local v10, "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v11    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .local v12, "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v13, "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
    :goto_a
    nop

    .line 218
    .end local v9    # "timeoutMillis":Lkotlin/jvm/internal/Ref$LongRef;
    move-object v9, v7

    move/from16 v3, v22

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 251
    .end local v7    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local v10    # "values":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v12    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v9, "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    :cond_10
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method
