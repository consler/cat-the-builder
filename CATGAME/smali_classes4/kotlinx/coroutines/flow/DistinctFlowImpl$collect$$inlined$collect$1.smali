.class public final Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/DistinctFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Distinct.kt\nkotlinx/coroutines/flow/DistinctFlowImpl\n*L\n1#1,132:1\n78#2,7:133\n*E\n"
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
.field final synthetic $collector$inlined:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic $previousKey$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lkotlinx/coroutines/flow/DistinctFlowImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/DistinctFlowImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->this$0:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    iput-object p2, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->$previousKey$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->$collector$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    instance-of v0, p2, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;-><init>(Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 77
    iget v3, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    move-object v3, v2

    .local v3, "continuation":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .local v4, "$i$a$-collect-DistinctFlowImpl$collect$2":I
    move-object v5, v2

    .local v2, "value":Ljava/lang/Object;
    .local v5, "key":Ljava/lang/Object;
    iget-object v5, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$4:Ljava/lang/Object;

    iget-object v2, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$3:Ljava/lang/Object;

    iget-object v6, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$2:Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, Lkotlin/coroutines/Continuation;

    iget-object p1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iget-object v6, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;

    .end local p0    # "this":Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;
    .local v6, "this":Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 139
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-collect-DistinctFlowImpl$collect$2":I
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "this":Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;
    .restart local p0    # "this":Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .restart local v3    # "continuation":Lkotlin/coroutines/Continuation;
    move-object v5, p1

    .local v5, "value":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 133
    .local v6, "$i$a$-collect-DistinctFlowImpl$collect$2":I
    iget-object v7, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->this$0:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    iget-object v7, v7, Lkotlinx/coroutines/flow/DistinctFlowImpl;->keySelector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 134
    .local v7, "key":Ljava/lang/Object;
    nop

    .line 135
    iget-object v8, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->$previousKey$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v9, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-eq v8, v9, :cond_4

    iget-object v8, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->this$0:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    iget-object v8, v8, Lkotlinx/coroutines/flow/DistinctFlowImpl;->areEquivalent:Lkotlin/jvm/functions/Function2;

    iget-object v9, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->$previousKey$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v8, v9, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p0

    goto :goto_3

    .line 136
    :cond_4
    :goto_1
    iget-object v8, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->$previousKey$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v7, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 137
    iget-object v8, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->$collector$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->label:I

    invoke-interface {v8, v5, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_5

    .line 77
    return-object v2

    .line 137
    :cond_5
    move-object v2, v5

    move v4, v6

    move-object v5, v7

    move-object v6, p0

    .end local v7    # "key":Ljava/lang/Object;
    .end local p0    # "this":Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;
    .restart local v2    # "value":Ljava/lang/Object;
    .restart local v4    # "$i$a$-collect-DistinctFlowImpl$collect$2":I
    .local v5, "key":Ljava/lang/Object;
    .local v6, "this":Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;
    :goto_2
    move-object v7, v5

    move-object v5, v2

    move-object v2, v6

    move v6, v4

    .line 135
    .end local v4    # "$i$a$-collect-DistinctFlowImpl$collect$2":I
    .local v2, "this":Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;
    .local v5, "value":Ljava/lang/Object;
    .local v6, "$i$a$-collect-DistinctFlowImpl$collect$2":I
    .restart local v7    # "key":Ljava/lang/Object;
    :goto_3
    nop

    .line 139
    .end local v7    # "key":Ljava/lang/Object;
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v3    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "$i$a$-collect-DistinctFlowImpl$collect$2":I
    return-object v3
.end method
