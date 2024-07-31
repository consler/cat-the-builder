.class public final Lkotlinx/coroutines/channels/TickerChannelsKt;
.super Ljava/lang/Object;
.source "TickerChannels.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTickerChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TickerChannels.kt\nkotlinx/coroutines/channels/TickerChannelsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a/\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a/\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007\u001a4\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "fixedDelayTicker",
        "",
        "delayMillis",
        "",
        "initialDelayMillis",
        "channel",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fixedPeriodTicker",
        "ticker",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "mode",
        "Lkotlinx/coroutines/channels/TickerMode;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method static final synthetic fixedDelayTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "delayMillis"    # J
    .param p2, "initialDelayMillis"    # J
    .param p4, "channel"    # Lkotlinx/coroutines/channels/SendChannel;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    iget v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    invoke-direct {v0, p5}, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 101
    iget v3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 111
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :cond_2
    iget-object v3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    move-object p4, v3

    check-cast p4, Lkotlinx/coroutines/channels/SendChannel;

    iget-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    move-object p4, v3

    check-cast p4, Lkotlinx/coroutines/channels/SendChannel;

    iget-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_5

    .line 101
    return-object v2

    .line 107
    :cond_5
    :goto_2
    nop

    .line 108
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-interface {p4, v3, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6

    .line 101
    return-object v2

    .line 109
    :cond_6
    :goto_3
    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_7

    .line 101
    return-object v2

    .line 109
    :cond_7
    goto :goto_2
.end method

.method static final synthetic fixedPeriodTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26
    .param p0, "delayMillis"    # J
    .param p2, "initialDelayMillis"    # J
    .param p4, "channel"    # Lkotlinx/coroutines/channels/SendChannel;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-wide/from16 v0, p2

    move-object/from16 v2, p5

    instance-of v3, v2, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    iget v4, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v4, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    sub-int/2addr v4, v5

    iput v4, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v4, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 78
    iget v6, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_5

    if-eq v6, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    move-wide v13, v11

    .local v13, "deadline":J
    move-wide v15, v11

    .local v15, "nextDelay":J
    move-wide/from16 v17, v11

    .local v17, "delayNs":J
    move-wide/from16 v19, v11

    .local v19, "now":J
    iget-wide v7, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$5:J

    move-wide/from16 v21, v7

    .end local v15    # "nextDelay":J
    .local v21, "nextDelay":J
    iget-wide v6, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$4:J

    .end local v19    # "now":J
    .local v6, "now":J
    iget-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    .end local v17    # "delayNs":J
    .local v9, "delayNs":J
    iget-wide v13, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iget-object v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/SendChannel;

    .end local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    .local v8, "channel":Lkotlinx/coroutines/channels/SendChannel;
    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    .end local p2    # "initialDelayMillis":J
    .local v0, "initialDelayMillis":J
    iget-wide v11, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    .end local p0    # "delayMillis":J
    .local v11, "delayMillis":J
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide/from16 v17, v9

    move-wide/from16 v19, v13

    move-wide/from16 v9, v21

    const/4 v15, 0x3

    move-wide v12, v11

    move-object v11, v8

    move-wide v7, v6

    move-object v6, v5

    move-object v5, v4

    const/4 v4, 0x4

    goto/16 :goto_7

    .line 99
    .end local v0    # "initialDelayMillis":J
    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v6    # "now":J
    .end local v8    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    .end local v9    # "delayNs":J
    .end local v11    # "delayMillis":J
    .end local v13    # "deadline":J
    .end local v21    # "nextDelay":J
    .restart local p0    # "delayMillis":J
    .restart local p2    # "initialDelayMillis":J
    .restart local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    :cond_2
    const-wide/16 v6, 0x0

    move-wide v8, v6

    .local v8, "deadline":J
    move-wide v10, v6

    .local v10, "adjustedDelay":J
    move-wide v12, v6

    .local v12, "nextDelay":J
    move-wide/from16 v19, v6

    .local v19, "delayNs":J
    move-wide/from16 v21, v6

    .local v21, "now":J
    iget-wide v6, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$6:J

    .end local v10    # "adjustedDelay":J
    .local v6, "adjustedDelay":J
    iget-wide v10, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$5:J

    .end local v12    # "nextDelay":J
    .local v10, "nextDelay":J
    iget-wide v12, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$4:J

    move-wide/from16 v21, v6

    .end local v6    # "adjustedDelay":J
    .local v12, "now":J
    .local v21, "adjustedDelay":J
    iget-wide v6, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    .end local v19    # "delayNs":J
    .local v6, "delayNs":J
    iget-wide v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iget-object v14, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/SendChannel;

    .end local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    .local v14, "channel":Lkotlinx/coroutines/channels/SendChannel;
    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    move-wide/from16 v19, v0

    .end local p2    # "initialDelayMillis":J
    .local v19, "initialDelayMillis":J
    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    .end local p0    # "delayMillis":J
    .local v0, "delayMillis":J
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide/from16 v17, v6

    move-wide/from16 v6, v21

    const/4 v15, 0x3

    goto/16 :goto_6

    .end local v0    # "delayMillis":J
    .end local v6    # "delayNs":J
    .end local v8    # "deadline":J
    .end local v10    # "nextDelay":J
    .end local v12    # "now":J
    .end local v14    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    .end local v19    # "initialDelayMillis":J
    .end local v21    # "adjustedDelay":J
    .restart local p0    # "delayMillis":J
    .restart local p2    # "initialDelayMillis":J
    .restart local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    :cond_3
    const-wide/16 v6, 0x0

    move-wide v8, v6

    .restart local v8    # "deadline":J
    move-wide v10, v6

    .local v10, "delayNs":J
    iget-wide v10, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    iget-wide v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iget-object v12, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    .end local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    .local v12, "channel":Lkotlinx/coroutines/channels/SendChannel;
    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    .end local p2    # "initialDelayMillis":J
    .local v0, "initialDelayMillis":J
    iget-wide v13, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    .end local p0    # "delayMillis":J
    .local v13, "delayMillis":J
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v6, v8

    move-wide v9, v10

    move-object v8, v12

    move-wide v11, v13

    const/4 v14, 0x2

    goto/16 :goto_4

    .end local v0    # "initialDelayMillis":J
    .end local v8    # "deadline":J
    .end local v10    # "delayNs":J
    .end local v12    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    .end local v13    # "delayMillis":J
    .restart local p0    # "delayMillis":J
    .restart local p2    # "initialDelayMillis":J
    .restart local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    :cond_4
    move-wide v6, v11

    move-wide v8, v6

    .restart local v8    # "deadline":J
    iget-wide v6, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    .end local v8    # "deadline":J
    .local v6, "deadline":J
    iget-object v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/SendChannel;

    .end local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    .local v8, "channel":Lkotlinx/coroutines/channels/SendChannel;
    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    .end local p2    # "initialDelayMillis":J
    .restart local v0    # "initialDelayMillis":J
    iget-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    .end local p0    # "delayMillis":J
    .local v9, "delayMillis":J
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v8

    move-wide v8, v9

    goto :goto_2

    .end local v0    # "initialDelayMillis":J
    .end local v6    # "deadline":J
    .end local v8    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    .end local v9    # "delayMillis":J
    .restart local p0    # "delayMillis":J
    .restart local p2    # "initialDelayMillis":J
    .restart local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    :cond_5
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lkotlinx/coroutines/TimeSource;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    :goto_1
    invoke-static/range {p2 .. p3}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 84
    .restart local v6    # "deadline":J
    move-wide/from16 v8, p0

    iput-wide v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    move-object/from16 v11, p4

    iput-object v11, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v6, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iput v10, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v0, v1, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v5, :cond_7

    .line 78
    return-object v5

    .line 85
    .end local p0    # "delayMillis":J
    .end local p2    # "initialDelayMillis":J
    .end local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    .restart local v0    # "initialDelayMillis":J
    .local v8, "delayMillis":J
    .local v11, "channel":Lkotlinx/coroutines/channels/SendChannel;
    :cond_7
    :goto_2
    invoke-static {v8, v9}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide v12

    .line 86
    .end local p5    # "$completion":Lkotlin/coroutines/Continuation;
    .local v2, "$completion":Lkotlin/coroutines/Continuation;
    .local v12, "delayNs":J
    :goto_3
    nop

    .line 87
    add-long/2addr v6, v12

    .line 88
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-wide v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput-object v11, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v6, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iput-wide v12, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    const/4 v14, 0x2

    iput v14, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-interface {v11, v10, v3}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v5, :cond_8

    .line 78
    return-object v5

    .line 88
    :cond_8
    move-wide/from16 v23, v8

    move-object v8, v11

    move-wide v9, v12

    move-wide/from16 v11, v23

    .line 89
    .end local v12    # "delayNs":J
    .local v8, "channel":Lkotlinx/coroutines/channels/SendChannel;
    .local v9, "delayNs":J
    .local v11, "delayMillis":J
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-interface {v13}, Lkotlinx/coroutines/TimeSource;->nanoTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    goto :goto_5

    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    :goto_5
    move-wide/from16 p0, v19

    .line 90
    .local p0, "now":J
    move-wide/from16 v14, p0

    move-object/from16 p0, v4

    move-object/from16 v19, v5

    .end local v4    # "$result":Ljava/lang/Object;
    .local v14, "now":J
    .local p0, "$result":Ljava/lang/Object;
    sub-long v4, v6, v14

    move-wide/from16 p2, v14

    const-wide/16 v13, 0x0

    .end local v14    # "now":J
    .local p2, "now":J
    invoke-static {v4, v5, v13, v14}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    .line 91
    .local v4, "nextDelay":J
    cmp-long v15, v4, v13

    if-nez v15, :cond_b

    cmp-long v15, v9, v13

    if-eqz v15, :cond_b

    .line 92
    sub-long v17, p2, v6

    rem-long v17, v17, v9

    sub-long v13, v9, v17

    .line 93
    .local v13, "adjustedDelay":J
    add-long v6, p2, v13

    .line 94
    move-wide/from16 p4, v4

    .end local v4    # "nextDelay":J
    .local p4, "nextDelay":J
    invoke-static {v13, v14}, Lkotlinx/coroutines/EventLoop_commonKt;->delayNanosToMillis(J)J

    move-result-wide v4

    iput-wide v11, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput-object v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v6, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iput-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    move-wide/from16 v17, v9

    move-wide/from16 v9, p2

    .end local p2    # "now":J
    .local v9, "now":J
    .restart local v17    # "delayNs":J
    iput-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$4:J

    move-wide/from16 v9, p4

    .end local p4    # "nextDelay":J
    .local v9, "nextDelay":J
    .restart local p2    # "now":J
    iput-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$5:J

    iput-wide v13, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$6:J

    const/4 v15, 0x3

    iput v15, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v4, v5, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, v19

    if-ne v4, v5, :cond_a

    .line 78
    return-object v5

    .line 94
    :cond_a
    move-object/from16 v4, p0

    move-wide/from16 v19, v0

    move-wide v0, v11

    move-wide v10, v9

    move-wide/from16 v23, v13

    move-object v14, v8

    move-wide/from16 v12, p2

    move-wide v8, v6

    move-wide/from16 v6, v23

    .end local v9    # "nextDelay":J
    .end local v11    # "delayMillis":J
    .end local v13    # "adjustedDelay":J
    .end local p0    # "$result":Ljava/lang/Object;
    .end local p2    # "now":J
    .local v0, "delayMillis":J
    .local v4, "$result":Ljava/lang/Object;
    .local v6, "adjustedDelay":J
    .local v8, "deadline":J
    .local v10, "nextDelay":J
    .local v12, "now":J
    .local v14, "channel":Lkotlinx/coroutines/channels/SendChannel;
    .restart local v19    # "initialDelayMillis":J
    :goto_6
    move-object v6, v5

    move-object v11, v14

    move-wide/from16 v12, v17

    move-object v5, v4

    const/4 v4, 0x4

    move-wide/from16 v23, v0

    move-wide/from16 v0, v19

    move-wide/from16 v19, v8

    move-wide/from16 v8, v23

    goto :goto_8

    .line 91
    .end local v10    # "nextDelay":J
    .end local v12    # "now":J
    .end local v14    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    .end local v17    # "delayNs":J
    .end local v19    # "initialDelayMillis":J
    .local v0, "initialDelayMillis":J
    .local v4, "nextDelay":J
    .local v6, "deadline":J
    .local v8, "channel":Lkotlinx/coroutines/channels/SendChannel;
    .local v9, "delayNs":J
    .restart local v11    # "delayMillis":J
    .restart local p0    # "$result":Ljava/lang/Object;
    .restart local p2    # "now":J
    :cond_b
    move-wide/from16 v17, v9

    const/4 v15, 0x3

    move-wide v9, v4

    move-object/from16 v5, v19

    .line 96
    .end local v4    # "nextDelay":J
    .local v9, "nextDelay":J
    .restart local v17    # "delayNs":J
    invoke-static {v9, v10}, Lkotlinx/coroutines/EventLoop_commonKt;->delayNanosToMillis(J)J

    move-result-wide v13

    iput-wide v11, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput-object v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v6, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v17

    .end local v17    # "delayNs":J
    .local v0, "delayNs":J
    .restart local v19    # "initialDelayMillis":J
    iput-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    move-wide/from16 v0, p2

    .end local p2    # "now":J
    .local v0, "now":J
    .restart local v17    # "delayNs":J
    iput-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$4:J

    iput-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$5:J

    const/4 v4, 0x4

    iput v4, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v13, v14, v3}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v5, :cond_c

    .line 78
    return-object v5

    .line 96
    :cond_c
    move-wide v12, v11

    move-object v11, v8

    move-object/from16 v23, v5

    move-object/from16 v5, p0

    move-wide/from16 v24, v6

    move-object/from16 v6, v23

    move-wide v7, v0

    move-wide/from16 v0, v19

    move-wide/from16 v19, v24

    .line 97
    .end local v6    # "deadline":J
    .end local v8    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    .end local p0    # "$result":Ljava/lang/Object;
    .local v0, "initialDelayMillis":J
    .local v5, "$result":Ljava/lang/Object;
    .local v7, "now":J
    .local v11, "channel":Lkotlinx/coroutines/channels/SendChannel;
    .local v12, "delayMillis":J
    .local v19, "deadline":J
    :goto_7
    move-wide v8, v12

    move-wide/from16 v12, v17

    .line 86
    .end local v7    # "now":J
    .end local v9    # "nextDelay":J
    .end local v17    # "delayNs":J
    .local v8, "delayMillis":J
    .local v12, "delayNs":J
    :goto_8
    move-object v4, v5

    move-object v5, v6

    move-wide/from16 v6, v19

    goto/16 :goto_3
.end method

.method public static final ticker(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 16
    .param p0, "delayMillis"    # J
    .param p2, "initialDelayMillis"    # J
    .param p4, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p5, "mode"    # Lkotlinx/coroutines/channels/TickerMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/channels/TickerMode;",
            ")",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 68
    move-wide/from16 v7, p0

    move-wide/from16 v9, p2

    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    const/4 v3, 0x1

    const/4 v11, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v11

    :goto_0
    const-string v4, " ms"

    if-eqz v2, :cond_3

    .line 69
    cmp-long v0, v9, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v11

    :goto_1
    if-eqz v3, :cond_2

    .line 70
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v12, v0

    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object/from16 v13, p4

    invoke-virtual {v0, v13}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v14

    new-instance v15, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;

    const/4 v6, 0x0

    move-object v0, v15

    move-object/from16 v1, p5

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;-><init>(Lkotlinx/coroutines/channels/TickerMode;JJLkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v11, v15}, Lkotlinx/coroutines/channels/ProduceKt;->produce(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0

    .line 113
    :cond_2
    move-object/from16 v13, p4

    const/4 v0, 0x0

    .line 69
    .local v0, "$i$a$-require-TickerChannelsKt$ticker$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected non-negative initial delay, but has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-TickerChannelsKt$ticker$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 113
    :cond_3
    move-object/from16 v13, p4

    const/4 v0, 0x0

    .line 68
    .local v0, "$i$a$-require-TickerChannelsKt$ticker$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected non-negative delay, but has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-TickerChannelsKt$ticker$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static synthetic ticker$default(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 0

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 64
    move-wide p2, p0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 65
    sget-object p4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 66
    sget-object p5, Lkotlinx/coroutines/channels/TickerMode;->FIXED_PERIOD:Lkotlinx/coroutines/channels/TickerMode;

    :cond_2
    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/channels/TickerChannelsKt;->ticker(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method
