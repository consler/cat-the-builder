.class final Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplayProcessor.java"

# interfaces
.implements Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/processors/ReplayProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3ddb289978ca6d74L


# instance fields
.field final buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile done:Z

.field volatile size:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "capacityHint"    # I

    .line 531
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 533
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 537
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 539
    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 2
    .param p1, "notificationLite"    # Ljava/lang/Object;

    .line 543
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->lazySet(Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 546
    iput-boolean v1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    .line 547
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 553
    .local v0, "s":I
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 554
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 555
    .local v2, "b":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 556
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    return-object v3

    .line 557
    :cond_1
    :goto_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 558
    return-object v1

    .line 560
    :cond_2
    add-int/lit8 v1, v0, -0x2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 564
    .end local v2    # "b":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "o":Ljava/lang/Object;
    :cond_3
    return-object v1
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 571
    .local v0, "s":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 572
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 573
    aput-object v2, p1, v1

    .line 575
    :cond_0
    return-object p1

    .line 577
    :cond_1
    iget-object v3, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 578
    .local v3, "b":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 580
    .local v4, "o":Ljava/lang/Object;
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 581
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 582
    if-nez v0, :cond_4

    .line 583
    array-length v5, p1

    if-eqz v5, :cond_3

    .line 584
    aput-object v2, p1, v1

    .line 586
    :cond_3
    return-object p1

    .line 591
    :cond_4
    array-length v1, p1

    if-ge v1, v0, :cond_5

    .line 592
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 594
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 595
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v1

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    .end local v1    # "i":I
    :cond_6
    array-length v1, p1

    if-le v1, v0, :cond_7

    .line 598
    aput-object v2, p1, v0

    .line 601
    :cond_7
    return-object p1
.end method

.method public replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 607
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    return-void

    .line 611
    :cond_0
    const/4 v2, 0x1

    .line 612
    .local v2, "missed":I
    iget-object v3, v0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    .line 613
    .local v3, "b":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v4, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 615
    .local v4, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v5, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 617
    .local v5, "indexObject":Ljava/lang/Integer;
    if-eqz v5, :cond_1

    .line 618
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, "index":I
    goto :goto_0

    .line 620
    .end local v6    # "index":I
    :cond_1
    const/4 v6, 0x0

    .line 621
    .restart local v6    # "index":I
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 626
    :goto_0
    iget-boolean v7, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    .line 627
    iput-object v8, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 628
    return-void

    .line 631
    :cond_2
    iget v7, v0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 632
    .local v7, "s":I
    iget-object v9, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    .line 633
    .local v9, "r":J
    const-wide/16 v11, 0x0

    .line 635
    .local v11, "e":J
    :goto_1
    if-eq v7, v6, :cond_7

    .line 637
    iget-boolean v15, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v15, :cond_3

    .line 638
    iput-object v8, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 639
    return-void

    .line 642
    :cond_3
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 644
    .local v15, "o":Ljava/lang/Object;
    iget-boolean v13, v0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->done:Z

    if-eqz v13, :cond_5

    .line 645
    add-int/lit8 v13, v6, 0x1

    if-ne v13, v7, :cond_5

    .line 646
    iget v7, v0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 647
    add-int/lit8 v13, v6, 0x1

    if-ne v13, v7, :cond_5

    .line 648
    invoke-static {v15}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 649
    invoke-interface {v4}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_2

    .line 651
    :cond_4
    invoke-static {v15}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v13

    invoke-interface {v4, v13}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 653
    :goto_2
    iput-object v8, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 654
    const/4 v8, 0x1

    iput-boolean v8, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 655
    return-void

    .line 660
    :cond_5
    const-wide/16 v13, 0x0

    cmp-long v16, v9, v13

    if-nez v16, :cond_6

    .line 661
    iget-object v8, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    add-long v9, v16, v11

    .line 662
    cmp-long v8, v9, v13

    if-nez v8, :cond_6

    .line 663
    goto :goto_3

    .line 667
    :cond_6
    invoke-interface {v4, v15}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 668
    const-wide/16 v13, 0x1

    sub-long/2addr v9, v13

    .line 669
    sub-long/2addr v11, v13

    .line 670
    nop

    .end local v15    # "o":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    .line 671
    const/4 v8, 0x0

    goto :goto_1

    .line 673
    :cond_7
    :goto_3
    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-eqz v8, :cond_8

    .line 674
    iget-object v8, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    const-wide v18, 0x7fffffffffffffffL

    cmp-long v8, v13, v18

    if-eqz v8, :cond_8

    .line 675
    iget-object v8, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v9

    .line 678
    :cond_8
    iget v8, v0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    if-eq v6, v8, :cond_9

    const-wide/16 v13, 0x0

    cmp-long v8, v9, v13

    if-eqz v8, :cond_9

    .line 679
    goto/16 :goto_0

    .line 682
    :cond_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 684
    neg-int v8, v2

    invoke-virtual {v1, v8}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    move-result v2

    .line 685
    if-nez v2, :cond_a

    .line 686
    nop

    .line 689
    .end local v7    # "s":I
    .end local v9    # "r":J
    .end local v11    # "e":J
    return-void

    .line 688
    :cond_a
    goto/16 :goto_0
.end method

.method public size()I
    .locals 3

    .line 693
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->size:I

    .line 694
    .local v0, "s":I
    if-eqz v0, :cond_2

    .line 695
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;->buffer:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 696
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    return v0

    .line 697
    :cond_1
    :goto_0
    add-int/lit8 v2, v0, -0x1

    return v2

    .line 701
    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method
