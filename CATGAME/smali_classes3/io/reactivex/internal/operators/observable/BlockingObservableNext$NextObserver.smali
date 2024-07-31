.class final Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;
.super Lio/reactivex/observers/DisposableObserver;
.source "BlockingObservableNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/BlockingObservableNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NextObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/DisposableObserver<",
        "Lio/reactivex/Notification<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final buf:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lio/reactivex/Notification<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final waiting:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 132
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;, "Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver<TT;>;"
    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    .line 133
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .line 139
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;, "Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 143
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;, "Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver<TT;>;"
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 144
    return-void
.end method

.method public onNext(Lio/reactivex/Notification;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Notification<",
            "TT;>;)V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;, "Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver<TT;>;"
    .local p1, "args":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lio/reactivex/Notification;->isOnNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    :cond_0
    move-object v0, p1

    .line 151
    .local v0, "toOffer":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    :goto_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Notification;

    .line 155
    .local v1, "concurrentItem":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/reactivex/Notification;->isOnNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    move-object v0, v1

    .line 158
    .end local v1    # "concurrentItem":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    :cond_1
    goto :goto_0

    .line 161
    .end local v0    # "toOffer":Lio/reactivex/Notification;, "Lio/reactivex/Notification<TT;>;"
    :cond_2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 132
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;, "Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver<TT;>;"
    move-object v0, p1

    check-cast v0, Lio/reactivex/Notification;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->onNext(Lio/reactivex/Notification;)V

    return-void
.end method

.method setWaiting()V
    .locals 2

    .line 169
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;, "Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 170
    return-void
.end method

.method public takeNext()Lio/reactivex/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Notification<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 164
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;, "Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->setWaiting()V

    .line 165
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    .line 166
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Notification;

    return-object v0
.end method
