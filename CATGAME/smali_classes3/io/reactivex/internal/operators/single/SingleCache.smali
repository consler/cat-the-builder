.class public final Lio/reactivex/internal/operators/single/SingleCache;
.super Lio/reactivex/Single;
.source "SingleCache.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

.field static final TERMINATED:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;


# instance fields
.field error:Ljava/lang/Throwable;

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    sput-object v1, Lio/reactivex/internal/operators/single/SingleCache;->EMPTY:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .line 26
    new-array v0, v0, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    sput-object v0, Lio/reactivex/internal/operators/single/SingleCache;->TERMINATED:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/SingleSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCache;, "Lio/reactivex/internal/operators/single/SingleCache<TT;>;"
    .local p1, "source":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleCache;->source:Lio/reactivex/SingleSource;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleCache;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/single/SingleCache;->EMPTY:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 71
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCache;, "Lio/reactivex/internal/operators/single/SingleCache<TT;>;"
    .local p1, "observer":Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .line 72
    .local v0, "a":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    sget-object v1, Lio/reactivex/internal/operators/single/SingleCache;->TERMINATED:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 73
    return v2

    .line 75
    :cond_0
    array-length v1, v0

    .line 77
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .line 78
    .local v3, "b":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    aput-object p1, v3, v1

    .line 80
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const/4 v2, 0x1

    return v2

    .line 83
    .end local v0    # "a":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 142
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCache;, "Lio/reactivex/internal/operators/single/SingleCache<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleCache;->error:Ljava/lang/Throwable;

    .line 144
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/single/SingleCache;->TERMINATED:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .local v0, "arr$":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 145
    .local v3, "d":Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    iget-object v4, v3, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v4, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 144
    .end local v3    # "d":Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 125
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCache;, "Lio/reactivex/internal/operators/single/SingleCache<TT;>;"
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 130
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCache;, "Lio/reactivex/internal/operators/single/SingleCache<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleCache;->value:Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/single/SingleCache;->TERMINATED:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .local v0, "arr$":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 133
    .local v3, "d":Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;->isDisposed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    iget-object v4, v3, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v4, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 132
    .end local v3    # "d":Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCache;, "Lio/reactivex/internal/operators/single/SingleCache<TT;>;"
    .local p1, "observer":Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .line 90
    .local v0, "a":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    array-length v1, v0

    .line 91
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    const/4 v2, -0x1

    .line 96
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 97
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 98
    move v2, v3

    .line 99
    goto :goto_2

    .line 96
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 104
    return-void

    .line 109
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 110
    sget-object v3, Lio/reactivex/internal/operators/single/SingleCache;->EMPTY:[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .local v3, "b":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    goto :goto_3

    .line 112
    .end local v3    # "b":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    .line 113
    .local v4, "b":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 116
    .end local v4    # "b":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    .restart local v3    # "b":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/single/SingleCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    return-void

    .line 119
    .end local v0    # "a":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "[Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    :cond_5
    goto :goto_0
.end method

.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleCache;, "Lio/reactivex/internal/operators/single/SingleCache<TT;>;"
    .local p1, "s":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/internal/operators/single/SingleCache;)V

    .line 48
    .local v0, "d":Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;, "Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable<TT;>;"
    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 50
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/single/SingleCache;->add(Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {v0}, Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/single/SingleCache;->remove(Lio/reactivex/internal/operators/single/SingleCache$CacheDisposable;)V

    .line 64
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleCache;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleCache;->source:Lio/reactivex/SingleSource;

    invoke-interface {v1, p0}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 67
    :cond_1
    return-void

    .line 55
    :cond_2
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleCache;->error:Ljava/lang/Throwable;

    .line 56
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 57
    invoke-interface {p1, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    :cond_3
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleCache;->value:Ljava/lang/Object;

    invoke-interface {p1, v2}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 61
    :goto_0
    return-void
.end method
