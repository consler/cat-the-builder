.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Channels.common.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt;->dropWhile(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "Lkotlinx/coroutines/channels/ProducerScope;",
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
    c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$dropWhile$1"
    f = "Channels.common.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x4,
        0x4
    }
    l = {
        0x2d0,
        0x2d1,
        0x2d2,
        0x2d6,
        0x2d7
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "$this$produce",
        "e",
        "$this$produce",
        "e",
        "$this$produce",
        "$this$produce",
        "e"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $predicate:Lkotlin/jvm/functions/Function2;

.field final synthetic $this_dropWhile:Lkotlinx/coroutines/channels/ReceiveChannel;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->$this_dropWhile:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->$predicate:Lkotlin/jvm/functions/Function2;

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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->$this_dropWhile:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->$predicate:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 719
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->label:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    const/4 v7, 0x0

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    move-object v1, v7

    .local v1, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    move-object v4, v7

    .local v4, "e":Ljava/lang/Object;
    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iget-object v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$0:Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    move-object v7, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v5

    goto/16 :goto_7

    .line 729
    .end local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v4    # "e":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_1
    move-object v1, v7

    .restart local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$0:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    move-object v7, v1

    move-object v5, v4

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_6

    .end local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_2
    move-object v1, v7

    .restart local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    move-object v4, v7

    .restart local v4    # "e":Ljava/lang/Object;
    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$0:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    goto/16 :goto_3

    .end local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v4    # "e":Ljava/lang/Object;
    :cond_3
    move-object v1, v7

    .restart local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v7, "e":Ljava/lang/Object;
    iget-object v8, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iget-object v9, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$0:Ljava/lang/Object;

    move-object v1, v9

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, p0

    move-object v9, v8

    move-object v8, v7

    move-object v7, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_2

    .end local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v7    # "e":Ljava/lang/Object;
    :cond_4
    move-object v1, v7

    .restart local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v8, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$0:Ljava/lang/Object;

    move-object v1, v8

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, p0

    move-object v9, v7

    move-object v7, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_1

    .end local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    .line 720
    .restart local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->$this_dropWhile:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v7}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7

    move-object v8, p0

    .end local p0    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;
    .local v8, "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;
    :goto_0
    iput-object v1, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object v7, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput v6, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->label:I

    invoke-interface {v7, v8}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_6

    .line 719
    return-object v0

    .line 720
    :cond_6
    move-object v11, v0

    move-object v0, p1

    move-object p1, v9

    move-object v9, v7

    move-object v7, v1

    move-object v1, v11

    .end local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v7, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v9}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 721
    .local p1, "e":Ljava/lang/Object;
    iget-object v10, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->$predicate:Lkotlin/jvm/functions/Function2;

    iput-object v7, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object p1, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput-object v9, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$2:Ljava/lang/Object;

    iput v5, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->label:I

    invoke-interface {v10, p1, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_7

    .line 719
    return-object v1

    .line 721
    :cond_7
    move-object v11, v8

    move-object v8, p1

    move-object p1, v10

    move-object v10, v11

    .end local p1    # "e":Ljava/lang/Object;
    .local v8, "e":Ljava/lang/Object;
    .local v10, "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    .line 722
    iput-object v7, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object v8, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput v4, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->label:I

    invoke-interface {v7, v8, v10}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    .line 719
    return-object v1

    .line 722
    :cond_8
    move-object p1, v0

    move-object v0, v1

    move-object v1, v7

    move-object v4, v8

    move-object v8, v10

    .line 723
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v7    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v10    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;
    .restart local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v4    # "e":Ljava/lang/Object;
    .local v8, "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;
    .local p1, "$result":Ljava/lang/Object;
    :goto_3
    move-object v7, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_4

    .line 720
    .end local v1    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v4    # "e":Ljava/lang/Object;
    .end local v8    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v7    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v10    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;
    :cond_9
    move-object p1, v0

    move-object v0, v1

    move-object v1, v7

    move-object v7, v9

    move-object v8, v10

    goto :goto_0

    .line 726
    .end local v10    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;
    .restart local v8    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;
    :cond_a
    :goto_4
    iget-object p1, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->$this_dropWhile:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p1

    :goto_5
    iput-object v7, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object p1, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput v3, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->label:I

    invoke-interface {p1, v8}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_b

    .line 719
    return-object v1

    .line 726
    :cond_b
    move-object v5, p1

    move-object p1, v4

    :goto_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 727
    .restart local v4    # "e":Ljava/lang/Object;
    iput-object v7, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object v4, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput-object v5, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->L$2:Ljava/lang/Object;

    iput v2, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$dropWhile$1;->label:I

    invoke-interface {v7, v4, v8}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    .line 719
    return-object v1

    .line 727
    :cond_c
    move-object p1, v5

    .line 726
    :goto_7
    goto :goto_5

    .line 729
    .end local v4    # "e":Ljava/lang/Object;
    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
