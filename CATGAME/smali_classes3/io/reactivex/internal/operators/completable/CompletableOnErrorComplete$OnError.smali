.class final Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;
.super Ljava/lang/Object;
.source "CompletableOnErrorComplete.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnError"
.end annotation


# instance fields
.field private final s:Lio/reactivex/CompletableObserver;

.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete;Lio/reactivex/CompletableObserver;)V
    .locals 0
    .param p2, "s"    # Lio/reactivex/CompletableObserver;

    .line 42
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->this$0:Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->s:Lio/reactivex/CompletableObserver;

    .line 44
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 48
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->s:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 49
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 56
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->this$0:Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete;

    iget-object v1, v1, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .local v0, "b":Z
    nop

    .line 63
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->s:Lio/reactivex/CompletableObserver;

    invoke-interface {v1}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->s:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 68
    :goto_0
    return-void

    .line 57
    .end local v0    # "b":Z
    :catchall_0
    move-exception v1

    move v2, v0

    .line 58
    .local v1, "ex":Ljava/lang/Throwable;
    .local v2, "b":Z
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 59
    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->s:Lio/reactivex/CompletableObserver;

    new-instance v4, Lio/reactivex/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-direct {v4, v5}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableOnErrorComplete$OnError;->s:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 73
    return-void
.end method
