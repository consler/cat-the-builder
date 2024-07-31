.class final synthetic Lkotlinx/coroutines/flow/FlowKt__CountKt;
.super Ljava/lang/Object;
.source "Count.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCount.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Count.kt\nkotlinx/coroutines/flow/FlowKt__CountKt\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,38:1\n72#2,3:39\n72#2,3:42\n*E\n*S KotlinDebug\n*F\n+ 1 Count.kt\nkotlinx/coroutines/flow/FlowKt__CountKt\n*L\n18#1,3:39\n30#1,3:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a!\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u001aE\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\"\u0010\u0005\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "count",
        "",
        "T",
        "Lkotlinx/coroutines/flow/Flow;",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "predicate",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x4,
        0x0
    }
    xs = "kotlinx/coroutines/flow/FlowKt"
.end annotation


# direct methods
.method public static final count(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$count"    # Lkotlinx/coroutines/flow/Flow;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 16
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    move-object v3, v2

    .local v3, "i":Lkotlin/jvm/internal/Ref$IntRef;
    move v4, v5

    .local v2, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .local v4, "$i$f$collect":I
    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->L$2:Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->L$1:Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->L$0:Ljava/lang/Object;

    move-object p0, v5

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "i":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v4    # "$i$f$collect":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 18
    .restart local v3    # "i":Lkotlin/jvm/internal/Ref$IntRef;
    move-object v5, p0

    .local v5, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v6, 0x0

    .line 39
    .local v6, "$i$f$collect":I
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$1;

    invoke-direct {v7, v3}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$1;->label:I

    invoke-interface {v5, v7, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_3

    .line 16
    return-object v2

    .line 39
    :cond_3
    move-object v2, v5

    move v4, v6

    .line 41
    .end local v5    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v6    # "$i$f$collect":I
    .restart local v2    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .restart local v4    # "$i$f$collect":I
    :goto_1
    nop

    .line 22
    .end local v2    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$collect":I
    iget v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public static final count(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$count"    # Lkotlinx/coroutines/flow/Flow;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 28
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    move-object v3, v2

    .local v2, "i":Lkotlin/jvm/internal/Ref$IntRef;
    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    move v4, v5

    .local v4, "$i$f$collect":I
    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->L$3:Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->L$2:Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->L$1:Ljava/lang/Object;

    move-object p1, v5

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->L$0:Ljava/lang/Object;

    move-object p0, v5

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 36
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "i":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$collect":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 30
    .local v3, "i":Lkotlin/jvm/internal/Ref$IntRef;
    move-object v5, p0

    .local v5, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v6, 0x0

    .line 42
    .local v6, "$i$f$collect":I
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;

    invoke-direct {v7, p1, v3}, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$$inlined$collect$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__CountKt$count$3;->label:I

    invoke-interface {v5, v7, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_3

    .line 28
    return-object v2

    .line 42
    :cond_3
    move-object v2, v3

    move-object v3, v5

    move v4, v6

    .line 44
    .end local v5    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v6    # "$i$f$collect":I
    .restart local v2    # "i":Lkotlin/jvm/internal/Ref$IntRef;
    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .restart local v4    # "$i$f$collect":I
    :goto_1
    nop

    .line 36
    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$collect":I
    iget v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3
.end method
