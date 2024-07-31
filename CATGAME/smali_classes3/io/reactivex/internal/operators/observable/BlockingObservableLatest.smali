.class public final Lio/reactivex/internal/operators/observable/BlockingObservableLatest;
.super Ljava/lang/Object;
.source "BlockingObservableLatest.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final source:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableLatest;, "Lio/reactivex/internal/operators/observable/BlockingObservableLatest<TT;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest;->source:Lio/reactivex/ObservableSource;

    .line 37
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lio/reactivex/internal/operators/observable/BlockingObservableLatest;, "Lio/reactivex/internal/operators/observable/BlockingObservableLatest<TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;-><init>()V

    .line 43
    .local v0, "lio":Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator;, "Lio/reactivex/internal/operators/observable/BlockingObservableLatest$BlockingObservableLatestIterator<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableLatest;->source:Lio/reactivex/ObservableSource;

    invoke-static {v1}, Lio/reactivex/Observable;->wrap(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Observable;->materialize()Lio/reactivex/Observable;

    move-result-object v1

    .line 45
    .local v1, "materialized":Lio/reactivex/Observable;, "Lio/reactivex/Observable<Lio/reactivex/Notification<TT;>;>;"
    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 46
    return-object v0
.end method
