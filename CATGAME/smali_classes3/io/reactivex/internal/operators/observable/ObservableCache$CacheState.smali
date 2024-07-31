.class final Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;
.super Lio/reactivex/internal/util/LinkedArrayList;
.source "ObservableCache.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/util/LinkedArrayList;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

.field static final TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;


# instance fields
.field final connection:Lio/reactivex/internal/disposables/SequentialDisposable;

.field volatile isConnected:Z

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field sourceDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    sput-object v1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    .line 129
    new-array v0, v0, [Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    return-void
.end method

.method constructor <init>(Lio/reactivex/Observable;I)V
    .locals 2
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<TT;>;"
    .local p1, "source":Lio/reactivex/Observable;, "Lio/reactivex/Observable<+TT;>;"
    invoke-direct {p0, p2}, Lio/reactivex/internal/util/LinkedArrayList;-><init>(I)V

    .line 142
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->source:Lio/reactivex/Observable;

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 144
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->connection:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 145
    return-void
.end method


# virtual methods
.method public addChild(Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 155
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<TT;>;"
    .local p1, "p":Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    .line 156
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 157
    return v2

    .line 159
    :cond_0
    array-length v1, v0

    .line 162
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    .line 163
    .local v3, "b":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    aput-object p1, v3, v1

    .line 165
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    const/4 v2, 0x1

    return v2

    .line 168
    .end local v0    # "a":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public connect()V
    .locals 1

    .line 216
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->source:Lio/reactivex/Observable;

    invoke-virtual {v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->isConnected:Z

    .line 218
    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 245
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->sourceDone:Z

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->sourceDone:Z

    .line 247
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->add(Ljava/lang/Object;)V

    .line 249
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->connection:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 250
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    .local v1, "arr$":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 251
    .local v4, "rp":Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<*>;"
    invoke-virtual {v4}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->replay()V

    .line 250
    .end local v4    # "rp":Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "arr$":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 232
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->sourceDone:Z

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->sourceDone:Z

    .line 234
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->add(Ljava/lang/Object;)V

    .line 236
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->connection:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->dispose()V

    .line 237
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    .local v1, "arr$":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 238
    .local v4, "rp":Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<*>;"
    invoke-virtual {v4}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->replay()V

    .line 237
    .end local v4    # "rp":Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "arr$":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 221
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->sourceDone:Z

    if-nez v0, :cond_0

    .line 222
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 223
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->add(Ljava/lang/Object;)V

    .line 224
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    .local v1, "arr$":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 225
    .local v4, "rp":Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<*>;"
    invoke-virtual {v4}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->replay()V

    .line 224
    .end local v4    # "rp":Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "arr$":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 208
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->connection:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->update(Lio/reactivex/disposables/Disposable;)Z

    .line 209
    return-void
.end method

.method public removeChild(Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<TT;>;"
    .local p1, "p":Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    .line 178
    .local v0, "a":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    array-length v1, v0

    .line 179
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    const/4 v2, -0x1

    .line 183
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 184
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    move v2, v3

    .line 186
    goto :goto_2

    .line 183
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 189
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 190
    return-void

    .line 193
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 194
    sget-object v3, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    .local v3, "b":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    goto :goto_3

    .line 196
    .end local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;

    .line 197
    .local v4, "b":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 200
    .end local v4    # "b":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    .restart local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 201
    return-void

    .line 203
    .end local v0    # "a":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    :cond_5
    goto :goto_0
.end method
