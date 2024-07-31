.class public final Lio/reactivex/internal/operators/observable/ObservableDoOnEach;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final onAfterTerminate:Lio/reactivex/functions/Action;

.field final onComplete:Lio/reactivex/functions/Action;

.field final onError:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V
    .locals 0
    .param p4, "onComplete"    # Lio/reactivex/functions/Action;
    .param p5, "onAfterTerminate"    # Lio/reactivex/functions/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDoOnEach;, "Lio/reactivex/internal/operators/observable/ObservableDoOnEach<TT;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    .local p2, "onNext":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-TT;>;"
    .local p3, "onError":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Ljava/lang/Throwable;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 34
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach;->onNext:Lio/reactivex/functions/Consumer;

    .line 35
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach;->onError:Lio/reactivex/functions/Consumer;

    .line 36
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach;->onComplete:Lio/reactivex/functions/Action;

    .line 37
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach;->onAfterTerminate:Lio/reactivex/functions/Action;

    .line 38
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDoOnEach;, "Lio/reactivex/internal/operators/observable/ObservableDoOnEach<TT;>;"
    .local p1, "t":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach;->source:Lio/reactivex/ObservableSource;

    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach;->onNext:Lio/reactivex/functions/Consumer;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach;->onError:Lio/reactivex/functions/Consumer;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach;->onComplete:Lio/reactivex/functions/Action;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach;->onAfterTerminate:Lio/reactivex/functions/Action;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V

    invoke-interface {v0, v7}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 43
    return-void
.end method
