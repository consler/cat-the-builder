.class public final Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__BuildersKt;->asFlow(Lkotlin/ranges/LongRange;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n196#2:113\n197#2,2:115\n199#2:118\n1799#3:114\n1800#3:117\n*E\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n196#1:114\n196#1:117\n*E\n"
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
.field final synthetic $this_asFlow$inlined:Lkotlin/ranges/LongRange;


# direct methods
.method public constructor <init>(Lkotlin/ranges/LongRange;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;->$this_asFlow$inlined:Lkotlin/ranges/LongRange;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;

    iget v3, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;

    invoke-direct {v2, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;Lkotlin/coroutines/Continuation;)V

    .local v2, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 195
    iget v5, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    move-object v7, v5

    .local v7, "continuation":Lkotlin/coroutines/Continuation;
    const/4 v8, 0x0

    move v9, v8

    .local v9, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$10$1":I
    move-object v10, v5

    .local v10, "element$iv":Ljava/lang/Object;
    const-wide/16 v11, 0x0

    .local v11, "value":J
    move v13, v8

    .local v13, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$10":I
    move-object v14, v5

    .local v5, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v8, "$i$f$forEach":I
    .local v14, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-wide v11, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->J$0:J

    iget-object v10, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$6:Ljava/lang/Object;

    iget-object v15, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$5:Ljava/lang/Object;

    check-cast v15, Ljava/util/Iterator;

    iget-object v6, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Iterable;

    .end local v14    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v14, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$3:Ljava/lang/Object;

    move-object v5, v14

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v14, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$2:Ljava/lang/Object;

    move-object v7, v14

    check-cast v7, Lkotlin/coroutines/Continuation;

    iget-object v14, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/flow/FlowCollector;

    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v14, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v1, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;

    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;
    .local v1, "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v7

    move-object/from16 v16, v15

    move-object v7, v5

    move v15, v13

    move-object v5, v3

    move-wide v12, v11

    move-object v3, v1

    move v11, v8

    const/4 v1, 0x1

    move-object v8, v6

    move-object v6, v4

    move-object v4, v2

    move-object/from16 v2, p2

    goto/16 :goto_2

    .line 109
    .end local v1    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;
    .end local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v5    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v8    # "$i$f$forEach":I
    .end local v9    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$10$1":I
    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v11    # "value":J
    .end local v13    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$10":I
    .end local v14    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;
    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    .restart local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    move-object v1, v2

    check-cast v1, Lkotlin/coroutines/Continuation;

    .local v1, "continuation":Lkotlin/coroutines/Continuation;
    move-object/from16 v5, p1

    .restart local v5    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v6, 0x0

    .line 113
    .local v6, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$10":I
    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;->$this_asFlow$inlined:Lkotlin/ranges/LongRange;

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 114
    .restart local v8    # "$i$f$forEach":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v13, v6

    move v10, v8

    move-object v15, v9

    move-object v9, v1

    move-object v6, v4

    move-object v8, v7

    move-object/from16 v1, p1

    move-object v4, v2

    move-object v7, v5

    move-object/from16 v2, p2

    move-object v5, v3

    move-object v3, v0

    .end local v6    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$10":I
    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;
    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v2, "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;
    .local v4, "$continuation":Lkotlin/coroutines/Continuation;
    .local v5, "$result":Ljava/lang/Object;
    .local v7, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v8, "$this$forEach$iv":Ljava/lang/Iterable;
    .local v9, "continuation":Lkotlin/coroutines/Continuation;
    .local v10, "$i$f$forEach":I
    .restart local v13    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$10":I
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    move/from16 p1, v13

    .end local v13    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$10":I
    .local p1, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$10":I
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    .local v12, "value":J
    const/4 v14, 0x0

    .line 115
    .local v14, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$10$1":I
    nop

    .restart local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;
    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v3, v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$1:Ljava/lang/Object;

    iput-object v9, v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$2:Ljava/lang/Object;

    iput-object v7, v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$3:Ljava/lang/Object;

    iput-object v8, v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$4:Ljava/lang/Object;

    iput-object v15, v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$5:Ljava/lang/Object;

    iput-object v11, v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->L$6:Ljava/lang/Object;

    iput-wide v12, v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->J$0:J

    move-object/from16 p2, v1

    const/4 v1, 0x1

    .end local v1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local p2, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iput v1, v4, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1;->label:I

    invoke-interface {v7, v0, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_3

    .line 195
    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10;
    return-object v6

    .line 115
    :cond_3
    move-object v0, v9

    move v9, v14

    move-object/from16 v16, v15

    move/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v17, v11

    move v11, v10

    move-object/from16 v10, v17

    .line 116
    .end local p1    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$10":I
    .end local p2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v0, "continuation":Lkotlin/coroutines/Continuation;
    .local v9, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$10$1":I
    .local v10, "element$iv":Ljava/lang/Object;
    .local v11, "$i$f$forEach":I
    .local v14, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v15, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$10":I
    :goto_2
    move-object v9, v0

    move v10, v11

    move-object v1, v14

    move v13, v15

    move-object/from16 v15, v16

    move-object/from16 v0, p0

    .end local v9    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$10$1":I
    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v12    # "value":J
    goto :goto_1

    .line 117
    .end local v0    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v11    # "$i$f$forEach":I
    .end local v14    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v15    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$10":I
    .restart local v1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v9, "continuation":Lkotlin/coroutines/Continuation;
    .local v10, "$i$f$forEach":I
    .restart local v13    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$10":I
    :cond_4
    nop

    .line 118
    .end local v8    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEach":I
    nop

    .line 109
    .end local v7    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v9    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v13    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$10":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
