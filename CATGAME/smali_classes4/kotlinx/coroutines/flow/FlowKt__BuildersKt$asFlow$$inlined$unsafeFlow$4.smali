.class public final Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__BuildersKt;->asFlow(Ljava/util/Iterator;)Lkotlinx/coroutines/flow/Flow;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,112:1\n101#2:113\n102#2,2:115\n104#2:118\n32#3:114\n33#3:117\n*E\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n101#1:114\n101#1:117\n*E\n"
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
.field final synthetic $this_asFlow$inlined:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;->$this_asFlow$inlined:Ljava/util/Iterator;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;

    iget v3, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;

    invoke-direct {v2, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;Lkotlin/coroutines/Continuation;)V

    .local v2, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 100
    iget v5, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    move-object v7, v5

    .local v7, "continuation":Lkotlin/coroutines/Continuation;
    move-object v8, v5

    .local v8, "value":Ljava/lang/Object;
    move-object v9, v5

    .local v9, "element$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    move v11, v10

    .local v11, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$4":I
    move-object v12, v5

    .local v12, "$this$forEach$iv":Ljava/util/Iterator;
    move v13, v10

    .local v5, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v10, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$4$1":I
    .local v13, "$i$f$forEach":I
    iget-object v8, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$7:Ljava/lang/Object;

    iget-object v9, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$6:Ljava/lang/Object;

    iget-object v14, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$5:Ljava/lang/Object;

    check-cast v14, Ljava/util/Iterator;

    iget-object v15, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$4:Ljava/lang/Object;

    move-object v12, v15

    check-cast v12, Ljava/util/Iterator;

    iget-object v15, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$3:Ljava/lang/Object;

    move-object v5, v15

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v15, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$2:Ljava/lang/Object;

    move-object v7, v15

    check-cast v7, Lkotlin/coroutines/Continuation;

    iget-object v15, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/flow/FlowCollector;

    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v15, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v6, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;

    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;
    .local v6, "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v15

    goto :goto_2

    .line 109
    .end local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v5    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v6    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;
    .end local v7    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "element$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$4$1":I
    .end local v11    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$4":I
    .end local v12    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v13    # "$i$f$forEach":I
    .end local v15    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;
    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    .restart local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    .local v5, "continuation":Lkotlin/coroutines/Continuation;
    move-object/from16 v6, p1

    .local v6, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v7, 0x0

    .line 113
    .local v7, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$4":I
    iget-object v8, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;->$this_asFlow$inlined:Ljava/util/Iterator;

    .local v8, "$this$forEach$iv":Ljava/util/Iterator;
    const/4 v9, 0x0

    .line 114
    .local v9, "$i$f$forEach":I
    move v11, v7

    move-object v12, v8

    move-object v14, v12

    move v13, v9

    move-object v7, v0

    move-object v8, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    .end local v5    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$i$f$forEach":I
    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;
    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v2, "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    .local v4, "$result":Ljava/lang/Object;
    .local v7, "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;
    .local v8, "continuation":Lkotlin/coroutines/Continuation;
    .restart local v11    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$4":I
    .restart local v12    # "$this$forEach$iv":Ljava/util/Iterator;
    .restart local v13    # "$i$f$forEach":I
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "value":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 115
    .local v15, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$4$1":I
    iput-object v7, v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$2:Ljava/lang/Object;

    iput-object v6, v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$3:Ljava/lang/Object;

    iput-object v12, v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$4:Ljava/lang/Object;

    iput-object v14, v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$5:Ljava/lang/Object;

    iput-object v9, v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$6:Ljava/lang/Object;

    iput-object v10, v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->L$7:Ljava/lang/Object;

    const/4 v0, 0x1

    .restart local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;
    iput v0, v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4$1;->label:I

    invoke-interface {v6, v10, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_3

    .line 100
    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4;
    return-object v5

    .line 115
    :cond_3
    move-object v0, v8

    move-object v8, v10

    move v10, v15

    .line 116
    .end local v15    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$4$1":I
    .local v0, "continuation":Lkotlin/coroutines/Continuation;
    .local v8, "value":Ljava/lang/Object;
    .local v10, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$4$1":I
    :goto_2
    move-object v8, v0

    move-object/from16 v0, p0

    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "element$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$4$1":I
    goto :goto_1

    .line 117
    .end local v0    # "continuation":Lkotlin/coroutines/Continuation;
    .local v8, "continuation":Lkotlin/coroutines/Continuation;
    :cond_4
    nop

    .line 118
    .end local v12    # "$this$forEach$iv":Ljava/util/Iterator;
    .end local v13    # "$i$f$forEach":I
    nop

    .line 109
    .end local v6    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v8    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v11    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$4":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
