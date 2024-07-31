.class public final Lio/reactivex/internal/operators/completable/CompletableCache;
.super Lio/reactivex/Completable;
.source "CompletableCache.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

.field static final TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;


# instance fields
.field error:Ljava/lang/Throwable;

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;",
            ">;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final source:Lio/reactivex/CompletableSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    sput-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->EMPTY:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 32
    new-array v0, v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    sput-object v0, Lio/reactivex/internal/operators/completable/CompletableCache;->TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/CompletableSource;)V
    .locals 2
    .param p1, "source"    # Lio/reactivex/CompletableSource;

    .line 42
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 43
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->source:Lio/reactivex/CompletableSource;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->EMPTY:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)Z
    .locals 4
    .param p1, "inner"    # Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 97
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 98
    .local v0, "a":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 99
    return v2

    .line 101
    :cond_0
    array-length v1, v0

    .line 102
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 103
    .local v3, "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    aput-object p1, v3, v1

    .line 105
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const/4 v2, 0x1

    return v2

    .line 108
    .end local v0    # "a":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    :cond_1
    goto :goto_0
.end method

.method public onComplete()V
    .locals 5

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .local v0, "arr$":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 89
    .local v3, "inner":Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    invoke-virtual {v3}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    iget-object v4, v3, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v4}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 88
    .end local v3    # "inner":Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 78
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->error:Ljava/lang/Throwable;

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .local v0, "arr$":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 80
    .local v3, "inner":Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    invoke-virtual {v3}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    iget-object v4, v3, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v4, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 79
    .end local v3    # "inner":Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 74
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)V
    .locals 7
    .param p1, "inner"    # Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 113
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 114
    .local v0, "a":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    array-length v1, v0

    .line 115
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    const/4 v2, -0x1

    .line 121
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 122
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 123
    move v2, v3

    .line 124
    goto :goto_2

    .line 121
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 128
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 129
    return-void

    .line 134
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 135
    sget-object v3, Lio/reactivex/internal/operators/completable/CompletableCache;->EMPTY:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .local v3, "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    goto :goto_3

    .line 137
    .end local v3    # "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 138
    .local v4, "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 142
    .end local v4    # "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    .restart local v3    # "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    nop

    .line 146
    .end local v0    # "a":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    return-void

    .line 145
    :cond_5
    goto :goto_0
.end method

.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 4
    .param p1, "s"    # Lio/reactivex/CompletableObserver;

    .line 50
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;-><init>(Lio/reactivex/internal/operators/completable/CompletableCache;Lio/reactivex/CompletableObserver;)V

    .line 51
    .local v0, "inner":Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 53
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/completable/CompletableCache;->add(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {v0}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/completable/CompletableCache;->remove(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)V

    .line 58
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->source:Lio/reactivex/CompletableSource;

    invoke-interface {v1, p0}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->error:Ljava/lang/Throwable;

    .line 63
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 64
    invoke-interface {p1, v1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 69
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-void
.end method
