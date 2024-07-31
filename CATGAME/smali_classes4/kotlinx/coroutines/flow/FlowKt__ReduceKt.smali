.class final synthetic Lkotlinx/coroutines/flow/FlowKt__ReduceKt;
.super Ljava/lang/Object;
.source "Reduce.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n+ 3 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,147:1\n72#2,3:148\n72#2,3:151\n72#2,3:154\n128#3,15:157\n128#3,15:172\n128#3,15:187\n128#3,15:202\n128#3,15:217\n*E\n*S KotlinDebug\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n22#1,3:148\n44#1,3:151\n57#1,3:154\n72#1,15:157\n92#1,15:172\n106#1,15:187\n124#1,15:202\n137#1,15:217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u001a!\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u001aE\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\"\u0010\u0004\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a#\u0010\n\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u001aG\u0010\n\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\"\u0010\u0004\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001ay\u0010\u000b\u001a\u0002H\u000c\"\u0004\u0008\u0000\u0010\u0001\"\u0004\u0008\u0001\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0006\u0010\r\u001a\u0002H\u000c2H\u0008\u0004\u0010\u000e\u001aB\u0008\u0001\u0012\u0013\u0012\u0011H\u000c\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u0011H\u0001\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000c0\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u000fH\u0086H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014\u001as\u0010\u0015\u001a\u0002H\u0016\"\u0004\u0008\u0000\u0010\u0016\"\u0008\u0008\u0001\u0010\u0001*\u0002H\u0016*\u0008\u0012\u0004\u0012\u0002H\u00010\u00022F\u0010\u000e\u001aB\u0008\u0001\u0012\u0013\u0012\u0011H\u0016\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0017\u0012\u0013\u0012\u0011H\u0001\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0013\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00160\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u000fH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018\u001a!\u0010\u0019\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u001a#\u0010\u001a\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u0002H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "first",
        "T",
        "Lkotlinx/coroutines/flow/Flow;",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "predicate",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "firstOrNull",
        "fold",
        "R",
        "initial",
        "operation",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "acc",
        "value",
        "(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "reduce",
        "S",
        "accumulator",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "single",
        "singleOrNull",
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
.method public static final first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$first"    # Lkotlinx/coroutines/flow/Flow;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 90
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    move-object v3, v2

    .local v3, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v4, 0x0

    .local v4, "$i$f$collectWhile":I
    move-object v5, v2

    .local v2, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    .local v5, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->L$3:Ljava/lang/Object;

    move-object v2, v6

    check-cast v2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->L$2:Ljava/lang/Object;

    move-object v5, v6

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->L$1:Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->L$0:Ljava/lang/Object;

    move-object p0, v6

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v6

    goto :goto_2

    .line 97
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    .end local v3    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "$i$f$collectWhile":I
    .end local v5    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v5, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 92
    .restart local v3    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v5, p0

    .restart local v5    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v6, 0x0

    .line 172
    .local v6, "$i$f$collectWhile":I
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;

    invoke-direct {v7, v3}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 181
    .local v7, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    nop

    .line 182
    :try_start_1
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$1;->label:I

    invoke-interface {v5, v8, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v4, v2, :cond_3

    .line 90
    return-object v2

    .line 182
    :cond_3
    move v4, v6

    move-object v2, v7

    .end local v6    # "$i$f$collectWhile":I
    .end local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    .restart local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    .restart local v4    # "$i$f$collectWhile":I
    :goto_1
    goto :goto_3

    .line 183
    .end local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    .end local v4    # "$i$f$collectWhile":I
    .restart local v6    # "$i$f$collectWhile":I
    .restart local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    :catch_1
    move-exception v2

    move v4, v6

    move-object v6, v2

    move-object v2, v7

    .line 184
    .end local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    .restart local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    .restart local v4    # "$i$f$collectWhile":I
    .local v6, "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_2
    move-object v7, v2

    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v6, v7}, Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;->checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 185
    .end local v6    # "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_3
    nop

    .line 186
    nop

    .line 96
    .end local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$1;
    .end local v4    # "$i$f$collectWhile":I
    .end local v5    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v4, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v4, :cond_4

    .line 97
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v2

    .line 96
    :cond_4
    new-instance v2, Ljava/util/NoSuchElementException;

    const-string v4, "Expected at least one element"

    invoke-direct {v2, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static final first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$first"    # Lkotlinx/coroutines/flow/Flow;
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 104
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    move-object v3, v2

    .local v3, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    move-object v4, v2

    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v4, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v5, 0x0

    .local v5, "$i$f$collectWhile":I
    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$4:Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$3:Ljava/lang/Object;

    move-object v4, v6

    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$2:Ljava/lang/Object;

    move-object v2, v6

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$1:Ljava/lang/Object;

    move-object p1, v6

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$0:Ljava/lang/Object;

    move-object p0, v6

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 198
    :catch_0
    move-exception v6

    goto :goto_2

    .line 115
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v3    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .end local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v5    # "$i$f$collectWhile":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v5, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 106
    .local v3, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v5, p0

    .local v5, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v6, 0x0

    .line 187
    .local v6, "$i$f$collectWhile":I
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;

    invoke-direct {v7, p1, v3}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 196
    .local v7, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    nop

    .line 197
    :try_start_1
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->L$4:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$3;->label:I

    invoke-interface {v5, v8, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v4, v2, :cond_3

    .line 104
    return-object v2

    .line 197
    :cond_3
    move-object v2, v3

    move-object v4, v5

    move v5, v6

    move-object v3, v7

    .end local v6    # "$i$f$collectWhile":I
    .end local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .restart local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .restart local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .local v5, "$i$f$collectWhile":I
    :goto_1
    goto :goto_3

    .line 198
    .end local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .local v3, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v5, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .restart local v6    # "$i$f$collectWhile":I
    .restart local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    :catch_1
    move-exception v2

    move-object v4, v5

    move v5, v6

    move-object v6, v2

    move-object v2, v3

    move-object v3, v7

    .line 199
    .end local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .restart local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .restart local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .local v5, "$i$f$collectWhile":I
    .local v6, "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_2
    move-object v7, v3

    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v6, v7}, Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;->checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 200
    .end local v6    # "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_3
    nop

    .line 201
    nop

    .line 114
    .end local v3    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$first$$inlined$collectWhile$2;
    .end local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v5    # "$i$f$collectWhile":I
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v4, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-eq v3, v4, :cond_4

    .line 115
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v3

    .line 114
    :cond_4
    new-instance v3, Ljava/util/NoSuchElementException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected at least one element matching the predicate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public static final firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p0, "$this$firstOrNull"    # Lkotlinx/coroutines/flow/Flow;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 122
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    move-object v2, v5

    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v3, 0x0

    .local v3, "$i$f$collectWhile":I
    move-object v4, v5

    .local v4, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .local v5, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->L$3:Ljava/lang/Object;

    move-object v5, v6

    check-cast v5, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->L$2:Ljava/lang/Object;

    move-object v4, v6

    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    move-object v2, v6

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    move-object p0, v6

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v6

    goto :goto_2

    .line 128
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v3    # "$i$f$collectWhile":I
    .end local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 124
    .local v3, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v5, p0

    .local v5, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v6, 0x0

    .line 202
    .local v6, "$i$f$collectWhile":I
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;

    invoke-direct {v7, v3}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 211
    .local v7, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    nop

    .line 212
    :try_start_1
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$1;->label:I

    invoke-interface {v5, v8, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v4, v2, :cond_3

    .line 122
    return-object v2

    .line 212
    :cond_3
    move-object v2, v3

    move-object v4, v5

    move v3, v6

    move-object v5, v7

    .end local v6    # "$i$f$collectWhile":I
    .end local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    .restart local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "$i$f$collectWhile":I
    .restart local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .local v5, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    :goto_1
    goto :goto_3

    .line 213
    .end local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .local v3, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v5, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .restart local v6    # "$i$f$collectWhile":I
    .restart local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    :catch_1
    move-exception v2

    move-object v4, v5

    move-object v5, v7

    move v9, v6

    move-object v6, v2

    move-object v2, v3

    move v3, v9

    .line 214
    .end local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    .restart local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "$i$f$collectWhile":I
    .restart local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .local v5, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    .local v6, "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_2
    move-object v7, v5

    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v6, v7}, Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;->checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 215
    .end local v6    # "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_3
    nop

    .line 216
    nop

    .line 128
    .end local v3    # "$i$f$collectWhile":I
    .end local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v5    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v3
.end method

.method public static final firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$firstOrNull"    # Lkotlinx/coroutines/flow/Flow;
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 135
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    move-object v2, v5

    .local v2, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    move-object v3, v5

    .local v3, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    move-object v4, v5

    .local v4, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v5, 0x0

    .local v5, "$i$f$collectWhile":I
    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$4:Ljava/lang/Object;

    move-object v2, v6

    check-cast v2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$3:Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$2:Ljava/lang/Object;

    move-object v4, v6

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$1:Ljava/lang/Object;

    move-object p1, v6

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$0:Ljava/lang/Object;

    move-object p0, v6

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    :catch_0
    move-exception v6

    goto :goto_2

    .line 145
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    .end local v3    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "$i$f$collectWhile":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 137
    .local v3, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v5, p0

    .local v5, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v6, 0x0

    .line 217
    .local v6, "$i$f$collectWhile":I
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;

    invoke-direct {v7, p1, v3}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 226
    .local v7, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    nop

    .line 227
    :try_start_1
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->L$4:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$3;->label:I

    invoke-interface {v5, v8, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v4, v2, :cond_3

    .line 135
    return-object v2

    .line 227
    :cond_3
    move-object v4, v3

    move-object v3, v5

    move v5, v6

    move-object v2, v7

    .end local v6    # "$i$f$collectWhile":I
    .end local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    .restart local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    .local v3, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .restart local v4    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v5, "$i$f$collectWhile":I
    :goto_1
    goto :goto_3

    .line 228
    .end local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    .end local v4    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v5, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .restart local v6    # "$i$f$collectWhile":I
    .restart local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    :catch_1
    move-exception v2

    move-object v4, v3

    move-object v3, v5

    move v5, v6

    move-object v6, v2

    move-object v2, v7

    .line 229
    .end local v7    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    .restart local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    .local v3, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .restart local v4    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v5, "$i$f$collectWhile":I
    .local v6, "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_2
    move-object v7, v2

    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v6, v7}, Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;->checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 230
    .end local v6    # "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_3
    nop

    .line 231
    nop

    .line 145
    .end local v2    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
    .end local v3    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v5    # "$i$f$collectWhile":I
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v2
.end method

.method public static final fold(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$fold"    # Lkotlinx/coroutines/flow/Flow;
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function3;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;TR;",
            "Lkotlin/jvm/functions/Function3<",
            "-TR;-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 39
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    move-object v3, v2

    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    move v5, v4

    .local v2, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v4, "$i$f$collect":I
    .local v5, "$i$f$fold":I
    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->L$4:Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->L$3:Ljava/lang/Object;

    move-object v2, v6

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->L$2:Ljava/lang/Object;

    move-object p2, v6

    check-cast p2, Lkotlin/jvm/functions/Function3;

    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->L$1:Ljava/lang/Object;

    iget-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->L$0:Ljava/lang/Object;

    move-object p0, v6

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 47
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$collect":I
    .end local v5    # "$i$f$fold":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 43
    .restart local v5    # "$i$f$fold":I
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 44
    .local v3, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v6, p0

    .local v6, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v7, 0x0

    .line 151
    .local v7, "$i$f$collect":I
    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$$inlined$collect$1;

    invoke-direct {v8, v3, p2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;)V

    check-cast v8, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$1;->label:I

    invoke-interface {v6, v8, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_3

    .line 39
    return-object v2

    .line 151
    :cond_3
    move-object v2, v3

    move-object v3, v6

    move v4, v7

    .line 153
    .end local v6    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v7    # "$i$f$collect":I
    .restart local v2    # "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .restart local v4    # "$i$f$collect":I
    :goto_1
    nop

    .line 47
    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$collect":I
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v3
.end method

.method private static final fold$$forInline(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$fold"    # Lkotlinx/coroutines/flow/Flow;
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$fold":I
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 44
    .local v1, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v2, p0

    .local v2, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 151
    .local v3, "$i$f$collect":I
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$$inlined$collect$1;

    invoke-direct {v4, v1, p2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$fold$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;)V

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    const/4 v5, 0x0

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v2, v4, p3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 p3, 0x2

    invoke-static {p3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/4 p3, 0x1

    invoke-static {p3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 153
    .end local v2    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$collect":I
    nop

    .line 47
    iget-object p3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p3
.end method

.method public static final reduce(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$reduce"    # Lkotlinx/coroutines/flow/Flow;
    .param p1, "operation"    # Lkotlin/jvm/functions/Function3;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T::TS;>(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TS;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 19
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    move-object v3, v2

    .local v2, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v4, 0x0

    .local v4, "$i$f$collect":I
    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->L$3:Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->L$2:Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->L$1:Ljava/lang/Object;

    move-object p1, v5

    check-cast p1, Lkotlin/jvm/functions/Function3;

    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->L$0:Ljava/lang/Object;

    move-object p0, v5

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 34
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$collect":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v5, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 22
    .local v3, "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v5, p0

    .local v5, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v6, 0x0

    .line 148
    .local v6, "$i$f$collect":I
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$$inlined$collect$1;

    invoke-direct {v7, v3, p1}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function3;)V

    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$reduce$1;->label:I

    invoke-interface {v5, v7, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_3

    .line 19
    return-object v2

    .line 148
    :cond_3
    move-object v2, v3

    move-object v3, v5

    move v4, v6

    .line 150
    .end local v5    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v6    # "$i$f$collect":I
    .restart local v2    # "accumulator":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .restart local v4    # "$i$f$collect":I
    :goto_1
    nop

    .line 31
    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$collect":I
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v4, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-eq v3, v4, :cond_4

    .line 32
    nop

    .line 33
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v3

    .line 31
    :cond_4
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Empty flow can\'t be reduced"

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public static final single(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$single"    # Lkotlinx/coroutines/flow/Flow;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 55
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    move-object v3, v2

    .local v3, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v4, 0x0

    .local v2, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .local v4, "$i$f$collect":I
    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->L$2:Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->L$1:Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->L$0:Ljava/lang/Object;

    move-object p0, v5

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 63
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "$i$f$collect":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v5, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 57
    .restart local v3    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v5, p0

    .local v5, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v6, 0x0

    .line 154
    .local v6, "$i$f$collect":I
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$$inlined$collect$1;

    invoke-direct {v7, v3}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$$inlined$collect$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$single$1;->label:I

    invoke-interface {v5, v7, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_3

    .line 55
    return-object v2

    .line 154
    :cond_3
    move-object v2, v5

    move v4, v6

    .line 156
    .end local v5    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v6    # "$i$f$collect":I
    .restart local v2    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .restart local v4    # "$i$f$collect":I
    :goto_1
    nop

    .line 62
    .end local v2    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$i$f$collect":I
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v4, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v4, :cond_4

    .line 63
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v2

    .line 62
    :cond_4
    new-instance v2, Ljava/util/NoSuchElementException;

    const-string v4, "Flow is empty"

    invoke-direct {v2, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static final singleOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p0, "$this$singleOrNull"    # Lkotlinx/coroutines/flow/Flow;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 70
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    move-object v2, v5

    .local v2, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v3, 0x0

    .local v3, "$i$f$collectWhile":I
    move-object v4, v5

    .local v4, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    move-object v6, v5

    .local v6, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->L$3:Ljava/lang/Object;

    move-object v6, v7

    check-cast v6, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;

    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->L$2:Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    move-object v2, v7

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    move-object p0, v7

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    :catch_0
    move-exception v7

    goto :goto_2

    .line 83
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v3    # "$i$f$collectWhile":I
    .end local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v6    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v6, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iput-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 72
    .local v3, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v6, p0

    .local v6, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v7, 0x0

    .line 157
    .local v7, "$i$f$collectWhile":I
    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;

    invoke-direct {v8, v3}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 166
    .local v8, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    nop

    .line 167
    :try_start_1
    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->L$2:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$1;->label:I

    invoke-interface {v6, v9, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v4, v2, :cond_3

    .line 70
    return-object v2

    .line 167
    :cond_3
    move-object v2, v3

    move-object v4, v6

    move v3, v7

    move-object v6, v8

    .end local v7    # "$i$f$collectWhile":I
    .end local v8    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    .restart local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "$i$f$collectWhile":I
    .restart local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .local v6, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    :goto_1
    goto :goto_3

    .line 168
    .end local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .local v3, "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v6, "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .restart local v7    # "$i$f$collectWhile":I
    .restart local v8    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    :catch_1
    move-exception v2

    move-object v4, v6

    move-object v6, v8

    move v10, v7

    move-object v7, v2

    move-object v2, v3

    move v3, v10

    .line 169
    .end local v8    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    .restart local v2    # "result":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v3, "$i$f$collectWhile":I
    .restart local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .local v6, "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    .local v7, "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_2
    move-object v8, v6

    check-cast v8, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v7, v8}, Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;->checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 170
    .end local v7    # "e$iv":Lkotlinx/coroutines/flow/internal/AbortFlowException;
    :goto_3
    nop

    .line 171
    nop

    .line 83
    .end local v3    # "$i$f$collectWhile":I
    .end local v4    # "$this$collectWhile$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v6    # "collector$iv":Lkotlinx/coroutines/flow/FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v4, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-ne v3, v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_4
    return-object v5
.end method
