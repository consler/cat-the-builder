.class public final Lio/reactivex/internal/operators/maybe/MaybeZipIterable;
.super Lio/reactivex/Maybe;
.source "MaybeZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/MaybeSource<",
            "+TT;>;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeZipIterable;, "Lio/reactivex/internal/operators/maybe/MaybeZipIterable<TT;TR;>;"
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lio/reactivex/MaybeSource<+TT;>;>;"
    .local p2, "zipper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;+TR;>;"
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->sources:Ljava/lang/Iterable;

    .line 32
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->zipper:Lio/reactivex/functions/Function;

    .line 33
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TR;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeZipIterable;, "Lio/reactivex/internal/operators/maybe/MaybeZipIterable<TT;TR;>;"
    .local p1, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lio/reactivex/MaybeSource;

    .line 39
    .local v0, "a":[Lio/reactivex/MaybeSource;, "[Lio/reactivex/MaybeSource<+TT;>;"
    const/4 v1, 0x0

    .line 42
    .local v1, "n":I
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/MaybeSource;

    .line 43
    .local v3, "source":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    if-nez v3, :cond_0

    .line 44
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "One of the sources is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    .line 45
    return-void

    .line 47
    :cond_0
    array-length v4, v0

    if-ne v1, v4, :cond_1

    .line 48
    shr-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lio/reactivex/MaybeSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v4

    .line 50
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "n":I
    .local v4, "n":I
    :try_start_1
    aput-object v3, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .end local v3    # "source":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TT;>;"
    move v1, v4

    goto :goto_0

    .line 52
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    move v1, v4

    goto :goto_2

    .line 56
    .end local v4    # "n":I
    .restart local v1    # "n":I
    :cond_2
    nop

    .line 58
    if-nez v1, :cond_3

    .line 59
    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/MaybeObserver;)V

    .line 60
    return-void

    .line 63
    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 64
    const/4 v2, 0x0

    aget-object v2, v0, v2

    new-instance v3, Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;

    new-instance v4, Lio/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc;

    invoke-direct {v4, p0}, Lio/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc;-><init>(Lio/reactivex/internal/operators/maybe/MaybeZipIterable;)V

    invoke-direct {v3, p1, v4}, Lio/reactivex/internal/operators/maybe/MaybeMap$MapMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;Lio/reactivex/functions/Function;)V

    invoke-interface {v2, v3}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 65
    return-void

    .line 68
    :cond_4
    new-instance v2, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;

    iget-object v3, p0, Lio/reactivex/internal/operators/maybe/MaybeZipIterable;->zipper:Lio/reactivex/functions/Function;

    invoke-direct {v2, p1, v1, v3}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;-><init>(Lio/reactivex/MaybeObserver;ILio/reactivex/functions/Function;)V

    .line 70
    .local v2, "parent":Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;, "Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator<TT;TR;>;"
    invoke-interface {p1, v2}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 72
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_6

    .line 73
    invoke-virtual {v2}, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 74
    return-void

    .line 77
    :cond_5
    aget-object v4, v0, v3

    iget-object v5, v2, Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    .end local v3    # "i":I
    :cond_6
    return-void

    .line 52
    .end local v2    # "parent":Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator;, "Lio/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator<TT;TR;>;"
    :catchall_1
    move-exception v2

    .line 53
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_2
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 54
    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    .line 55
    return-void
.end method
