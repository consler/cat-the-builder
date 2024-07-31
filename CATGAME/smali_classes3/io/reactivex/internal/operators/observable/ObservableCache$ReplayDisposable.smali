.class final Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableCache.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61f4da70baa2c698L


# instance fields
.field volatile cancelled:Z

.field final child:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field currentBuffer:[Ljava/lang/Object;

.field currentIndexInBuffer:I

.field index:I

.field final state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<",
            "TT;>;)V"
        }
    .end annotation

    .line 290
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    .local p1, "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    .local p2, "state":Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 291
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->child:Lio/reactivex/Observer;

    .line 292
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;

    .line 293
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 301
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    .line 303
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->removeChild(Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;)V

    .line 305
    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 297
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    return v0
.end method

.method public replay()V
    .locals 9

    .line 312
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->child:Lio/reactivex/Observer;

    .line 317
    .local v0, "child":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    const/4 v1, 0x1

    .line 321
    .local v1, "missed":I
    :goto_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    if-eqz v2, :cond_1

    .line 322
    return-void

    .line 327
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;

    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->size()I

    move-result v2

    .line 328
    .local v2, "s":I
    if-eqz v2, :cond_8

    .line 329
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentBuffer:[Ljava/lang/Object;

    .line 332
    .local v3, "b":[Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 333
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;

    invoke-virtual {v4}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->head()[Ljava/lang/Object;

    move-result-object v3

    .line 334
    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentBuffer:[Ljava/lang/Object;

    .line 336
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 337
    .local v4, "n":I
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->index:I

    .line 338
    .local v5, "j":I
    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentIndexInBuffer:I

    .line 340
    .local v6, "k":I
    :goto_1
    if-ge v5, v2, :cond_6

    .line 341
    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    if-eqz v7, :cond_3

    .line 342
    return-void

    .line 344
    :cond_3
    if-ne v6, v4, :cond_4

    .line 345
    aget-object v7, v3, v4

    check-cast v7, [Ljava/lang/Object;

    move-object v3, v7

    check-cast v3, [Ljava/lang/Object;

    .line 346
    const/4 v6, 0x0

    .line 348
    :cond_4
    aget-object v7, v3, v6

    .line 350
    .local v7, "o":Ljava/lang/Object;
    invoke-static {v7, v0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 351
    return-void

    .line 354
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 355
    nop

    .end local v7    # "o":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    .line 356
    goto :goto_1

    .line 358
    :cond_6
    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    if-eqz v7, :cond_7

    .line 359
    return-void

    .line 362
    :cond_7
    iput v5, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->index:I

    .line 363
    iput v6, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentIndexInBuffer:I

    .line 364
    iput-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentBuffer:[Ljava/lang/Object;

    .line 368
    .end local v3    # "b":[Ljava/lang/Object;
    .end local v4    # "n":I
    .end local v5    # "j":I
    .end local v6    # "k":I
    :cond_8
    neg-int v3, v1

    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->addAndGet(I)I

    move-result v1

    .line 369
    if-nez v1, :cond_9

    .line 370
    nop

    .line 373
    .end local v2    # "s":I
    return-void

    .line 372
    :cond_9
    goto :goto_0
.end method
