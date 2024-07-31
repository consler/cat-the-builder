.class final Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Share.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ShareKt;->launchSharingDeferred$FlowKt__ShareKt(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CompletableDeferred;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,414:1\n72#2,3:415\n*E\n*S KotlinDebug\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1\n*L\n332#1,3:415\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
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
    c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1"
    f = "Share.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x19f
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "state",
        "$this$collect$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $result:Lkotlinx/coroutines/CompletableDeferred;

.field final synthetic $upstream:Lkotlinx/coroutines/flow/Flow;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->$upstream:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->$result:Lkotlinx/coroutines/CompletableDeferred;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->$upstream:Lkotlinx/coroutines/flow/Flow;

    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->$result:Lkotlinx/coroutines/CompletableDeferred;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iput-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 329
    iget v1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    move-object v0, v3

    .local v0, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    const/4 v1, 0x0

    .local v1, "$i$f$collect":I
    move-object v2, v3

    .local v2, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .local v3, "state":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->L$2:Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->L$1:Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->L$0:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 339
    .end local v1    # "$i$f$collect":I
    .end local v2    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "state":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 345
    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 330
    .local v1, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    nop

    .line 331
    :try_start_1
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    check-cast v3, Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v3, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, v4

    .line 332
    .restart local v3    # "state":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->$upstream:Lkotlinx/coroutines/flow/Flow;

    .local v4, "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v5, 0x0

    .line 415
    .local v5, "$i$f$collect":I
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1;

    invoke-direct {v6, p0, v1, v3}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->label:I

    invoke-interface {v4, v6, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v0, :cond_2

    .line 329
    return-object v0

    .line 415
    :cond_2
    move-object v0, v1

    move-object v2, v4

    move v1, v5

    .line 417
    .end local v4    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v5    # "$i$f$collect":I
    .restart local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v1, "$i$f$collect":I
    .restart local v2    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    :goto_0
    nop

    .line 344
    .end local v1    # "$i$f$collect":I
    .end local v2    # "$this$collect$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "state":Lkotlin/jvm/internal/Ref$ObjectRef;
    nop

    .line 345
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 339
    .end local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v1, "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    :catchall_1
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 341
    .restart local v0    # "$this$launch":Lkotlinx/coroutines/CoroutineScope;
    .local v1, "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1;->$result:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v2, v1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 343
    throw v1
.end method
