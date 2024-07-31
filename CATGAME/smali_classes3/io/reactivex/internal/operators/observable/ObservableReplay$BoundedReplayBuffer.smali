.class abstract Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BoundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$Node;",
        ">;",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field size:I

.field tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 595
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 596
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 597
    .local v0, "n":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 598
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 599
    return-void
.end method


# virtual methods
.method final addLast(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V
    .locals 1
    .param p1, "n"    # Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 606
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->set(Ljava/lang/Object;)V

    .line 607
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 608
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->size:I

    .line 609
    return-void
.end method

.method final collect(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .line 738
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->getHead()Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    move-result-object v0

    .line 740
    .local v0, "n":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 741
    .local v1, "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    if-eqz v1, :cond_1

    .line 742
    iget-object v2, v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    .line 743
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 744
    .local v3, "v":Ljava/lang/Object;
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 745
    goto :goto_1

    .line 747
    :cond_0
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 748
    move-object v0, v1

    .line 752
    .end local v1    # "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    goto :goto_0

    .line 753
    :cond_1
    :goto_1
    return-void
.end method

.method public final complete()V
    .locals 2

    .line 657
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 658
    .local v0, "o":Ljava/lang/Object;
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 659
    .local v1, "n":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->addLast(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    .line 660
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 661
    return-void
.end method

.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 713
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 649
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 650
    .local v0, "o":Ljava/lang/Object;
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 651
    .local v1, "n":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->addLast(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    .line 652
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 653
    return-void
.end method

.method getHead()Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    .locals 1

    .line 762
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    return-object v0
.end method

.method hasCompleted()Z
    .locals 1

    .line 758
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasError()Z
    .locals 1

    .line 755
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->tail:Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 722
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final next(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 641
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 642
    .local v0, "o":Ljava/lang/Object;
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 643
    .local v1, "n":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->addLast(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    .line 644
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->truncate()V

    .line 645
    return-void
.end method

.method final removeFirst()V
    .locals 3

    .line 614
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 615
    .local v0, "head":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 616
    .local v1, "next":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->size:I

    .line 619
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->setFirst(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    .line 620
    return-void
.end method

.method final removeSome(I)V
    .locals 2
    .param p1, "n"    # I

    .line 622
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 623
    .local v0, "head":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    :goto_0
    if-lez p1, :cond_0

    .line 624
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 625
    add-int/lit8 p1, p1, -0x1

    .line 626
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->size:I

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->setFirst(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V

    .line 630
    return-void
.end method

.method public final replay(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 665
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;, "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    return-void

    .line 669
    :cond_0
    const/4 v0, 0x1

    .line 672
    .local v0, "missed":I
    :goto_0
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->index()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 673
    .local v1, "node":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    if-nez v1, :cond_1

    .line 674
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->getHead()Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    move-result-object v1

    .line 675
    iput-object v1, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->index:Ljava/lang/Object;

    .line 679
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 680
    return-void

    .line 683
    :cond_2
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 684
    .local v2, "v":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    if-eqz v2, :cond_4

    .line 685
    iget-object v3, v2, Lio/reactivex/internal/operators/observable/ObservableReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 686
    .local v3, "o":Ljava/lang/Object;
    iget-object v4, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->child:Lio/reactivex/Observer;

    invoke-static {v3, v4}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 687
    const/4 v4, 0x0

    iput-object v4, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->index:Ljava/lang/Object;

    .line 688
    return-void

    .line 690
    :cond_3
    move-object v1, v2

    .line 694
    .end local v2    # "v":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_1

    .line 696
    :cond_4
    iput-object v1, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->index:Ljava/lang/Object;

    .line 698
    neg-int v2, v0

    invoke-virtual {p1, v2}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->addAndGet(I)I

    move-result v0

    .line 699
    if-nez v0, :cond_5

    .line 700
    nop

    .line 704
    .end local v1    # "node":Lio/reactivex/internal/operators/observable/ObservableReplay$Node;
    return-void

    .line 702
    :cond_5
    goto :goto_0
.end method

.method final setFirst(Lio/reactivex/internal/operators/observable/ObservableReplay$Node;)V
    .locals 0
    .param p1, "n"    # Lio/reactivex/internal/operators/observable/ObservableReplay$Node;

    .line 636
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 637
    return-void
.end method

.method abstract truncate()V
.end method

.method truncateFinal()V
    .locals 0

    .line 736
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;, "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method
