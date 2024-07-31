.class public final Lio/reactivex/internal/operators/single/SingleAmb;
.super Lio/reactivex/Single;
.source "SingleAmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final sources:[Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/SingleSource;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/SingleSource<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleAmb;, "Lio/reactivex/internal/operators/single/SingleAmb<TT;>;"
    .local p1, "sources":[Lio/reactivex/SingleSource;, "[Lio/reactivex/SingleSource<+TT;>;"
    .local p2, "sourcesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/SingleSource<+TT;>;>;"
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sources:[Lio/reactivex/SingleSource;

    .line 30
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sourcesIterable:Ljava/lang/Iterable;

    .line 31
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleAmb;, "Lio/reactivex/internal/operators/single/SingleAmb<TT;>;"
    .local p1, "s":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sources:[Lio/reactivex/SingleSource;

    .line 37
    .local v0, "sources":[Lio/reactivex/SingleSource;, "[Lio/reactivex/SingleSource<+TT;>;"
    const/4 v1, 0x0

    .line 38
    .local v1, "count":I
    const-string v2, "One of the sources is null"

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 39
    const/16 v4, 0x8

    new-array v0, v4, [Lio/reactivex/SingleSource;

    .line 41
    :try_start_0
    iget-object v4, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/SingleSource;

    .line 42
    .local v5, "element":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    if-nez v5, :cond_0

    .line 43
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    .line 44
    return-void

    .line 46
    :cond_0
    array-length v6, v0

    if-ne v1, v6, :cond_1

    .line 47
    shr-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v1

    new-array v6, v6, [Lio/reactivex/SingleSource;

    .line 48
    .local v6, "b":[Lio/reactivex/SingleSource;, "[Lio/reactivex/SingleSource<+TT;>;"
    invoke-static {v0, v3, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    move-object v0, v6

    .line 51
    .end local v6    # "b":[Lio/reactivex/SingleSource;, "[Lio/reactivex/SingleSource<+TT;>;"
    :cond_1
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "count":I
    .local v6, "count":I
    :try_start_1
    aput-object v5, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .end local v5    # "element":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    move v1, v6

    goto :goto_0

    .line 53
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    move v1, v6

    goto :goto_1

    .line 57
    .end local v6    # "count":I
    .restart local v1    # "count":I
    :cond_2
    goto :goto_2

    .line 53
    :catchall_1
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 55
    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    .line 56
    return-void

    .line 59
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_3
    array-length v1, v0

    .line 62
    :goto_2
    new-instance v4, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v4}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 64
    .local v4, "set":Lio/reactivex/disposables/CompositeDisposable;
    new-instance v5, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;

    invoke-direct {v5, p1, v4}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 65
    .local v5, "shared":Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;, "Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver<TT;>;"
    invoke-interface {p1, v4}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 67
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v1, :cond_7

    .line 68
    aget-object v7, v0, v6

    .line 69
    .local v7, "s1":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    invoke-virtual {v5}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->get()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 70
    return-void

    .line 73
    :cond_4
    if-nez v7, :cond_6

    .line 74
    invoke-virtual {v4}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 75
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 76
    .restart local v2    # "e":Ljava/lang/Throwable;
    const/4 v8, 0x1

    invoke-virtual {v5, v3, v8}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 77
    invoke-interface {p1, v2}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 79
    :cond_5
    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 81
    :goto_4
    return-void

    .line 84
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v7, v5}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 67
    .end local v7    # "s1":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 86
    .end local v6    # "i":I
    :cond_7
    return-void
.end method
