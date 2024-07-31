.class public final Lio/reactivex/processors/PublishProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "PublishProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

.field static final TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;


# instance fields
.field error:Ljava/lang/Throwable;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/PublishProcessor$PublishSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    sput-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 65
    new-array v0, v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    sput-object v0, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 88
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 90
    return-void
.end method

.method public static create()Lio/reactivex/processors/PublishProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/PublishProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 80
    new-instance v0, Lio/reactivex/processors/PublishProcessor;

    invoke-direct {v0}, Lio/reactivex/processors/PublishProcessor;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/PublishProcessor$PublishSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 121
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    .local p1, "ps":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 122
    .local v0, "a":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 123
    return v2

    .line 126
    :cond_0
    array-length v1, v0

    .line 128
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 129
    .local v3, "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    aput-object p1, v3, v1

    .line 132
    iget-object v2, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    const/4 v2, 0x1

    return v2

    .line 135
    .end local v0    # "a":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 270
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    return-object v0

    .line 273
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 2

    .line 283
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubscribers()Z
    .locals 1

    .line 265
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

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

    .line 278
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 245
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/reactivex/processors/PublishProcessor;->onError(Ljava/lang/Throwable;)V

    .line 247
    return v0

    .line 249
    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 251
    .local v1, "array":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    move-object v2, v1

    .local v2, "arr$":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 252
    .local v5, "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {v5}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->isFull()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 253
    const/4 v0, 0x0

    return v0

    .line 251
    .end local v5    # "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "arr$":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    move-object v2, v1

    .restart local v2    # "arr$":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    array-length v3, v2

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 258
    .restart local v5    # "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {v5, p1}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onNext(Ljava/lang/Object;)V

    .line 257
    .end local v5    # "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 260
    .end local v2    # "arr$":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_3
    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 222
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .local v0, "arr$":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 226
    .local v3, "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {v3}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onComplete()V

    .line 225
    .end local v3    # "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "arr$":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 205
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 206
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 207
    return-void

    .line 209
    :cond_0
    if-nez p1, :cond_1

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 212
    :cond_1
    iput-object p1, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    .line 214
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .local v0, "arr$":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 215
    .local v3, "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {v3, p1}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onError(Ljava/lang/Throwable;)V

    .line 214
    .end local v3    # "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "arr$":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;
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

    .line 190
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    if-nez p1, :cond_1

    .line 194
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/processors/PublishProcessor;->onError(Ljava/lang/Throwable;)V

    .line 195
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .local v0, "arr$":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 198
    .local v3, "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-virtual {v3, p1}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->onNext(Ljava/lang/Object;)V

    .line 197
    .end local v3    # "s":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "arr$":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 180
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    .line 181
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 182
    return-void

    .line 185
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 186
    return-void
.end method

.method remove(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/PublishProcessor$PublishSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    .local p1, "ps":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 146
    .local v0, "a":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    sget-object v1, Lio/reactivex/processors/PublishProcessor;->TERMINATED:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    if-ne v0, v1, :cond_0

    goto :goto_4

    .line 150
    :cond_0
    array-length v1, v0

    .line 151
    .local v1, "n":I
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

    .line 165
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 166
    sget-object v3, Lio/reactivex/processors/PublishProcessor;->EMPTY:[Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .local v3, "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    goto :goto_3

    .line 168
    .end local v3    # "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    .line 169
    .local v4, "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 172
    .end local v4    # "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    .restart local v3    # "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/processors/PublishProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    return-void

    .line 175
    .end local v0    # "a":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :cond_5
    goto :goto_0

    .line 147
    .restart local v0    # "a":[Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "[Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lio/reactivex/processors/PublishProcessor;, "Lio/reactivex/processors/PublishProcessor<TT;>;"
    .local p1, "t":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/processors/PublishProcessor$PublishSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/PublishProcessor;)V

    .line 96
    .local v0, "ps":Lio/reactivex/processors/PublishProcessor$PublishSubscription;, "Lio/reactivex/processors/PublishProcessor$PublishSubscription<TT;>;"
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 97
    invoke-virtual {p0, v0}, Lio/reactivex/processors/PublishProcessor;->add(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Lio/reactivex/processors/PublishProcessor$PublishSubscription;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {p0, v0}, Lio/reactivex/processors/PublishProcessor;->remove(Lio/reactivex/processors/PublishProcessor$PublishSubscription;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/PublishProcessor;->error:Ljava/lang/Throwable;

    .line 105
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 106
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {p1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 111
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void
.end method
