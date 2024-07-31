.class final Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;
.super Ljava/lang/Object;
.source "ObservableAmb.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AmbCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field final winner:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;I)V
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->actual:Lio/reactivex/Observer;

    .line 84
    new-array v0, p2, [Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    .line 85
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .line 125
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    .local v0, "arr$":[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 129
    .local v3, "a":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<TT;>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->dispose()V

    .line 128
    .end local v3    # "a":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 136
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public subscribe([Lio/reactivex/ObservableSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator<TT;>;"
    .local p1, "sources":[Lio/reactivex/ObservableSource;, "[Lio/reactivex/ObservableSource<+TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    .line 89
    .local v0, "as":[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<TT;>;"
    array-length v1, v0

    .line 90
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 91
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->actual:Lio/reactivex/Observer;

    invoke-direct {v3, p0, v4, v5}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;ILio/reactivex/Observer;)V

    aput-object v3, v0, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 94
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 96
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 97
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    return-void

    .line 101
    :cond_1
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public win(I)Z
    .locals 6
    .param p1, "index"    # I

    .line 106
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 107
    .local v0, "w":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 108
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    .line 110
    .local v1, "a":[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<TT;>;"
    array-length v3, v1

    .line 111
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 112
    add-int/lit8 v5, v4, 0x1

    if-eq v5, p1, :cond_0

    .line 113
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->dispose()V

    .line 111
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    .end local v4    # "i":I
    :cond_1
    return v2

    .line 118
    .end local v1    # "a":[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver<TT;>;"
    .end local v3    # "n":I
    :cond_2
    return v1

    .line 120
    :cond_3
    if-ne v0, p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method
