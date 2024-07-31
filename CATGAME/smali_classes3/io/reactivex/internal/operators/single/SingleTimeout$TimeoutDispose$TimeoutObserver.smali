.class final Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose$TimeoutObserver;
.super Ljava/lang/Object;
.source "SingleTimeout.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TimeoutObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;)V
    .locals 0

    .line 83
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose$TimeoutObserver;, "Lio/reactivex/internal/operators/single/SingleTimeout<TT;>.TimeoutDispose.TimeoutObserver;"
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose$TimeoutObserver;->this$1:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 87
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose$TimeoutObserver;, "Lio/reactivex/internal/operators/single/SingleTimeout<TT;>.TimeoutDispose.TimeoutObserver;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose$TimeoutObserver;->this$1:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose$TimeoutObserver;->this$1:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;->s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 93
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose$TimeoutObserver;, "Lio/reactivex/internal/operators/single/SingleTimeout<TT;>.TimeoutDispose.TimeoutObserver;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose$TimeoutObserver;->this$1:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 94
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose$TimeoutObserver;, "Lio/reactivex/internal/operators/single/SingleTimeout<TT;>.TimeoutDispose.TimeoutObserver;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose$TimeoutObserver;->this$1:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;->set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose$TimeoutObserver;->this$1:Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleTimeout$TimeoutDispose;->s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 100
    return-void
.end method
