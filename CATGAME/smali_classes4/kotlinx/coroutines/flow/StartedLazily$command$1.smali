.class final Lkotlinx/coroutines/flow/StartedLazily$command$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SharingStarted.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/StartedLazily;->command(Lkotlinx/coroutines/flow/StateFlow;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lkotlinx/coroutines/flow/SharingCommand;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharingStarted.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharingStarted.kt\nkotlinx/coroutines/flow/StartedLazily$command$1\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,211:1\n72#2,3:212\n*E\n*S KotlinDebug\n*F\n+ 1 SharingStarted.kt\nkotlinx/coroutines/flow/StartedLazily$command$1\n*L\n158#1,3:212\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lkotlinx/coroutines/flow/SharingCommand;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.StartedLazily$command$1"
    f = "SharingStarted.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0xd4
    }
    m = "invokeSuspend"
    n = {
        "$this$flow",
        "started",
        "$this$collect$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $subscriptionCount:Lkotlinx/coroutines/flow/StateFlow;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->$subscriptionCount:Lkotlinx/coroutines/flow/StateFlow;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily$command$1;

    iget-object v1, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->$subscriptionCount:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/flow/StartedLazily$command$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/Continuation;)V

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->p$:Lkotlinx/coroutines/flow/FlowCollector;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/StartedLazily$command$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/StartedLazily$command$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/StartedLazily$command$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 156
    iget v1, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    .local v1, "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    move v2, v3

    .local v2, "$i$f$collect":I
    move-object v3, v0

    .local v0, "started":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    iget-object v4, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->L$2:Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    iget-object v4, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->L$1:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->L$0:Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    .end local v0    # "started":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v1    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v2    # "$i$f$collect":I
    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->p$:Lkotlinx/coroutines/flow/FlowCollector;

    .line 157
    .restart local v1    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v3, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object v3, v4

    .line 158
    .local v3, "started":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v4, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->$subscriptionCount:Lkotlinx/coroutines/flow/StateFlow;

    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    .local v4, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v5, 0x0

    .line 212
    .local v5, "$i$f$collect":I
    new-instance v6, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;

    invoke-direct {v6, v1, v3}, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v1, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1;->label:I

    invoke-interface {v4, v6, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    .line 156
    return-object v0

    .line 212
    :cond_2
    move-object v0, v3

    move-object v3, v4

    move v2, v5

    .line 214
    .end local v4    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v5    # "$i$f$collect":I
    .restart local v0    # "started":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v2    # "$i$f$collect":I
    .local v3, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    :goto_0
    nop

    .line 164
    .end local v0    # "started":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v2    # "$i$f$collect":I
    .end local v3    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
