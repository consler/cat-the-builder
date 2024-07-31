.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/observables/ConnectableObservable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final parent:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;)V"
        }
    .end annotation

    .line 330
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable<TT;>;"
    .local p1, "parent":Lio/reactivex/Observable;, "Lio/reactivex/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;->parent:Lio/reactivex/Observable;

    .line 332
    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/observables/ConnectableObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;"
        }
    .end annotation

    .line 336
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;->parent:Lio/reactivex/Observable;

    invoke-virtual {v0}, Lio/reactivex/Observable;->replay()Lio/reactivex/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;, "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable;->call()Lio/reactivex/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method
