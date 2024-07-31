.class public final Lio/reactivex/internal/disposables/ObserverFullArbiter;
.super Lio/reactivex/internal/disposables/FullArbiterPad1;
.source "ObserverFullArbiter.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/disposables/FullArbiterPad1;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field resource:Lio/reactivex/disposables/Disposable;

.field volatile s:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;Lio/reactivex/disposables/Disposable;I)V
    .locals 1
    .param p2, "resource"    # Lio/reactivex/disposables/Disposable;
    .param p3, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/disposables/Disposable;",
            "I)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lio/reactivex/internal/disposables/ObserverFullArbiter;, "Lio/reactivex/internal/disposables/ObserverFullArbiter<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Lio/reactivex/internal/disposables/FullArbiterPad1;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->actual:Lio/reactivex/Observer;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->resource:Lio/reactivex/disposables/Disposable;

    .line 43
    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {v0, p3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 44
    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    iput-object v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->s:Lio/reactivex/disposables/Disposable;

    .line 45
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 49
    .local p0, "this":Lio/reactivex/internal/disposables/ObserverFullArbiter;, "Lio/reactivex/internal/disposables/ObserverFullArbiter<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->cancelled:Z

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->cancelled:Z

    .line 51
    invoke-virtual {p0}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->disposeResource()V

    .line 53
    :cond_0
    return-void
.end method

.method disposeResource()V
    .locals 2

    .line 62
    .local p0, "this":Lio/reactivex/internal/disposables/ObserverFullArbiter;, "Lio/reactivex/internal/disposables/ObserverFullArbiter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->resource:Lio/reactivex/disposables/Disposable;

    .line 63
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->resource:Lio/reactivex/disposables/Disposable;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 67
    :cond_0
    return-void
.end method

.method drain()V
    .locals 8

    .line 104
    .local p0, "this":Lio/reactivex/internal/disposables/ObserverFullArbiter;, "Lio/reactivex/internal/disposables/ObserverFullArbiter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    .line 110
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 111
    .local v1, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    iget-object v2, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->actual:Lio/reactivex/Observer;

    .line 116
    .local v2, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    .line 117
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 118
    nop

    .line 157
    .end local v3    # "o":Ljava/lang/Object;
    iget-object v3, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v4, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 158
    if-nez v0, :cond_1

    .line 159
    nop

    .line 162
    return-void

    .line 121
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    .line 123
    .local v4, "v":Ljava/lang/Object;
    iget-object v5, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->s:Lio/reactivex/disposables/Disposable;

    if-ne v3, v5, :cond_8

    .line 124
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isDisposable(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 125
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->getDisposable(Ljava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v5

    .line 126
    .local v5, "next":Lio/reactivex/disposables/Disposable;
    iget-object v6, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v6}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 127
    iget-boolean v6, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->cancelled:Z

    if-nez v6, :cond_3

    .line 128
    iput-object v5, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->s:Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 130
    :cond_3
    invoke-interface {v5}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 132
    .end local v5    # "next":Lio/reactivex/disposables/Disposable;
    :goto_1
    goto :goto_3

    :cond_4
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    .line 133
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 134
    invoke-virtual {p0}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->disposeResource()V

    .line 136
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    .line 137
    .local v5, "ex":Ljava/lang/Throwable;
    iget-boolean v7, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->cancelled:Z

    if-nez v7, :cond_5

    .line 138
    iput-boolean v6, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->cancelled:Z

    .line 139
    invoke-interface {v2, v5}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 141
    :cond_5
    invoke-static {v5}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 143
    .end local v5    # "ex":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    :cond_6
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 144
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 145
    invoke-virtual {p0}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->disposeResource()V

    .line 147
    iget-boolean v5, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->cancelled:Z

    if-nez v5, :cond_8

    .line 148
    iput-boolean v6, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->cancelled:Z

    .line 149
    invoke-interface {v2}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_3

    .line 152
    :cond_7
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 155
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "v":Ljava/lang/Object;
    :cond_8
    :goto_3
    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 2

    .line 57
    .local p0, "this":Lio/reactivex/internal/disposables/ObserverFullArbiter;, "Lio/reactivex/internal/disposables/ObserverFullArbiter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->resource:Lio/reactivex/disposables/Disposable;

    .line 58
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->cancelled:Z

    :goto_0
    return v1
.end method

.method public onComplete(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 99
    .local p0, "this":Lio/reactivex/internal/disposables/ObserverFullArbiter;, "Lio/reactivex/internal/disposables/ObserverFullArbiter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p0}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->drain()V

    .line 101
    return-void
.end method

.method public onError(Ljava/lang/Throwable;Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Throwable;
    .param p2, "s"    # Lio/reactivex/disposables/Disposable;

    .line 90
    .local p0, "this":Lio/reactivex/internal/disposables/ObserverFullArbiter;, "Lio/reactivex/internal/disposables/ObserverFullArbiter<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->cancelled:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 92
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->drain()V

    .line 96
    return-void
.end method

.method public onNext(Ljava/lang/Object;Lio/reactivex/disposables/Disposable;)Z
    .locals 2
    .param p2, "s"    # Lio/reactivex/disposables/Disposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/reactivex/disposables/Disposable;",
            ")Z"
        }
    .end annotation

    .line 80
    .local p0, "this":Lio/reactivex/internal/disposables/ObserverFullArbiter;, "Lio/reactivex/internal/disposables/ObserverFullArbiter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->cancelled:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p0}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->drain()V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public setDisposable(Lio/reactivex/disposables/Disposable;)Z
    .locals 3
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 70
    .local p0, "this":Lio/reactivex/internal/disposables/ObserverFullArbiter;, "Lio/reactivex/internal/disposables/ObserverFullArbiter<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->cancelled:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    iget-object v1, p0, Lio/reactivex/internal/disposables/ObserverFullArbiter;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->disposable(Lio/reactivex/disposables/Disposable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lio/reactivex/internal/disposables/ObserverFullArbiter;->drain()V

    .line 76
    const/4 v0, 0x1

    return v0
.end method
