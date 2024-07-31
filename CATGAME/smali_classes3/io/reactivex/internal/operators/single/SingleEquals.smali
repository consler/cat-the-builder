.class public final Lio/reactivex/internal/operators/single/SingleEquals;
.super Lio/reactivex/Single;
.source "SingleEquals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final first:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final second:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleEquals;, "Lio/reactivex/internal/operators/single/SingleEquals<TT;>;"
    .local p1, "first":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    .local p2, "second":Lio/reactivex/SingleSource;, "Lio/reactivex/SingleSource<+TT;>;"
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleEquals;->first:Lio/reactivex/SingleSource;

    .line 30
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleEquals;->second:Lio/reactivex/SingleSource;

    .line 31
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleEquals;, "Lio/reactivex/internal/operators/single/SingleEquals<TT;>;"
    .local p1, "s":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 37
    .local v5, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 39
    .local v3, "values":[Ljava/lang/Object;
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    move-object v12, v0

    .line 40
    .local v12, "set":Lio/reactivex/disposables/CompositeDisposable;
    invoke-interface {p1, v12}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 42
    iget-object v6, p0, Lio/reactivex/internal/operators/single/SingleEquals;->first:Lio/reactivex/SingleSource;

    new-instance v7, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;

    const/4 v1, 0x0

    move-object v0, v7

    move-object v2, v12

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;-><init>(ILio/reactivex/disposables/CompositeDisposable;[Ljava/lang/Object;Lio/reactivex/SingleObserver;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v6, v7}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals;->second:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;

    const/4 v7, 0x1

    move-object v6, v1

    move-object v8, v12

    move-object v9, v3

    move-object v10, p1

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lio/reactivex/internal/operators/single/SingleEquals$InnerObserver;-><init>(ILio/reactivex/disposables/CompositeDisposable;[Ljava/lang/Object;Lio/reactivex/SingleObserver;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 44
    return-void
.end method
