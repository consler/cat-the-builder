.class public final Lio/reactivex/subjects/SingleSubject;
.super Lio/reactivex/Single;
.source "SingleSubject.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/SingleSubject$SingleDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "TT;>;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

.field static final TERMINATED:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;


# instance fields
.field error:Ljava/lang/Throwable;

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/SingleSubject$SingleDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    sput-object v1, Lio/reactivex/subjects/SingleSubject;->EMPTY:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    .line 44
    new-array v0, v0, [Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    sput-object v0, Lio/reactivex/subjects/SingleSubject;->TERMINATED:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 62
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/SingleSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/SingleSubject;->EMPTY:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    return-void
.end method

.method public static create()Lio/reactivex/subjects/SingleSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/SingleSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 58
    new-instance v0, Lio/reactivex/subjects/SingleSubject;

    invoke-direct {v0}, Lio/reactivex/subjects/SingleSubject;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/subjects/SingleSubject$SingleDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/SingleSubject$SingleDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 125
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    .local p1, "inner":Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    .line 126
    .local v0, "a":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "[Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    sget-object v1, Lio/reactivex/subjects/SingleSubject;->TERMINATED:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 127
    return v2

    .line 130
    :cond_0
    array-length v1, v0

    .line 132
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    .line 133
    .local v3, "b":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "[Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    aput-object p1, v3, v1

    .line 135
    iget-object v2, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const/4 v2, 0x1

    return v2

    .line 138
    .end local v0    # "a":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "[Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "[Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 203
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/SingleSubject;->TERMINATED:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->error:Ljava/lang/Throwable;

    return-object v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/SingleSubject;->TERMINATED:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->value:Ljava/lang/Object;

    return-object v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasObservers()Z
    .locals 1

    .line 222
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/SingleSubject$SingleDisposable;

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

    .line 214
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/SingleSubject;->TERMINATED:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValue()Z
    .locals 2

    .line 194
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/SingleSubject;->TERMINATED:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->value:Ljava/lang/Object;

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

    .line 230
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    array-length v0, v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 92
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null errors are not allowed in 2.x"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 95
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iput-object p1, p0, Lio/reactivex/subjects/SingleSubject;->error:Ljava/lang/Throwable;

    .line 97
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/SingleSubject;->TERMINATED:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    .local v0, "arr$":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 98
    .local v3, "md":Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    iget-object v4, v3, Lio/reactivex/subjects/SingleSubject$SingleDisposable;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v4, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 97
    .end local v3    # "md":Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    goto :goto_1

    .line 101
    :cond_2
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 103
    :goto_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 69
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/SingleSubject;->TERMINATED:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    if-ne v0, v1, :cond_0

    .line 70
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 72
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null values are not allowed in 2.x"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/SingleSubject;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iput-object p1, p0, Lio/reactivex/subjects/SingleSubject;->value:Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/SingleSubject;->TERMINATED:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    .local v0, "arr$":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 84
    .local v3, "md":Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    iget-object v4, v3, Lio/reactivex/subjects/SingleSubject$SingleDisposable;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v4, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 83
    .end local v3    # "md":Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "arr$":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method remove(Lio/reactivex/subjects/SingleSubject$SingleDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/SingleSubject$SingleDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    .local p1, "inner":Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    .line 145
    .local v0, "a":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "[Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    array-length v1, v0

    .line 146
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 147
    return-void

    .line 150
    :cond_0
    const/4 v2, -0x1

    .line 152
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 153
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 154
    move v2, v3

    .line 155
    goto :goto_2

    .line 152
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 159
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 160
    return-void

    .line 163
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 164
    sget-object v3, Lio/reactivex/subjects/SingleSubject;->EMPTY:[Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    .local v3, "b":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "[Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    goto :goto_3

    .line 166
    .end local v3    # "b":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "[Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    .line 167
    .local v4, "b":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "[Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 171
    .end local v4    # "b":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "[Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    .restart local v3    # "b":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "[Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/subjects/SingleSubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 172
    return-void

    .line 174
    .end local v0    # "a":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "[Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "[Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    :cond_5
    goto :goto_0
.end method

.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lio/reactivex/subjects/SingleSubject;, "Lio/reactivex/subjects/SingleSubject<TT;>;"
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    new-instance v0, Lio/reactivex/subjects/SingleSubject$SingleDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/SingleSubject$SingleDisposable;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/subjects/SingleSubject;)V

    .line 108
    .local v0, "md":Lio/reactivex/subjects/SingleSubject$SingleDisposable;, "Lio/reactivex/subjects/SingleSubject$SingleDisposable<TT;>;"
    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 109
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/SingleSubject;->add(Lio/reactivex/subjects/SingleSubject$SingleDisposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lio/reactivex/subjects/SingleSubject$SingleDisposable;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/SingleSubject;->remove(Lio/reactivex/subjects/SingleSubject$SingleDisposable;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lio/reactivex/subjects/SingleSubject;->error:Ljava/lang/Throwable;

    .line 115
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 116
    invoke-interface {p1, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v2, p0, Lio/reactivex/subjects/SingleSubject;->value:Ljava/lang/Object;

    invoke-interface {p1, v2}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 121
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void
.end method
