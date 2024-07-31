.class public final Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__BuildersKt;->asFlow([J)Lkotlinx/coroutines/flow/Flow;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,112:1\n178#2:113\n179#2,2:115\n181#2:118\n13444#3:114\n13445#3:117\n*E\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n178#1:114\n178#1:117\n*E\n"
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
.field final synthetic $this_asFlow$inlined:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;->$this_asFlow$inlined:[J

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .param p1, "collector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;

    iget v3, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;

    invoke-direct {v2, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;Lkotlin/coroutines/Continuation;)V

    .local v2, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 177
    iget v5, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->label:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    move-object v8, v5

    .local v8, "continuation":Lkotlin/coroutines/Continuation;
    const-wide/16 v9, 0x0

    move-wide v11, v9

    .local v11, "element$iv":J
    move v13, v7

    .local v13, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    move-object v14, v5

    .local v14, "$this$forEach$iv":[J
    move v15, v7

    .local v5, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v7, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$8$1":I
    .local v9, "value":J
    .local v15, "$i$f$forEach":I
    iget-wide v9, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->J$1:J

    iget-wide v11, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->J$0:J

    iget v6, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->I$1:I

    iget v1, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->I$0:I

    move/from16 v16, v1

    iget-object v1, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$5:Ljava/lang/Object;

    check-cast v1, [J

    move-object/from16 v17, v1

    iget-object v1, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$4:Ljava/lang/Object;

    check-cast v1, [J

    .end local v14    # "$this$forEach$iv":[J
    .local v1, "$this$forEach$iv":[J
    iget-object v14, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$3:Ljava/lang/Object;

    move-object v5, v14

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v14, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$2:Ljava/lang/Object;

    move-object v8, v14

    check-cast v8, Lkotlin/coroutines/Continuation;

    iget-object v14, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/flow/FlowCollector;

    move-object/from16 v18, v1

    .end local v1    # "$this$forEach$iv":[J
    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v14, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v18, "$this$forEach$iv":[J
    iget-object v1, v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;

    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    .local v1, "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v3

    move-object v3, v1

    move-object v1, v14

    move-object/from16 v19, v2

    move-object/from16 v2, p2

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    move-object/from16 v21, v8

    move-object v8, v4

    move-object/from16 v4, v17

    move/from16 v17, v15

    move v15, v13

    move-wide v13, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    goto/16 :goto_2

    .line 109
    .end local v1    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    .end local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v5    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v7    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$8$1":I
    .end local v8    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "value":J
    .end local v11    # "element$iv":J
    .end local v13    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    .end local v14    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v15    # "$i$f$forEach":I
    .end local v18    # "$this$forEach$iv":[J
    .restart local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    .restart local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
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
    .local v6, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    iget-object v8, v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;->$this_asFlow$inlined:[J

    .local v8, "$this$forEach$iv":[J
    const/4 v9, 0x0

    .line 114
    .local v9, "$i$f$forEach":I
    array-length v10, v8

    move-object v12, v1

    move v13, v6

    move v11, v7

    move v15, v9

    move-object/from16 v1, p1

    move-object v6, v3

    move-object v7, v4

    move-object v9, v5

    move-object v4, v8

    move-object v3, v0

    move-object v5, v2

    move-object/from16 v2, p2

    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    .local v1, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v2, "$completion":Lkotlin/coroutines/Continuation;
    .local v3, "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    .local v5, "$continuation":Lkotlin/coroutines/Continuation;
    .local v6, "$result":Ljava/lang/Object;
    .local v9, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v12, "continuation":Lkotlin/coroutines/Continuation;
    .restart local v13    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    .restart local v15    # "$i$f$forEach":I
    :goto_1
    if-ge v11, v10, :cond_4

    move/from16 p1, v13

    .end local v13    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    .local p1, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    aget-wide v13, v4, v11

    .local v13, "element$iv":J
    invoke-static {v13, v14}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 p2, v6

    move-object/from16 v17, v7

    .end local v6    # "$result":Ljava/lang/Object;
    .local p2, "$result":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .local v6, "value":J
    const/16 v16, 0x0

    .line 115
    .local v16, "$i$a$-forEach-FlowKt__BuildersKt$asFlow$8$1":I
    nop

    .restart local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v3, v5, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$1:Ljava/lang/Object;

    iput-object v12, v5, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$2:Ljava/lang/Object;

    iput-object v9, v5, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$3:Ljava/lang/Object;

    iput-object v8, v5, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->L$5:Ljava/lang/Object;

    iput v10, v5, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->I$0:I

    iput v11, v5, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->I$1:I

    iput-wide v13, v5, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->J$0:J

    iput-wide v6, v5, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->J$1:J

    move-object/from16 v18, v1

    const/4 v1, 0x1

    .end local v1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .local v18, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iput v1, v5, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8$1;->label:I

    invoke-interface {v9, v0, v5}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 177
    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8;
    return-object v1

    .line 115
    :cond_3
    move-object/from16 v0, p2

    move/from16 v17, v15

    move/from16 v15, p1

    move-object/from16 v19, v8

    move-object v8, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v19

    move/from16 v20, v11

    move-object v11, v9

    move/from16 v21, v16

    move/from16 v16, v10

    move-wide v9, v6

    move/from16 v6, v20

    move/from16 v7, v21

    .line 116
    .end local v6    # "value":J
    .end local v8    # "$this$forEach$iv":[J
    .end local v16    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$8$1":I
    .end local p1    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    .end local p2    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v7    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$8$1":I
    .local v9, "value":J
    .local v11, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v15, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    .local v17, "$i$f$forEach":I
    .local v18, "$this$forEach$iv":[J
    :goto_2
    const/4 v7, 0x1

    .end local v7    # "$i$a$-forEach-FlowKt__BuildersKt$asFlow$8$1":I
    .end local v9    # "value":J
    .end local v13    # "element$iv":J
    add-int/2addr v6, v7

    move-object v7, v8

    move-object v9, v11

    move v13, v15

    move/from16 v10, v16

    move/from16 v15, v17

    move-object/from16 v8, v18

    move v11, v6

    move-object v6, v0

    move-object/from16 v0, p0

    goto :goto_1

    .line 117
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v11    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v17    # "$i$f$forEach":I
    .end local v18    # "$this$forEach$iv":[J
    .local v6, "$result":Ljava/lang/Object;
    .restart local v8    # "$this$forEach$iv":[J
    .local v9, "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .local v13, "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    .local v15, "$i$f$forEach":I
    :cond_4
    nop

    .line 118
    .end local v8    # "$this$forEach$iv":[J
    .end local v15    # "$i$f$forEach":I
    nop

    .line 109
    .end local v9    # "$receiver":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v12    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v13    # "$i$a$-unsafeFlow-FlowKt__BuildersKt$asFlow$8":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
