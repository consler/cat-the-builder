.class public final Lio/reactivex/internal/operators/observable/ObservableRange;
.super Lio/reactivex/Observable;
.source "ObservableRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final end:J

.field private final start:I


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 26
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 27
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->start:I

    .line 28
    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->end:J

    .line 29
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "o":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Ljava/lang/Integer;>;"
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->start:I

    int-to-long v2, v0

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->end:J

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;-><init>(Lio/reactivex/Observer;JJ)V

    .line 34
    .local v0, "parent":Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 35
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->run()V

    .line 36
    return-void
.end method
