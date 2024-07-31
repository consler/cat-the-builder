.class public final Lio/reactivex/internal/operators/observable/ObservablePublishSelector;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservablePublishSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservablePublishSelector$TargetObserver;,
        Lio/reactivex/internal/operators/observable/ObservablePublishSelector$SourceObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final selector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;+",
            "Lio/reactivex/ObservableSource<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;+",
            "Lio/reactivex/ObservableSource<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishSelector;, "Lio/reactivex/internal/operators/observable/ObservablePublishSelector<TT;TR;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    .local p2, "selector":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Observable<TT;>;+Lio/reactivex/ObservableSource<TR;>;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservablePublishSelector;->selector:Lio/reactivex/functions/Function;

    .line 39
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservablePublishSelector;, "Lio/reactivex/internal/operators/observable/ObservablePublishSelector<TT;TR;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 48
    .local v0, "subject":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublishSelector;->selector:Lio/reactivex/functions/Function;

    invoke-interface {v2, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The selector returned a null ObservableSource"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 53
    .local v1, "target":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TR;>;"
    nop

    .line 55
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservablePublishSelector$TargetObserver;

    invoke-direct {v2, p1}, Lio/reactivex/internal/operators/observable/ObservablePublishSelector$TargetObserver;-><init>(Lio/reactivex/Observer;)V

    .line 57
    .local v2, "o":Lio/reactivex/internal/operators/observable/ObservablePublishSelector$TargetObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublishSelector$TargetObserver<TT;TR;>;"
    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 59
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservablePublishSelector;->source:Lio/reactivex/ObservableSource;

    new-instance v4, Lio/reactivex/internal/operators/observable/ObservablePublishSelector$SourceObserver;

    invoke-direct {v4, v0, v2}, Lio/reactivex/internal/operators/observable/ObservablePublishSelector$SourceObserver;-><init>(Lio/reactivex/subjects/PublishSubject;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v3, v4}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 60
    return-void

    .line 49
    .end local v1    # "target":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TR;>;"
    .end local v2    # "o":Lio/reactivex/internal/operators/observable/ObservablePublishSelector$TargetObserver;, "Lio/reactivex/internal/operators/observable/ObservablePublishSelector$TargetObserver<TT;TR;>;"
    :catchall_0
    move-exception v2

    .line 50
    .restart local v1    # "target":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TR;>;"
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 51
    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    .line 52
    return-void
.end method
