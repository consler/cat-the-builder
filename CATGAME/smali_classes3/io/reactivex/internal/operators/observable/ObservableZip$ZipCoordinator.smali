.class final Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableZip.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x296842a962149c03L


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final delayError:Z

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final row:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;IZ)V
    .locals 1
    .param p3, "count"    # I
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator<TT;TR;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    .local p2, "zipper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 90
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->actual:Lio/reactivex/Observer;

    .line 91
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    .line 92
    new-array v0, p3, [Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    .line 93
    new-array v0, p3, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->row:[Ljava/lang/Object;

    .line 94
    iput-boolean p4, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->delayError:Z

    .line 95
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 0

    .line 131
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator<TT;TR;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->clear()V

    .line 132
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelSources()V

    .line 133
    return-void
.end method

.method cancelSources()V
    .locals 4

    .line 136
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    .local v0, "arr$":[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 137
    .local v3, "zs":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<**>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->dispose()V

    .line 136
    .end local v3    # "zs":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<**>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;)Z
    .locals 2
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .param p4, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/Observer<",
            "-TR;>;Z",
            "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<",
            "**>;)Z"
        }
    .end annotation

    .line 218
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator<TT;TR;>;"
    .local p3, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    .local p5, "source":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<**>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    .line 220
    return v1

    .line 223
    :cond_0
    if-eqz p1, :cond_4

    .line 224
    if-eqz p4, :cond_2

    .line 225
    if-eqz p2, :cond_4

    .line 226
    iget-object v0, p5, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->error:Ljava/lang/Throwable;

    .line 227
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    .line 228
    if-eqz v0, :cond_1

    .line 229
    invoke-interface {p3, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-interface {p3}, Lio/reactivex/Observer;->onComplete()V

    .line 233
    :goto_0
    return v1

    .line 236
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v0, p5, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->error:Ljava/lang/Throwable;

    .line 237
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    .line 239
    invoke-interface {p3, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 240
    return v1

    .line 242
    :cond_3
    if-eqz p2, :cond_4

    .line 243
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    .line 244
    invoke-interface {p3}, Lio/reactivex/Observer;->onComplete()V

    .line 245
    return v1

    .line 250
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method clear()V
    .locals 5

    .line 142
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    .local v0, "arr$":[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 143
    .local v3, "zs":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<**>;"
    iget-object v4, v3, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 142
    .end local v3    # "zs":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<**>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "arr$":[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 116
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    .line 118
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelSources()V

    .line 119
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->clear()V

    .line 123
    :cond_0
    return-void
.end method

.method public drain()V
    .locals 21

    .line 148
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator<TT;TR;>;"
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x1

    .line 154
    .local v0, "missing":I
    iget-object v8, v7, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    .line 155
    .local v8, "zs":[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<TT;TR;>;"
    iget-object v9, v7, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->actual:Lio/reactivex/Observer;

    .line 156
    .local v9, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    iget-object v10, v7, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->row:[Ljava/lang/Object;

    .line 157
    .local v10, "os":[Ljava/lang/Object;, "[TT;"
    iget-boolean v11, v7, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->delayError:Z

    move v12, v0

    .line 162
    .end local v0    # "missing":I
    .local v11, "delayError":Z
    .local v12, "missing":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 163
    .local v0, "i":I
    const/4 v1, 0x0

    .line 164
    .local v1, "emptyCount":I
    move-object v13, v8

    .local v13, "arr$":[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;
    array-length v14, v13

    .local v14, "len$":I
    const/4 v2, 0x0

    move v15, v0

    move/from16 v16, v1

    move v0, v2

    .end local v1    # "emptyCount":I
    .local v0, "i$":I
    .local v15, "i":I
    .local v16, "emptyCount":I
    :goto_1
    if-ge v0, v14, :cond_7

    aget-object v6, v13, v0

    .line 165
    .local v6, "z":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<TT;TR;>;"
    aget-object v1, v10, v15

    if-nez v1, :cond_5

    .line 166
    iget-boolean v5, v6, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->done:Z

    .line 167
    .local v5, "d":Z
    iget-object v1, v6, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v17

    .line 168
    .local v17, "v":Ljava/lang/Object;, "TT;"
    if-nez v17, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move/from16 v18, v1

    .line 170
    .local v18, "empty":Z
    move-object/from16 v1, p0

    move v2, v5

    move/from16 v3, v18

    move-object v4, v9

    move/from16 v19, v5

    .end local v5    # "d":Z
    .local v19, "d":Z
    move v5, v11

    move-object/from16 v20, v6

    .end local v6    # "z":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<TT;TR;>;"
    .local v20, "z":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<TT;TR;>;"
    invoke-virtual/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    return-void

    .line 173
    :cond_3
    if-nez v18, :cond_4

    .line 174
    aput-object v17, v10, v15

    goto :goto_3

    .line 176
    :cond_4
    add-int/lit8 v16, v16, 0x1

    .line 178
    .end local v17    # "v":Ljava/lang/Object;, "TT;"
    .end local v18    # "empty":Z
    .end local v19    # "d":Z
    :goto_3
    move-object/from16 v1, v20

    goto :goto_4

    .line 179
    .end local v20    # "z":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<TT;TR;>;"
    .restart local v6    # "z":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<TT;TR;>;"
    :cond_5
    move-object/from16 v20, v6

    .end local v6    # "z":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<TT;TR;>;"
    .restart local v20    # "z":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<TT;TR;>;"
    move-object/from16 v1, v20

    .end local v20    # "z":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<TT;TR;>;"
    .local v1, "z":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<TT;TR;>;"
    iget-boolean v2, v1, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->done:Z

    if-eqz v2, :cond_6

    if-nez v11, :cond_6

    .line 180
    iget-object v2, v1, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;->error:Ljava/lang/Throwable;

    .line 181
    .local v2, "ex":Ljava/lang/Throwable;
    if-eqz v2, :cond_6

    .line 182
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    .line 183
    invoke-interface {v9, v2}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 184
    return-void

    .line 188
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_6
    :goto_4
    nop

    .end local v1    # "z":Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<TT;TR;>;"
    add-int/lit8 v15, v15, 0x1

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    .end local v0    # "i$":I
    .end local v13    # "arr$":[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;
    .end local v14    # "len$":I
    :cond_7
    if-eqz v16, :cond_8

    .line 192
    nop

    .line 210
    .end local v15    # "i":I
    .end local v16    # "emptyCount":I
    neg-int v0, v12

    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->addAndGet(I)I

    move-result v12

    .line 211
    if-nez v12, :cond_1

    .line 212
    return-void

    .line 197
    .restart local v15    # "i":I
    .restart local v16    # "emptyCount":I
    :cond_8
    :try_start_0
    iget-object v0, v7, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    invoke-virtual {v10}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The zipper returned a null value"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .local v0, "v":Ljava/lang/Object;, "TR;"
    nop

    .line 205
    invoke-interface {v9, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 207
    const/4 v1, 0x0

    invoke-static {v10, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .end local v0    # "v":Ljava/lang/Object;, "TR;"
    .end local v15    # "i":I
    .end local v16    # "emptyCount":I
    goto :goto_0

    .line 198
    .restart local v15    # "i":I
    .restart local v16    # "emptyCount":I
    :catchall_0
    move-exception v0

    move-object v1, v13

    .line 199
    .local v0, "ex":Ljava/lang/Throwable;
    .local v1, "v":Ljava/lang/Object;, "TR;"
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancel()V

    .line 201
    invoke-interface {v9, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 202
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 127
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    return v0
.end method

.method public subscribe([Lio/reactivex/ObservableSource;I)V
    .locals 5
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator<TT;TR;>;"
    .local p1, "sources":[Lio/reactivex/ObservableSource;, "[Lio/reactivex/ObservableSource<+TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    .line 99
    .local v0, "s":[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;, "[Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver<TT;TR;>;"
    array-length v1, v0

    .line 100
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 101
    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;

    invoke-direct {v3, p0, p2}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;I)V

    aput-object v3, v0, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->lazySet(I)V

    .line 105
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 106
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 107
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->cancelled:Z

    if-eqz v3, :cond_1

    .line 108
    return-void

    .line 110
    :cond_1
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
