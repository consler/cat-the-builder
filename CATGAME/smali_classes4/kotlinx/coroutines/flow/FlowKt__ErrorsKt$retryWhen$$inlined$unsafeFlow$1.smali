.class public final Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ErrorsKt;->retryWhen(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n1#1,112:1\n172#2,15:113\n*E\n"
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
.field final synthetic $predicate$inlined:Lkotlin/jvm/functions/Function4;

.field final synthetic $this_retryWhen$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;->$this_retryWhen$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;->$predicate$inlined:Lkotlin/jvm/functions/Function4;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    iget v2, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 171
    iget v5, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    move-object v5, v9

    .local v5, "continuation":Lkotlin/coroutines/Continuation;
    move-object v12, v9

    .local v12, "cause":Ljava/lang/Throwable;
    move v13, v8

    .local v8, "shallRetry":Z
    .local v9, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v10, "attempt":J
    .local v13, "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    iget-object v14, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$4:Ljava/lang/Object;

    move-object v12, v14

    check-cast v12, Ljava/lang/Throwable;

    iget-wide v10, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    iget-object v14, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Object;

    move-object v9, v14

    check-cast v9, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v14, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    move-object v5, v14

    check-cast v5, Lkotlin/coroutines/Continuation;

    iget-object v14, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/flow/FlowCollector;

    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v14, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v15, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;

    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    .local v15, "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, v13

    move-object v8, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move v0, v6

    move-object v6, v4

    goto/16 :goto_3

    .line 109
    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v5    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v8    # "shallRetry":Z
    .end local v9    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v10    # "attempt":J
    .end local v12    # "cause":Ljava/lang/Throwable;
    .end local v13    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .end local v14    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v15    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    .restart local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_2
    move-object v5, v9

    .restart local v5    # "continuation":Lkotlin/coroutines/Continuation;
    move v12, v8

    .restart local v8    # "shallRetry":Z
    .restart local v9    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v10    # "attempt":J
    .local v12, "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    iget v8, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$0:I

    iget-wide v10, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    iget-object v13, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Object;

    move-object v9, v13

    check-cast v9, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v13, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    move-object v5, v13

    check-cast v5, Lkotlin/coroutines/Continuation;

    iget-object v13, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/flow/FlowCollector;

    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v13, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v14, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;

    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    .local v14, "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v14

    move-object v14, v13

    move v13, v8

    move-object v8, v5

    move-object v5, v4

    move-object v4, v3

    goto :goto_2

    .end local v5    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v8    # "shallRetry":Z
    .end local v9    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v10    # "attempt":J
    .end local v12    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .end local v13    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v14    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    .restart local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    .restart local v5    # "continuation":Lkotlin/coroutines/Continuation;
    move-object/from16 v8, p1

    .local v8, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v9, 0x0

    .line 113
    .local v9, "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    const-wide/16 v10, 0x0

    .line 114
    .restart local v10    # "attempt":J
    const/4 v12, 0x0

    move-object v14, v2

    move v13, v12

    move-wide v11, v10

    move v10, v9

    move-object v9, v8

    move-object v8, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object/from16 v0, p1

    .line 115
    .end local v5    # "continuation":Lkotlin/coroutines/Continuation;
    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    .local v4, "$result":Ljava/lang/Object;
    .local v8, "continuation":Lkotlin/coroutines/Continuation;
    .local v9, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v10, "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .local v11, "attempt":J
    .local v13, "shallRetry":Z
    .restart local v14    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    :goto_1
    nop

    .line 116
    const/4 v13, 0x0

    .line 117
    iget-object v15, v14, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;->$this_retryWhen$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object v14, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    iput-object v9, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Object;

    iput-wide v11, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    iput v13, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$0:I

    iput v7, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    invoke-static {v15, v9, v3}, Lkotlinx/coroutines/flow/FlowKt;->catchImpl(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v5, :cond_4

    .line 171
    return-object v5

    .line 117
    :cond_4
    move-object/from16 v18, v14

    move-object v14, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v15

    move-object/from16 v15, v18

    move-wide/from16 v19, v11

    move v12, v10

    move-wide/from16 v10, v19

    .line 171
    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v11    # "attempt":J
    .local v0, "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v10, "attempt":J
    .restart local v12    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .local v14, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v15    # "this":Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
    :goto_2
    check-cast v3, Ljava/lang/Throwable;

    .line 118
    .local v3, "cause":Ljava/lang/Throwable;
    if-eqz v3, :cond_7

    .line 119
    iget-object v7, v15, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;->$predicate$inlined:Lkotlin/jvm/functions/Function4;

    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v15, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object v14, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Object;

    iput-wide v10, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    iput-object v3, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$4:Ljava/lang/Object;

    move-object/from16 p1, v0

    const/4 v0, 0x2

    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .local p1, "$completion":Lkotlin/coroutines/Continuation;
    iput v0, v1, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    const/16 v16, 0x6

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v7, v9, v3, v6, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x7

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    if-ne v6, v5, :cond_5

    .line 171
    return-object v5

    .line 119
    :cond_5
    move v7, v12

    move-object v12, v3

    move-object v3, v1

    move-object/from16 v1, p1

    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    .local v7, "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .local v12, "cause":Ljava/lang/Throwable;
    :goto_3
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 120
    const/4 v6, 0x1

    .line 121
    .end local v13    # "shallRetry":Z
    .local v6, "shallRetry":Z
    const-wide/16 v16, 0x1

    add-long v10, v10, v16

    move v13, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v12

    move-wide v11, v10

    move v10, v7

    goto :goto_4

    .line 123
    .end local v6    # "shallRetry":Z
    .restart local v13    # "shallRetry":Z
    :cond_6
    throw v12

    .line 118
    .end local v7    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .restart local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "cause":Ljava/lang/Throwable;
    .local v12, "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    :cond_7
    move-object/from16 p1, v0

    move v0, v6

    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$completion":Lkotlin/coroutines/Continuation;
    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    move-object/from16 v1, p1

    move-wide/from16 v18, v10

    move v10, v12

    move-wide/from16 v11, v18

    .line 126
    .end local v12    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "$completion":Lkotlin/coroutines/Continuation;
    .local v4, "$continuation":Lkotlin/coroutines/Continuation;
    .local v5, "$result":Ljava/lang/Object;
    .local v10, "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .restart local v11    # "attempt":J
    :goto_4
    if-nez v13, :cond_8

    .line 127
    .end local v3    # "cause":Ljava/lang/Throwable;
    .end local v11    # "attempt":J
    .end local v13    # "shallRetry":Z
    nop

    .line 109
    .end local v8    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v10    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 126
    .restart local v3    # "cause":Ljava/lang/Throwable;
    .restart local v8    # "continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v10    # "$i$a$-unsafeFlow-FlowKt__ErrorsKt$retryWhen$1":I
    .restart local v11    # "attempt":J
    .restart local v13    # "shallRetry":Z
    :cond_8
    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    const/4 v7, 0x1

    move v6, v0

    move-object v0, v14

    move-object v14, v15

    goto/16 :goto_1
.end method
