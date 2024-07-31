.class public final Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__EmittersKt;->onEmpty(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,112:1\n182#2,2:113\n187#2,2:118\n189#2,7:121\n72#3,3:115\n259#4:120\n*E\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n183#1,3:115\n188#1:120\n*E\n"
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
.field final synthetic $action$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic $this_onEmpty$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;->$this_onEmpty$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;->$action$inlined:Lkotlin/jvm/functions/Function2;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 181
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    move-object v2, v7

    .local v2, "continuation":Lkotlin/coroutines/Continuation;
    move v3, v6

    .local v3, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onEmpty$1":I
    move-object v4, v7

    .local v4, "isEmpty":Lkotlin/jvm/internal/Ref$BooleanRef;
    move-object v5, v7

    .local v5, "collector":Lkotlinx/coroutines/flow/internal/SafeCollector;
    move-object v6, v7

    .local v6, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$5:Ljava/lang/Object;

    move-object v5, v7

    check-cast v5, Lkotlinx/coroutines/flow/internal/SafeCollector;

    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$4:Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Object;

    move-object v6, v7

    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    move-object v2, v7

    check-cast v2, Lkotlin/coroutines/Continuation;

    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    move-object p1, v7

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;

    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
    .local v7, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 125
    :catchall_0
    move-exception v8

    goto/16 :goto_3

    .line 109
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onEmpty$1":I
    .end local v4    # "isEmpty":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v5    # "collector":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .end local v6    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v7    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    move-object v3, v7

    .local v3, "continuation":Lkotlin/coroutines/Continuation;
    move v5, v6

    .local v5, "$i$f$collect":I
    .local v6, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onEmpty$1":I
    move-object v8, v7

    .local v8, "isEmpty":Lkotlin/jvm/internal/Ref$BooleanRef;
    move-object v9, v7

    .local v7, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v9, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$5:Ljava/lang/Object;

    move-object v9, v10

    check-cast v9, Lkotlinx/coroutines/flow/Flow;

    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$4:Ljava/lang/Object;

    move-object v8, v10

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Object;

    move-object v7, v10

    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    move-object v3, v10

    check-cast v3, Lkotlin/coroutines/Continuation;

    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    move-object p1, v10

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;

    .local v10, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v5    # "$i$f$collect":I
    .end local v6    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onEmpty$1":I
    .end local v7    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v8    # "isEmpty":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v9    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v10    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .restart local v3    # "continuation":Lkotlin/coroutines/Continuation;
    move-object v6, p1

    .local v6, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v7, 0x0

    .line 113
    .local v7, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onEmpty$1":I
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v5, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 114
    .restart local v8    # "isEmpty":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v9, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;->$this_onEmpty$inlined:Lkotlinx/coroutines/flow/Flow;

    .restart local v9    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v10, 0x0

    .line 115
    .local v10, "$i$f$collect":I
    new-instance v11, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$lambda$1;

    invoke-direct {v11, v6, v8}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$lambda$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v11, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$4:Ljava/lang/Object;

    iput-object v9, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$5:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->label:I

    invoke-interface {v9, v11, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_4

    .line 181
    return-object v2

    .line 115
    :cond_4
    move v5, v10

    move-object v10, p0

    move v12, v7

    move-object v7, v6

    move v6, v12

    .line 117
    .restart local v5    # "$i$f$collect":I
    .local v6, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onEmpty$1":I
    .local v7, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v10, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
    :goto_1
    nop

    .line 118
    .end local v5    # "$i$f$collect":I
    .end local v9    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    iget-boolean v5, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v5, :cond_6

    .line 119
    const/4 v5, 0x0

    .line 120
    .local v5, "$i$f$currentCoroutineContext":I
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 119
    .end local v5    # "$i$f$currentCoroutineContext":I
    new-instance v9, Lkotlinx/coroutines/flow/internal/SafeCollector;

    invoke-direct {v9, v7, v5}, Lkotlinx/coroutines/flow/internal/SafeCollector;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V

    move-object v5, v9

    .line 121
    .local v5, "collector":Lkotlinx/coroutines/flow/internal/SafeCollector;
    nop

    .line 122
    :try_start_1
    iget-object v9, v10, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;->$action$inlined:Lkotlin/jvm/functions/Function2;

    iput-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$4:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->L$5:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1$1;->label:I

    const/4 v4, 0x6

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v9, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v9, 0x7

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v2, :cond_5

    .line 181
    return-object v2

    .line 122
    :cond_5
    move-object v2, v3

    move v3, v6

    move-object v6, v7

    move-object v4, v8

    move-object v7, v10

    .line 124
    .end local v8    # "isEmpty":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v10    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
    .restart local v2    # "continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onEmpty$1":I
    .restart local v4    # "isEmpty":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v6, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v7, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
    :goto_2
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/internal/SafeCollector;->releaseIntercepted()V

    .line 125
    move-object v10, v7

    move-object v7, v6

    move v6, v3

    move-object v3, v2

    goto :goto_4

    .end local v2    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "isEmpty":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v3, "continuation":Lkotlin/coroutines/Continuation;
    .local v6, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onEmpty$1":I
    .local v7, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v8    # "isEmpty":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v10    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
    :catchall_1
    move-exception v2

    move-object v4, v8

    move-object v8, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v7

    move-object v7, v10

    .line 124
    .end local v8    # "isEmpty":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v10    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
    .restart local v2    # "continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onEmpty$1":I
    .restart local v4    # "isEmpty":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v6, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v7, "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
    :goto_3
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/internal/SafeCollector;->releaseIntercepted()V

    throw v8

    .line 127
    .end local v2    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "isEmpty":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v5    # "collector":Lkotlinx/coroutines/flow/internal/SafeCollector;
    .local v3, "continuation":Lkotlin/coroutines/Continuation;
    .local v6, "$i$a$-unsafeFlow-FlowKt__EmittersKt$onEmpty$1":I
    .local v7, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v10    # "this":Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1;
    :cond_6
    :goto_4
    nop

    .line 109
    .end local v3    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v6    # "$i$a$-unsafeFlow-FlowKt__EmittersKt$onEmpty$1":I
    .end local v7    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method
