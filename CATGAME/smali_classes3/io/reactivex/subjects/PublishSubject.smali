.class public final Lio/reactivex/subjects/PublishSubject;
.super Lio/reactivex/subjects/Subject;
.source "PublishSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/PublishSubject$PublishDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subjects/Subject<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

.field static final TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;


# instance fields
.field error:Ljava/lang/Throwable;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/PublishSubject$PublishDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    sput-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .line 54
    new-array v0, v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    sput-object v0, Lio/reactivex/subjects/PublishSubject;->EMPTY:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 77
    .local p0, "this":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->EMPTY:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 79
    return-void
.end method

.method public static create()Lio/reactivex/subjects/PublishSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/PublishSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 69
    new-instance v0, Lio/reactivex/subjects/PublishSubject;

    invoke-direct {v0}, Lio/reactivex/subjects/PublishSubject;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/subjects/PublishSubject$PublishDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/PublishSubject$PublishDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 110
    .local p0, "this":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    .local p1, "ps":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .line 111
    .local v0, "a":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 112
    return v2

    .line 115
    :cond_0
    array-length v1, v0

    .line 117
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .line 118
    .local v3, "b":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    aput-object p1, v3, v1

    .line 121
    iget-object v2, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const/4 v2, 0x1

    return v2

    .line 124
    .end local v0    # "a":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 223
    .local p0, "this":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->error:Ljava/lang/Throwable;

    return-object v0

    .line 226
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 2

    .line 236
    .local p0, "this":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->error:Ljava/lang/Throwable;

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

    .line 218
    .local p0, "this":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

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

    .line 231
    .local p0, "this":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 208
    .local p0, "this":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .local v0, "arr$":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 212
    .local v3, "s":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    invoke-virtual {v3}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->onComplete()V

    .line 211
    .end local v3    # "s":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "arr$":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 191
    .local p0, "this":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    .line 192
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 193
    return-void

    .line 195
    :cond_0
    if-nez p1, :cond_1

    .line 196
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 198
    :cond_1
    iput-object p1, p0, Lio/reactivex/subjects/PublishSubject;->error:Ljava/lang/Throwable;

    .line 200
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .local v0, "arr$":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 201
    .local v3, "s":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    invoke-virtual {v3, p1}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->onError(Ljava/lang/Throwable;)V

    .line 200
    .end local v3    # "s":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "arr$":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    if-nez p1, :cond_1

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    .line 181
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .local v0, "arr$":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 184
    .local v3, "s":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    invoke-virtual {v3, p1}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->onNext(Ljava/lang/Object;)V

    .line 183
    .end local v3    # "s":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "arr$":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 169
    .local p0, "this":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    .line 170
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 172
    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/subjects/PublishSubject$PublishDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/PublishSubject$PublishDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 134
    .local p0, "this":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    .local p1, "ps":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .line 135
    .local v0, "a":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    sget-object v1, Lio/reactivex/subjects/PublishSubject;->TERMINATED:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/subjects/PublishSubject;->EMPTY:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    if-ne v0, v1, :cond_0

    goto :goto_4

    .line 139
    :cond_0
    array-length v1, v0

    .line 140
    .local v1, "n":I
    const/4 v2, -0x1

    .line 141
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 142
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 143
    move v2, v3

    .line 144
    goto :goto_2

    .line 141
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 149
    return-void

    .line 154
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 155
    sget-object v3, Lio/reactivex/subjects/PublishSubject;->EMPTY:[Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .local v3, "b":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    goto :goto_3

    .line 157
    .end local v3    # "b":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    .line 158
    .local v4, "b":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 161
    .end local v4    # "b":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    .restart local v3    # "b":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/subjects/PublishSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 162
    return-void

    .line 164
    .end local v0    # "a":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    :cond_5
    goto :goto_0

    .line 136
    .restart local v0    # "a":[Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "[Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lio/reactivex/subjects/PublishSubject;, "Lio/reactivex/subjects/PublishSubject<TT;>;"
    .local p1, "t":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/subjects/PublishSubject$PublishDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/PublishSubject;)V

    .line 85
    .local v0, "ps":Lio/reactivex/subjects/PublishSubject$PublishDisposable;, "Lio/reactivex/subjects/PublishSubject$PublishDisposable<TT;>;"
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 86
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/PublishSubject;->add(Lio/reactivex/subjects/PublishSubject$PublishDisposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject$PublishDisposable;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/PublishSubject;->remove(Lio/reactivex/subjects/PublishSubject$PublishDisposable;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lio/reactivex/subjects/PublishSubject;->error:Ljava/lang/Throwable;

    .line 94
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 95
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    .line 100
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void
.end method
