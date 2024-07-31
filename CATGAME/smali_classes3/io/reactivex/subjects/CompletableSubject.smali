.class public final Lio/reactivex/subjects/CompletableSubject;
.super Lio/reactivex/Completable;
.source "CompletableSubject.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

.field static final TERMINATED:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;


# instance fields
.field error:Ljava/lang/Throwable;

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;",
            ">;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    sput-object v1, Lio/reactivex/subjects/CompletableSubject;->EMPTY:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    .line 41
    new-array v0, v0, [Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    sput-object v0, Lio/reactivex/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->EMPTY:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    return-void
.end method

.method public static create()Lio/reactivex/subjects/CompletableSubject;
    .locals 1
    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 52
    new-instance v0, Lio/reactivex/subjects/CompletableSubject;

    invoke-direct {v0}, Lio/reactivex/subjects/CompletableSubject;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;)Z
    .locals 4
    .param p1, "inner"    # Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    .line 111
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    .line 112
    .local v0, "a":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 113
    return v2

    .line 116
    :cond_0
    array-length v1, v0

    .line 118
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    .line 119
    .local v3, "b":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    aput-object p1, v3, v1

    .line 121
    iget-object v2, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const/4 v2, 0x1

    return v2

    .line 124
    .end local v0    # "a":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    :cond_1
    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 167
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->error:Ljava/lang/Throwable;

    return-object v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 2

    .line 186
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObservers()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 2

    .line 178
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method observerCount()I
    .locals 1

    .line 202
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    array-length v0, v0

    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 84
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    .local v0, "arr$":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 86
    .local v3, "md":Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    iget-object v4, v3, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v4}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 85
    .end local v3    # "md":Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "arr$":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null errors are not allowed in 2.x"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 72
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iput-object p1, p0, Lio/reactivex/subjects/CompletableSubject;->error:Ljava/lang/Throwable;

    .line 74
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    .local v0, "arr$":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 75
    .local v3, "md":Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    iget-object v4, v3, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v4, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 74
    .end local v3    # "md":Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    goto :goto_1

    .line 78
    :cond_2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 80
    :goto_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 62
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/CompletableSubject;->TERMINATED:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    if-ne v0, v1, :cond_0

    .line 63
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 65
    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;)V
    .locals 7
    .param p1, "inner"    # Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    .line 129
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    .line 130
    .local v0, "a":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    array-length v1, v0

    .line 131
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    const/4 v2, -0x1

    .line 137
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 138
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 139
    move v2, v3

    .line 140
    goto :goto_2

    .line 137
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 144
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 145
    return-void

    .line 148
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 149
    sget-object v3, Lio/reactivex/subjects/CompletableSubject;->EMPTY:[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    .local v3, "b":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    goto :goto_3

    .line 151
    .end local v3    # "b":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    .line 152
    .local v4, "b":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 156
    .end local v4    # "b":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    .restart local v3    # "b":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    :goto_3
    iget-object v4, p0, Lio/reactivex/subjects/CompletableSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 157
    return-void

    .line 159
    .end local v0    # "a":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    :cond_5
    goto :goto_0
.end method

.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 2
    .param p1, "observer"    # Lio/reactivex/CompletableObserver;

    .line 93
    new-instance v0, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/subjects/CompletableSubject;)V

    .line 94
    .local v0, "md":Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 95
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/CompletableSubject;->add(Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v0}, Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/CompletableSubject;->remove(Lio/reactivex/subjects/CompletableSubject$CompletableDisposable;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lio/reactivex/subjects/CompletableSubject;->error:Ljava/lang/Throwable;

    .line 101
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 102
    invoke-interface {p1, v1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 107
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void
.end method
