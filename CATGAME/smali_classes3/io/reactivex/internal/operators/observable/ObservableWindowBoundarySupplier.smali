.class public final Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableWindowBoundarySupplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryInnerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;",
        "Lio/reactivex/Observable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final other:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "TB;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Ljava/util/concurrent/Callable;I)V
    .locals 0
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "TB;>;>;I)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;, "Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier<TT;TB;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    .local p2, "other":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+Lio/reactivex/ObservableSource<TB;>;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 39
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;->other:Ljava/util/concurrent/Callable;

    .line 40
    iput p3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;->bufferSize:I

    .line 41
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;, "Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier<TT;TB;>;"
    .local p1, "t":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lio/reactivex/Observable<TT;>;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;

    new-instance v2, Lio/reactivex/observers/SerializedObserver;

    invoke-direct {v2, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;->other:Ljava/util/concurrent/Callable;

    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier;->bufferSize:I

    invoke-direct {v1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;-><init>(Lio/reactivex/Observer;Ljava/util/concurrent/Callable;I)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 46
    return-void
.end method
