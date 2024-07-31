.class final Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;
.super Lio/reactivex/observables/GroupedObservable;
.source "ObservableGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupedUnicast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observables/GroupedObservable<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field final state:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$State<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$State<",
            "TT;TK;>;)V"
        }
    .end annotation

    .line 187
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;, "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "state":Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;, "Lio/reactivex/internal/operators/observable/ObservableGroupBy$State<TT;TK;>;"
    invoke-direct {p0, p1}, Lio/reactivex/observables/GroupedObservable;-><init>(Ljava/lang/Object;)V

    .line 188
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    .line 189
    return-void
.end method

.method public static createWith(Ljava/lang/Object;ILio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;Z)Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;
    .locals 2
    .param p1, "bufferSize"    # I
    .param p3, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver<",
            "*TK;TT;>;Z)",
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast<",
            "TK;TT;>;"
        }
    .end annotation

    .line 182
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p2, "parent":Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;, "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver<*TK;TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;-><init>(ILio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;Ljava/lang/Object;Z)V

    .line 183
    .local v0, "state":Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;, "Lio/reactivex/internal/operators/observable/ObservableGroupBy$State<TT;TK;>;"
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;-><init>(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;)V

    return-object v1
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 205
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;, "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast<TK;TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->onComplete()V

    .line 206
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 201
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;, "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast<TK;TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->onError(Ljava/lang/Throwable;)V

    .line 202
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;, "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast<TK;TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->onNext(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 193
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;, "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast<TK;TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->state:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->subscribe(Lio/reactivex/Observer;)V

    .line 194
    return-void
.end method
