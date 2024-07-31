.class public final Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorArray;
.super Lio/reactivex/Completable;
.source "CompletableMergeDelayErrorArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorArray$MergeInnerCompletableObserver;
    }
.end annotation


# instance fields
.field final sources:[Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>([Lio/reactivex/CompletableSource;)V
    .locals 0
    .param p1, "sources"    # [Lio/reactivex/CompletableSource;

    .line 27
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 28
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorArray;->sources:[Lio/reactivex/CompletableSource;

    .line 29
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 9
    .param p1, "s"    # Lio/reactivex/CompletableObserver;

    .line 33
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 34
    .local v0, "set":Lio/reactivex/disposables/CompositeDisposable;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorArray;->sources:[Lio/reactivex/CompletableSource;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 36
    .local v1, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v2, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v2}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    .line 38
    .local v2, "error":Lio/reactivex/internal/util/AtomicThrowable;
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 40
    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorArray;->sources:[Lio/reactivex/CompletableSource;

    .local v3, "arr$":[Lio/reactivex/CompletableSource;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 41
    .local v6, "c":Lio/reactivex/CompletableSource;
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    if-nez v6, :cond_1

    .line 46
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "A completable source is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 47
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-virtual {v2, v7}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 48
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 49
    goto :goto_1

    .line 52
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_1
    new-instance v7, Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorArray$MergeInnerCompletableObserver;

    invoke-direct {v7, p1, v0, v2, v1}, Lio/reactivex/internal/operators/completable/CompletableMergeDelayErrorArray$MergeInnerCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/internal/util/AtomicThrowable;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v6, v7}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 40
    .end local v6    # "c":Lio/reactivex/CompletableSource;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 55
    .end local v3    # "arr$":[Lio/reactivex/CompletableSource;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_4

    .line 56
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v3

    .line 57
    .local v3, "ex":Ljava/lang/Throwable;
    if-nez v3, :cond_3

    .line 58
    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_2

    .line 60
    :cond_3
    invoke-interface {p1, v3}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 63
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_4
    :goto_2
    return-void
.end method
