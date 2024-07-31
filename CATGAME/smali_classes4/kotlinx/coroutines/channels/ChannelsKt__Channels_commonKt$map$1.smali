.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Channels.common.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt;->map(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
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
        "-TR;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,2191:1\n174#2:2192\n154#2,3:2193\n175#2,2:2196\n161#2:2198\n157#2,3:2199\n*E\n*S KotlinDebug\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1\n*L\n1394#1:2192\n1394#1,3:2193\n1394#1,2:2196\n1394#1:2198\n1394#1,3:2199\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "R",
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
    c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$map$1"
    f = "Channels.common.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x894,
        0x573,
        0x573
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "$this$consumeEach$iv",
        "$this$consume$iv$iv",
        "cause$iv$iv",
        "$this$consume$iv",
        "$this$produce",
        "$this$consumeEach$iv",
        "$this$consume$iv$iv",
        "cause$iv$iv",
        "$this$consume$iv",
        "e$iv",
        "it",
        "$this$produce",
        "$this$consumeEach$iv",
        "$this$consume$iv$iv",
        "cause$iv$iv",
        "$this$consume$iv",
        "e$iv",
        "it"
    }
    s = {
        "L$0",
        "L$1",
        "L$3",
        "L$4",
        "L$5",
        "L$0",
        "L$1",
        "L$3",
        "L$4",
        "L$5",
        "L$7",
        "L$8",
        "L$0",
        "L$1",
        "L$3",
        "L$4",
        "L$5",
        "L$7",
        "L$8"
    }
.end annotation


# instance fields
.field final synthetic $this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

.field final synthetic $transform:Lkotlin/jvm/functions/Function2;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1393
    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    const/4 v7, 0x0

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    move-object v2, v6

    .local v2, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    move-object v8, v6

    .local v8, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v9, v7

    .local v9, "$i$a$-consumeEach-ChannelsKt__Channels_commonKt$map$1$1":I
    move-object v10, v6

    .local v10, "e$iv":Ljava/lang/Object;
    move-object v11, v6

    .local v11, "it":Ljava/lang/Object;
    move-object v12, v6

    .local v12, "cause$iv$iv":Ljava/lang/Throwable;
    move-object v13, v6

    .local v13, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v14, v7

    .local v6, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v14, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    move v15, v7

    .local v7, "$i$f$consumeEach":I
    .local v15, "$i$f$consume":I
    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$8:Ljava/lang/Object;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$7:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    .end local v13    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v4, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    move-object v12, v13

    check-cast v12, Ljava/lang/Throwable;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    move-object v8, v13

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    .end local v6    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v5, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    move-object v2, v6

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    move/from16 v19, v15

    move-object v5, v4

    move-object v15, v12

    move-object v4, v13

    move-object v12, v8

    move-object v13, v11

    move v8, v7

    move-object v11, v10

    move v7, v14

    move-object v14, v1

    move-object v10, v3

    move-object/from16 v1, p1

    move-object v3, v2

    const/4 v2, 0x3

    goto/16 :goto_3

    .line 2199
    .end local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v9    # "$i$a$-consumeEach-ChannelsKt__Channels_commonKt$map$1$1":I
    .end local v10    # "e$iv":Ljava/lang/Object;
    .end local v11    # "it":Ljava/lang/Object;
    .end local v14    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    :catchall_0
    move-exception v0

    move-object v11, v1

    move-object/from16 v1, p1

    goto/16 :goto_4

    .line 1397
    .end local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v5    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "$i$f$consumeEach":I
    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v15    # "$i$f$consume":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1393
    :cond_1
    move-object v2, v6

    .restart local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    move-object v3, v6

    .local v3, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v4, v7

    .local v4, "$i$a$-consumeEach-ChannelsKt__Channels_commonKt$map$1$1":I
    move-object v5, v6

    .local v5, "e$iv":Ljava/lang/Object;
    move-object v8, v6

    .local v8, "it":Ljava/lang/Object;
    move-object v9, v6

    .local v9, "cause$iv$iv":Ljava/lang/Throwable;
    move-object v10, v6

    .local v10, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v11, v7

    .restart local v6    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v11, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    move v15, v7

    .restart local v7    # "$i$f$consumeEach":I
    .restart local v15    # "$i$f$consume":I
    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$9:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$8:Ljava/lang/Object;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$7:Ljava/lang/Object;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    move-object v10, v14

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    move-object v9, v14

    check-cast v9, Ljava/lang/Throwable;

    iget-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    move-object v3, v14

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    move-object/from16 v18, v0

    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v17, v4

    move-object v4, v10

    move/from16 v16, v11

    move/from16 v19, v15

    move-object/from16 v0, v18

    move-object v11, v1

    move-object v10, v5

    move-object v5, v6

    move-object v6, v8

    move-object v15, v14

    move-object/from16 v1, p1

    move-object v8, v3

    move-object v14, v9

    move-object v9, v13

    move-object v13, v1

    move-object v3, v2

    const/4 v2, 0x2

    goto/16 :goto_2

    .line 2199
    .end local v4    # "$i$a$-consumeEach-ChannelsKt__Channels_commonKt$map$1$1":I
    .end local v5    # "e$iv":Ljava/lang/Object;
    .end local v8    # "it":Ljava/lang/Object;
    .end local v10    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v11    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    :catchall_1
    move-exception v0

    move-object v11, v1

    move-object v8, v3

    move-object v5, v6

    move-object v12, v9

    move-object/from16 v1, p1

    goto/16 :goto_4

    .line 1393
    .end local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v3    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v6    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "$i$f$consumeEach":I
    .end local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v15    # "$i$f$consume":I
    :cond_2
    move-object/from16 v18, v0

    move-object v0, v6

    .local v0, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    move-object v2, v6

    .local v2, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v3, v6

    .local v3, "cause$iv$iv":Ljava/lang/Throwable;
    move-object v4, v6

    .local v4, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v5, v7

    .local v5, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .restart local v6    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v15, v7

    .restart local v7    # "$i$f$consumeEach":I
    .restart local v15    # "$i$f$consume":I
    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    move-object v4, v9

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    move-object v12, v9

    check-cast v12, Ljava/lang/Throwable;

    .end local v3    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    move-object v6, v9

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ProducerScope;

    .end local v0    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v9, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v14, p1

    move-object v11, v1

    move-object v10, v2

    move-object/from16 v0, v18

    const/4 v13, 0x1

    move-object v2, v14

    move-object/from16 v20, v4

    move-object v4, v3

    move-object v3, v9

    move-object v9, v8

    move v8, v7

    move v7, v5

    move-object/from16 v5, v20

    goto :goto_1

    .line 2199
    .end local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v5    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    :catchall_2
    move-exception v0

    move-object v11, v1

    move-object v8, v2

    move-object v5, v6

    move-object v2, v9

    move-object/from16 v1, p1

    goto/16 :goto_4

    .line 1393
    .end local v2    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v6    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "$i$f$consumeEach":I
    .end local v9    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v15    # "$i$f$consume":I
    :cond_3
    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    .line 1394
    .local v2, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v5, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v7, 0x0

    .line 2192
    .restart local v7    # "$i$f$consumeEach":I
    move-object v8, v5

    .local v8, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v15, 0x0

    .line 2193
    .restart local v15    # "$i$f$consume":I
    move-object v12, v6

    check-cast v12, Ljava/lang/Throwable;

    .line 2194
    .restart local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 2195
    move-object v0, v8

    .local v0, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v3, 0x0

    .line 2196
    .local v3, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    :try_start_3
    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-object v11, v1

    move-object v9, v4

    move-object v6, v5

    move-object v10, v8

    move-object v5, v0

    move-object v4, v11

    move v8, v7

    move-object/from16 v0, v18

    move v7, v3

    move-object v3, v2

    move-object/from16 v2, p1

    .end local v0    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .local v8, "$i$f$consumeEach":I
    .local v10, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v11, "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
    :goto_0
    :try_start_4
    iput-object v3, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v6, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v4, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v10, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    iput-object v12, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    iput-object v5, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    iput-object v9, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    const/4 v13, 0x1

    iput v13, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    invoke-interface {v9, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-ne v14, v0, :cond_4

    .line 1393
    return-object v0

    .line 2196
    :cond_4
    :goto_1
    :try_start_5
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v9}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "e$iv":Ljava/lang/Object;
    move-object/from16 p1, v14

    .local p1, "it":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1395
    .local v17, "$i$a$-consumeEach-ChannelsKt__Channels_commonKt$map$1$1":I
    iget-object v13, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    iput-object v3, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v6, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v4, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v10, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    iput-object v12, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    iput-object v5, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    iput-object v9, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    iput-object v14, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$7:Ljava/lang/Object;

    move-object/from16 v1, p1

    .end local p1    # "it":Ljava/lang/Object;
    .local v1, "it":Ljava/lang/Object;
    .restart local p0    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
    iput-object v1, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$8:Ljava/lang/Object;

    .end local p0    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
    iput-object v3, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$9:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object/from16 p1, v2

    const/4 v2, 0x2

    .end local v2    # "$result":Ljava/lang/Object;
    .local p1, "$result":Ljava/lang/Object;
    :try_start_6
    iput v2, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    const/16 v16, 0x6

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v13, v1, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/16 v16, 0x7

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-ne v13, v0, :cond_5

    .line 1393
    return-object v0

    .line 1395
    :cond_5
    move/from16 v16, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v14

    move/from16 v19, v15

    move-object v15, v4

    move-object v4, v5

    move-object v5, v6

    move-object v14, v12

    move-object v6, v1

    move-object v12, v3

    move-object/from16 v1, p1

    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v15    # "$i$f$consume":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v5, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v6, "it":Ljava/lang/Object;
    .local v7, "$i$f$consumeEach":I
    .local v8, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v10, "e$iv":Ljava/lang/Object;
    .local v14, "cause$iv$iv":Ljava/lang/Throwable;
    .local v16, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .local v19, "$i$f$consume":I
    :goto_2
    :try_start_7
    iput-object v3, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v5, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v15, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v8, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    iput-object v14, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    iput-object v4, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    iput-object v9, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    iput-object v10, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$7:Ljava/lang/Object;

    iput-object v6, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$8:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    invoke-interface {v12, v13, v11}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v12, v0, :cond_6

    .line 1393
    return-object v0

    .line 1395
    :cond_6
    move-object v13, v6

    move-object v12, v8

    move-object v6, v5

    move v8, v7

    move/from16 v7, v16

    move-object v5, v4

    move-object v4, v15

    move-object v15, v14

    move-object v14, v11

    move-object v11, v10

    move-object v10, v9

    move/from16 v9, v17

    .line 1396
    .end local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v10    # "e$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .end local v17    # "$i$a$-consumeEach-ChannelsKt__Channels_commonKt$map$1$1":I
    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v6, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .local v8, "$i$f$consumeEach":I
    .local v9, "$i$a$-consumeEach-ChannelsKt__Channels_commonKt$map$1$1":I
    .local v11, "e$iv":Ljava/lang/Object;
    .local v12, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v13, "it":Ljava/lang/Object;
    .local v14, "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
    .local v15, "cause$iv$iv":Ljava/lang/Throwable;
    :goto_3
    move-object v2, v1

    move-object v9, v10

    move-object v10, v12

    move-object v11, v14

    move-object v12, v15

    move/from16 v15, v19

    move-object/from16 v1, p0

    .end local v9    # "$i$a$-consumeEach-ChannelsKt__Channels_commonKt$map$1$1":I
    .end local v11    # "e$iv":Ljava/lang/Object;
    .end local v13    # "it":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2199
    .end local v6    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v15    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v5, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "$i$f$consumeEach":I
    .local v8, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v11, "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
    .local v14, "cause$iv$iv":Ljava/lang/Throwable;
    :catchall_3
    move-exception v0

    move-object v2, v3

    move-object v12, v14

    move/from16 v15, v19

    goto :goto_4

    .line 2196
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v14    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v19    # "$i$f$consume":I
    .restart local v2    # "$result":Ljava/lang/Object;
    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .local v8, "$i$f$consumeEach":I
    .local v10, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v12, "cause$iv$iv":Ljava/lang/Throwable;
    .local v15, "$i$f$consume":I
    :cond_7
    move-object/from16 p1, v2

    .line 2197
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2198
    invoke-static {v10, v12}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 2195
    nop

    .line 2197
    .end local v10    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v15    # "$i$f$consume":I
    nop

    .line 1397
    .end local v6    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "$i$f$consumeEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2199
    .restart local v6    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v8    # "$i$f$consumeEach":I
    .restart local v10    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v15    # "$i$f$consume":I
    :catchall_4
    move-exception v0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v5, v6

    move v7, v8

    move-object v8, v10

    goto :goto_4

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v2    # "$result":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v5, v6

    move v7, v8

    move-object v8, v10

    .end local v2    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    goto :goto_4

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v2    # "$result":Ljava/lang/Object;
    :catchall_6
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v5, v6

    move v7, v8

    move-object v8, v10

    goto :goto_4

    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v6    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v10    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v11    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
    .local v2, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v5, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "$i$f$consumeEach":I
    .local v8, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_7
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    .line 2200
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v11    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
    :goto_4
    move-object v3, v0

    .line 2201
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v3, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v3    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "$i$f$consumeEach":I
    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v11    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
    .end local v15    # "$i$f$consume":I
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v3    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v5    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v7    # "$i$f$consumeEach":I
    .restart local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v11    # "this":Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
    .restart local v15    # "$i$f$consume":I
    :catchall_8
    move-exception v0

    move-object v4, v0

    .line 2198
    invoke-static {v8, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v4
.end method
