.class public final Lio/reactivex/internal/operators/maybe/MaybeJust;
.super Lio/reactivex/Maybe;
.source "MaybeJust.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/ScalarCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TT;>;",
        "Lio/reactivex/internal/fuseable/ScalarCallable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeJust;, "Lio/reactivex/internal/operators/maybe/MaybeJust<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    .line 30
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeJust;->value:Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeJust;, "Lio/reactivex/internal/operators/maybe/MaybeJust<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeJust;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeJust;, "Lio/reactivex/internal/operators/maybe/MaybeJust<TT;>;"
    .local p1, "observer":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 36
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeJust;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
