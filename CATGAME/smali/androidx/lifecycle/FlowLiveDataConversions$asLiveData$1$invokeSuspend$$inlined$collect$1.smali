.class public final Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 FlowLiveData.kt\nandroidx/lifecycle/FlowLiveDataConversions$asLiveData$1\n*L\n1#1,135:1\n71#2,2:136\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
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
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $this_liveData$inlined:Landroidx/lifecycle/LiveDataScope;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveDataScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1;->$this_liveData$inlined:Landroidx/lifecycle/LiveDataScope;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    instance-of v0, p2, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;

    iget v1, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;

    invoke-direct {v0, p0, p2}, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;-><init>(Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 70
    iget v3, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    move-object v3, v2

    .local v3, "continuation":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .local v2, "it":Ljava/lang/Object;
    .local v4, "$i$a$-collect-FlowLiveDataConversions$asLiveData$1$1":I
    iget-object v2, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->L$3:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->L$2:Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, Lkotlin/coroutines/Continuation;

    iget-object p1, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1;

    .end local p0    # "this":Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1;
    .local v5, "this":Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 137
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "it":Ljava/lang/Object;
    .end local v3    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-collect-FlowLiveDataConversions$asLiveData$1$1":I
    .end local v5    # "this":Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1;
    .restart local p0    # "this":Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1;
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

    .line 74
    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .restart local v3    # "continuation":Lkotlin/coroutines/Continuation;
    move-object v5, p1

    .local v5, "it":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 136
    .local v6, "$i$a$-collect-FlowLiveDataConversions$asLiveData$1$1":I
    iget-object v7, p0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1;->$this_liveData$inlined:Landroidx/lifecycle/LiveDataScope;

    iput-object p0, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1;->label:I

    invoke-interface {v7, v5, v0}, Landroidx/lifecycle/LiveDataScope;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_3

    .line 70
    return-object v2

    .line 136
    :cond_3
    move-object v2, v5

    move v4, v6

    move-object v5, p0

    .line 137
    .end local v6    # "$i$a$-collect-FlowLiveDataConversions$asLiveData$1$1":I
    .end local p0    # "this":Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1;
    .restart local v2    # "it":Ljava/lang/Object;
    .restart local v4    # "$i$a$-collect-FlowLiveDataConversions$asLiveData$1$1":I
    .local v5, "this":Landroidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1;
    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v2    # "it":Ljava/lang/Object;
    .end local v3    # "continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-collect-FlowLiveDataConversions$asLiveData$1$1":I
    return-object v2
.end method
