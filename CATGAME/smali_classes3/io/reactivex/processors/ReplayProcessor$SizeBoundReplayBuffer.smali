.class final Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;
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
    name = "SizeBoundReplayBuffer"
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
.field private static final serialVersionUID:J = 0x2a0555e4356f36aeL


# instance fields
.field volatile done:Z

.field volatile head:Lio/reactivex/processors/ReplayProcessor$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$Node<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final maxSize:I

.field size:I

.field tail:Lio/reactivex/processors/ReplayProcessor$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$Node<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .line 743
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 744
    const-string v0, "maxSize"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->maxSize:I

    .line 745
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    .line 746
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 747
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 748
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 760
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$Node;

    invoke-direct {v0, p1}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    .line 761
    .local v0, "n":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 763
    .local v1, "t":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 764
    iget v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    .line 765
    invoke-virtual {v1, v0}, Lio/reactivex/processors/ReplayProcessor$Node;->set(Ljava/lang/Object;)V

    .line 767
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->trim()V

    .line 768
    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 4
    .param p1, "notificationLite"    # Ljava/lang/Object;

    .line 772
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->lazySet(Ljava/lang/Object;)V

    .line 773
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$Node;

    invoke-direct {v0, p1}, Lio/reactivex/processors/ReplayProcessor$Node;-><init>(Ljava/lang/Object;)V

    .line 774
    .local v0, "n":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 776
    .local v1, "t":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->tail:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 777
    iget v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    .line 778
    invoke-virtual {v1, v0}, Lio/reactivex/processors/ReplayProcessor$Node;->set(Ljava/lang/Object;)V

    .line 780
    iput-boolean v3, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    .line 781
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 786
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    const/4 v0, 0x0

    .line 787
    .local v0, "prev":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 790
    .local v1, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 791
    .local v2, "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    if-nez v2, :cond_3

    .line 792
    nop

    .line 798
    .end local v2    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    iget-object v2, v1, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    .line 799
    .local v2, "v":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 800
    const/4 v3, 0x0

    return-object v3

    .line 802
    :cond_0
    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 806
    :cond_1
    return-object v2

    .line 803
    :cond_2
    :goto_1
    iget-object v3, v0, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    return-object v3

    .line 794
    .local v2, "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    :cond_3
    move-object v0, v1

    .line 795
    move-object v1, v2

    .line 796
    .end local v2    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 812
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 813
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size()I

    move-result v1

    .line 815
    .local v1, "s":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 816
    array-length v3, p1

    if-eqz v3, :cond_3

    .line 817
    const/4 v3, 0x0

    aput-object v2, p1, v3

    goto :goto_1

    .line 820
    :cond_0
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 821
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, [Ljava/lang/Object;

    .line 824
    :cond_1
    const/4 v3, 0x0

    .line 825
    .local v3, "i":I
    :goto_0
    if-eq v3, v1, :cond_2

    .line 826
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 827
    .local v4, "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    iget-object v5, v4, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    aput-object v5, p1, v3

    .line 828
    add-int/lit8 v3, v3, 0x1

    .line 829
    move-object v0, v4

    .line 830
    .end local v4    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    goto :goto_0

    .line 831
    :cond_2
    array-length v4, p1

    if-le v4, v1, :cond_3

    .line 832
    aput-object v2, p1, v1

    .line 836
    .end local v3    # "i":I
    :cond_3
    :goto_1
    return-object p1
.end method

.method public replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 842
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    return-void

    .line 846
    :cond_0
    const/4 v0, 0x1

    .line 847
    .local v0, "missed":I
    iget-object v1, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 849
    .local v1, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    check-cast v2, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 850
    .local v2, "index":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 851
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 856
    :cond_1
    :goto_0
    iget-object v3, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 857
    .local v3, "r":J
    const-wide/16 v5, 0x0

    .line 860
    .local v5, "e":J
    :goto_1
    iget-boolean v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    .line 861
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 862
    return-void

    .line 865
    :cond_2
    invoke-virtual {v2}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 867
    .local v7, "n":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    const-wide/16 v9, 0x0

    if-nez v7, :cond_3

    .line 868
    goto :goto_3

    .line 871
    :cond_3
    iget-object v11, v7, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    .line 873
    .local v11, "o":Ljava/lang/Object;
    iget-boolean v12, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->done:Z

    if-eqz v12, :cond_5

    .line 874
    invoke-virtual {v7}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_5

    .line 876
    invoke-static {v11}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 877
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_2

    .line 879
    :cond_4
    invoke-static {v11}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 881
    :goto_2
    iput-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 882
    const/4 v8, 0x1

    iput-boolean v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    .line 883
    return-void

    .line 887
    :cond_5
    cmp-long v8, v3, v9

    if-nez v8, :cond_8

    .line 888
    iget-object v8, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    add-long v3, v12, v5

    .line 889
    cmp-long v8, v3, v9

    if-nez v8, :cond_8

    .line 890
    nop

    .line 901
    .end local v7    # "n":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    .end local v11    # "o":Ljava/lang/Object;
    :goto_3
    cmp-long v7, v5, v9

    if-eqz v7, :cond_6

    .line 902
    iget-object v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    .line 903
    iget-object v7, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 907
    :cond_6
    iput-object v2, p1, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->index:Ljava/lang/Object;

    .line 909
    neg-int v7, v0

    invoke-virtual {p1, v7}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->addAndGet(I)I

    move-result v0

    .line 910
    if-nez v0, :cond_7

    .line 911
    nop

    .line 914
    .end local v3    # "r":J
    .end local v5    # "e":J
    return-void

    .line 913
    :cond_7
    goto :goto_0

    .line 894
    .restart local v3    # "r":J
    .restart local v5    # "e":J
    .restart local v7    # "n":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    .restart local v11    # "o":Ljava/lang/Object;
    :cond_8
    invoke-interface {v1, v11}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 895
    const-wide/16 v8, 0x1

    sub-long/2addr v3, v8

    .line 896
    sub-long/2addr v5, v8

    .line 898
    move-object v2, v7

    .line 899
    .end local v7    # "n":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    .end local v11    # "o":Ljava/lang/Object;
    goto :goto_1
.end method

.method public size()I
    .locals 5

    .line 918
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    const/4 v0, 0x0

    .line 919
    .local v0, "s":I
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 920
    .local v1, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    :goto_0
    const v2, 0x7fffffff

    if-eq v0, v2, :cond_2

    .line 921
    invoke-virtual {v1}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/processors/ReplayProcessor$Node;

    .line 922
    .local v2, "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 923
    iget-object v3, v1, Lio/reactivex/processors/ReplayProcessor$Node;->value:Ljava/lang/Object;

    .line 924
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 925
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 929
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 930
    move-object v1, v2

    .line 931
    .end local v2    # "next":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    goto :goto_0

    .line 933
    :cond_2
    :goto_1
    return v0
.end method

.method trim()V
    .locals 2

    .line 751
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer<TT;>;"
    iget v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    .line 752
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->size:I

    .line 753
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 754
    .local v0, "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lio/reactivex/processors/ReplayProcessor$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/processors/ReplayProcessor$Node;

    iput-object v1, p0, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;->head:Lio/reactivex/processors/ReplayProcessor$Node;

    .line 756
    .end local v0    # "h":Lio/reactivex/processors/ReplayProcessor$Node;, "Lio/reactivex/processors/ReplayProcessor$Node<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
