.class final Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;
.super Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;
.source "ObservableSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SampleMainNoLast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a0bdab9530de829L


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/ObservableSource<",
            "*>;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;, "Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "other":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<*>;"
    invoke-direct {p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;)V

    .line 163
    return-void
.end method


# virtual methods
.method completeMain()V
    .locals 1

    .line 167
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;, "Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 168
    return-void
.end method

.method completeOther()V
    .locals 1

    .line 172
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;, "Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 173
    return-void
.end method

.method run()V
    .locals 0

    .line 177
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;, "Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;->emit()V

    .line 178
    return-void
.end method
