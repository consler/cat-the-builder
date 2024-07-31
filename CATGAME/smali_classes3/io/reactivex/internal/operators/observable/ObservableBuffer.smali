.class public final Lio/reactivex/internal/operators/observable/ObservableBuffer;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferSkipObserver;,
        Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final bufferSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final count:I

.field final skip:I


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;IILjava/util/concurrent/Callable;)V
    .locals 0
    .param p2, "count"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;II",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBuffer;, "Lio/reactivex/internal/operators/observable/ObservableBuffer<TT;TU;>;"
    .local p1, "source":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<TT;>;"
    .local p4, "bufferSupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TU;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 34
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->count:I

    .line 35
    iput p3, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->skip:I

    .line 36
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->bufferSupplier:Ljava/util/concurrent/Callable;

    .line 37
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableBuffer;, "Lio/reactivex/internal/operators/observable/ObservableBuffer<TT;TU;>;"
    .local p1, "t":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TU;>;"
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->skip:I

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->count:I

    if-ne v0, v1, :cond_1

    .line 42
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;-><init>(Lio/reactivex/Observer;ILjava/util/concurrent/Callable;)V

    .line 43
    .local v0, "bes":Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;, "Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver<TT;TU;>;"
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->createBuffer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->source:Lio/reactivex/ObservableSource;

    invoke-interface {v1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 46
    .end local v0    # "bes":Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;, "Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver<TT;TU;>;"
    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferSkipObserver;

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->count:I

    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->skip:I

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferSkipObserver;-><init>(Lio/reactivex/Observer;IILjava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 49
    :goto_0
    return-void
.end method
