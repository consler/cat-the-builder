.class final Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;
.super Ljava/lang/Object;
.source "CompletableFromSingle.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableFromSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompletableFromSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final co:Lio/reactivex/CompletableObserver;


# direct methods
.method constructor <init>(Lio/reactivex/CompletableObserver;)V
    .locals 0
    .param p1, "co"    # Lio/reactivex/CompletableObserver;

    .line 35
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;, "Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;->co:Lio/reactivex/CompletableObserver;

    .line 37
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 41
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;, "Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;->co:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 46
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;, "Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;->co:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 47
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;, "Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver;->co:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 52
    return-void
.end method
