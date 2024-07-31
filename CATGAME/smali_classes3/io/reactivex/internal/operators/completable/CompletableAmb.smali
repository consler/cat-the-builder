.class public final Lio/reactivex/internal/operators/completable/CompletableAmb;
.super Lio/reactivex/Completable;
.source "CompletableAmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;
    }
.end annotation


# instance fields
.field private final sources:[Lio/reactivex/CompletableSource;

.field private final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/CompletableSource;Ljava/lang/Iterable;)V
    .locals 0
    .param p1, "sources"    # [Lio/reactivex/CompletableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/CompletableSource;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p2, "sourcesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/CompletableSource;>;"
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableAmb;->sources:[Lio/reactivex/CompletableSource;

    .line 30
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableAmb;->sourcesIterable:Ljava/lang/Iterable;

    .line 31
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 10
    .param p1, "s"    # Lio/reactivex/CompletableObserver;

    .line 35
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableAmb;->sources:[Lio/reactivex/CompletableSource;

    .line 36
    .local v0, "sources":[Lio/reactivex/CompletableSource;
    const/4 v1, 0x0

    .line 37
    .local v1, "count":I
    const-string v2, "One of the sources is null"

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 38
    const/16 v4, 0x8

    new-array v0, v4, [Lio/reactivex/CompletableSource;

    .line 40
    :try_start_0
    iget-object v4, p0, Lio/reactivex/internal/operators/completable/CompletableAmb;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/CompletableSource;

    .line 41
    .local v5, "element":Lio/reactivex/CompletableSource;
    if-nez v5, :cond_0

    .line 42
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    .line 43
    return-void

    .line 45
    :cond_0
    array-length v6, v0

    if-ne v1, v6, :cond_1

    .line 46
    shr-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v1

    new-array v6, v6, [Lio/reactivex/CompletableSource;

    .line 47
    .local v6, "b":[Lio/reactivex/CompletableSource;
    invoke-static {v0, v3, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    move-object v0, v6

    .line 50
    .end local v6    # "b":[Lio/reactivex/CompletableSource;
    :cond_1
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "count":I
    .local v6, "count":I
    :try_start_1
    aput-object v5, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .end local v5    # "element":Lio/reactivex/CompletableSource;
    move v1, v6

    goto :goto_0

    .line 52
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    move v1, v6

    goto :goto_1

    .line 56
    .end local v6    # "count":I
    .restart local v1    # "count":I
    :cond_2
    goto :goto_2

    .line 52
    :catchall_1
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 54
    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    .line 55
    return-void

    .line 58
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    array-length v1, v0

    .line 61
    :goto_2
    new-instance v4, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v4}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 62
    .local v4, "set":Lio/reactivex/disposables/CompositeDisposable;
    invoke-interface {p1, v4}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 64
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 66
    .local v5, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v6, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;

    invoke-direct {v6, v5, v4, p1}, Lio/reactivex/internal/operators/completable/CompletableAmb$Amb;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/CompletableObserver;)V

    .line 68
    .local v6, "inner":Lio/reactivex/CompletableObserver;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v1, :cond_7

    .line 69
    aget-object v8, v0, v7

    .line 70
    .local v8, "c":Lio/reactivex/CompletableSource;
    invoke-virtual {v4}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 71
    return-void

    .line 73
    :cond_4
    if-nez v8, :cond_6

    .line 74
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    .line 75
    .local v2, "npe":Ljava/lang/NullPointerException;
    const/4 v9, 0x1

    invoke-virtual {v5, v3, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 76
    invoke-virtual {v4}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 77
    invoke-interface {p1, v2}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 79
    :cond_5
    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 81
    :goto_4
    return-void

    .line 85
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :cond_6
    invoke-interface {v8, v6}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 68
    .end local v8    # "c":Lio/reactivex/CompletableSource;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 88
    .end local v7    # "i":I
    :cond_7
    if-nez v1, :cond_8

    .line 89
    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 91
    :cond_8
    return-void
.end method
