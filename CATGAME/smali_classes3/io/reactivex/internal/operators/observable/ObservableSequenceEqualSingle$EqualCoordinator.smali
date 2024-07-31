.class final Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableSequenceEqualSingle.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqualCoordinator"
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
.field private static final serialVersionUID:J = -0x55bcb3aaa8a061f8L


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final comparer:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final first:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field final resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field final second:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field v1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field v2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;ILio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiPredicate;)V
    .locals 4
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Ljava/lang/Boolean;>;"
    .local p3, "first":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TT;>;"
    .local p4, "second":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TT;>;"
    .local p5, "comparer":Lio/reactivex/functions/BiPredicate;, "Lio/reactivex/functions/BiPredicate<-TT;-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 72
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    .line 73
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/ObservableSource;

    .line 74
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/ObservableSource;

    .line 75
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    .line 77
    const/4 v0, 0x2

    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    .line 78
    .local v1, "as":[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;, "[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver<TT;>;"
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    .line 79
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;II)V

    aput-object v2, v1, v3

    .line 80
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;II)V

    aput-object v2, v1, v3

    .line 81
    new-instance v2, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-direct {v2, v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;-><init>(I)V

    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    .line 82
    return-void
.end method


# virtual methods
.method cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator<TT;>;"
    .local p1, "q1":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    .local p2, "q2":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancelled:Z

    .line 115
    invoke-virtual {p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 116
    invoke-virtual {p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 117
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 96
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancelled:Z

    .line 98
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 100
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    .line 102
    .local v1, "as":[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;, "[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver<TT;>;"
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v2, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 103
    aget-object v0, v1, v0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 106
    .end local v1    # "as":[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;, "[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver<TT;>;"
    :cond_0
    return-void
.end method

.method drain()V
    .locals 16

    .line 120
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator<TT;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x1

    .line 125
    .local v0, "missed":I
    iget-object v2, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    .line 127
    .local v2, "as":[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;, "[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver<TT;>;"
    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 128
    .local v4, "s1":Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver<TT;>;"
    iget-object v5, v4, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 129
    .local v5, "q1":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    const/4 v6, 0x1

    aget-object v7, v2, v6

    .line 130
    .local v7, "s2":Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver<TT;>;"
    iget-object v8, v7, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    move v9, v0

    move v10, v3

    .line 135
    .end local v0    # "missed":I
    .local v8, "q2":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    .local v9, "missed":I
    :goto_0
    iget-boolean v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancelled:Z

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 137
    invoke-virtual {v8}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 138
    return-void

    .line 141
    :cond_1
    iget-boolean v11, v4, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->done:Z

    .line 143
    .local v11, "d1":Z
    if-eqz v11, :cond_2

    .line 144
    iget-object v0, v4, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->error:Ljava/lang/Throwable;

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v1, v5, v8}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 148
    iget-object v3, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v3, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 149
    return-void

    .line 153
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-boolean v12, v7, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->done:Z

    .line 154
    .local v12, "d2":Z
    if-eqz v12, :cond_3

    .line 155
    iget-object v0, v7, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->error:Ljava/lang/Throwable;

    .line 156
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {v1, v5, v8}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 159
    iget-object v3, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v3, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 160
    return-void

    .line 164
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 165
    invoke-virtual {v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    .line 167
    :cond_4
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v0, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    move v13, v0

    .line 169
    .local v13, "e1":Z
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 170
    invoke-virtual {v8}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    .line 172
    :cond_6
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v0, :cond_7

    move v0, v6

    goto :goto_2

    :cond_7
    move v0, v3

    :goto_2
    move v14, v0

    .line 174
    .local v14, "e2":Z
    if-eqz v11, :cond_8

    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    if-eqz v14, :cond_8

    .line 175
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 176
    return-void

    .line 178
    :cond_8
    if-eqz v11, :cond_9

    if-eqz v12, :cond_9

    if-eq v13, v14, :cond_9

    .line 179
    invoke-virtual {v1, v5, v8}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 181
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 182
    return-void

    .line 185
    :cond_9
    if-nez v13, :cond_b

    if-nez v14, :cond_b

    .line 189
    :try_start_0
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    iget-object v15, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    iget-object v6, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    invoke-interface {v0, v15, v6}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v0

    .line 196
    .local v10, "c":Z
    nop

    .line 198
    if-nez v10, :cond_a

    .line 199
    invoke-virtual {v1, v5, v8}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 201
    iget-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 202
    return-void

    .line 205
    :cond_a
    const/4 v0, 0x0

    iput-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    .line 206
    iput-object v0, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    goto :goto_3

    .line 190
    .end local v10    # "c":Z
    :catchall_0
    move-exception v0

    move v3, v10

    .line 191
    .local v0, "ex":Ljava/lang/Throwable;
    .local v3, "c":Z
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 192
    invoke-virtual {v1, v5, v8}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 194
    iget-object v6, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v6, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 195
    return-void

    .line 209
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "c":Z
    :cond_b
    :goto_3
    if-nez v13, :cond_d

    if-eqz v14, :cond_c

    .line 210
    goto :goto_4

    .line 212
    .end local v11    # "d1":Z
    .end local v12    # "d2":Z
    .end local v13    # "e1":Z
    .end local v14    # "e2":Z
    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 214
    :cond_d
    :goto_4
    neg-int v0, v9

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->addAndGet(I)I

    move-result v9

    .line 215
    if-nez v9, :cond_e

    .line 216
    nop

    .line 219
    return-void

    .line 215
    :cond_e
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .line 110
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancelled:Z

    return v0
.end method

.method setDisposable(Lio/reactivex/disposables/Disposable;I)Z
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;
    .param p2, "index"    # I

    .line 85
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0, p2, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method subscribe()V
    .locals 3

    .line 89
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    .line 90
    .local v0, "as":[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;, "[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/ObservableSource;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 91
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/ObservableSource;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 92
    return-void
.end method
