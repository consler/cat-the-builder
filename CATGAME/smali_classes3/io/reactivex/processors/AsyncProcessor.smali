.class public final Lio/reactivex/processors/AsyncProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "AsyncProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
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
.field static final EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

.field static final TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;


# instance fields
.field error:Ljava/lang/Throwable;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

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

    .line 34
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    sput-object v1, Lio/reactivex/processors/AsyncProcessor;->EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 37
    new-array v0, v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    sput-object v0, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 63
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    return-void
.end method

.method public static create()Lio/reactivex/processors/AsyncProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/AsyncProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 55
    new-instance v0, Lio/reactivex/processors/AsyncProcessor;

    invoke-direct {v0}, Lio/reactivex/processors/AsyncProcessor;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 186
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "ps":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 187
    .local v0, "a":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 188
    return v2

    .line 191
    :cond_0
    array-length v1, v0

    .line 193
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 194
    .local v3, "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    aput-object p1, v3, v1

    .line 197
    iget-object v2, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    const/4 v2, 0x1

    return v2

    .line 200
    .end local v0    # "a":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 152
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 258
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 3

    .line 267
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 268
    .local v0, "v":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    goto :goto_0

    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    :goto_0
    return-object v2
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 280
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 281
    .local v0, "v":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 282
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 283
    aput-object v1, p1, v2

    .line 285
    :cond_0
    return-object p1

    .line 287
    :cond_1
    array-length v3, p1

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 288
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 290
    :cond_2
    aput-object v0, p1, v2

    .line 291
    array-length v2, p1

    if-eq v2, v4, :cond_3

    .line 292
    aput-object v1, p1, v4

    .line 294
    :cond_3
    return-object p1
.end method

.method public hasComplete()Z
    .locals 2

    .line 147
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

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

    .line 137
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

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

    .line 142
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

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

    .line 249
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method nullOnNext()V
    .locals 5

    .line 91
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "ex":Ljava/lang/Throwable;
    iput-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    .line 94
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .local v1, "arr$":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 95
    .local v4, "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {v4, v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onError(Ljava/lang/Throwable;)V

    .line 94
    .end local v4    # "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "arr$":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 6

    .line 119
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 123
    .local v0, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 124
    .local v1, "array":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    if-nez v0, :cond_2

    .line 125
    move-object v2, v1

    .local v2, "arr$":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 126
    .local v5, "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {v5}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onComplete()V

    .line 125
    .end local v5    # "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "arr$":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    goto :goto_2

    .line 129
    :cond_2
    move-object v2, v1

    .restart local v2    # "arr$":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
    array-length v3, v2

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 130
    .restart local v5    # "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {v5, v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->complete(Ljava/lang/Object;)V

    .line 129
    .end local v5    # "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 133
    .end local v2    # "arr$":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_3
    :goto_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 102
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 105
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_1

    .line 106
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 107
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    .line 111
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .local v0, "arr$":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 112
    .local v3, "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {v3, p1}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onError(Ljava/lang/Throwable;)V

    .line 111
    .end local v3    # "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "arr$":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    if-nez p1, :cond_1

    .line 83
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor;->nullOnNext()V

    .line 84
    return-void

    .line 86
    :cond_1
    iput-object p1, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 69
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    .line 70
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 71
    return-void

    .line 74
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 75
    return-void
.end method

.method remove(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 210
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "ps":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 211
    .local v0, "a":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    array-length v1, v0

    .line 212
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    const/4 v2, -0x1

    .line 217
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 218
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 219
    move v2, v3

    .line 220
    goto :goto_2

    .line 217
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 225
    return-void

    .line 230
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 231
    sget-object v3, Lio/reactivex/processors/AsyncProcessor;->EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .local v3, "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    goto :goto_3

    .line 233
    .end local v3    # "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 234
    .local v4, "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 237
    .end local v4    # "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    .restart local v3    # "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 238
    return-void

    .line 240
    .end local v0    # "a":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :cond_5
    goto :goto_0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/AsyncProcessor;)V

    .line 158
    .local v0, "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 159
    invoke-virtual {p0, v0}, Lio/reactivex/processors/AsyncProcessor;->add(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {p0, v0}, Lio/reactivex/processors/AsyncProcessor;->remove(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    .line 165
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 166
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v2, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 169
    .local v2, "v":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_2

    .line 170
    invoke-virtual {v0, v2}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->complete(Ljava/lang/Object;)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onComplete()V

    .line 176
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    :goto_0
    return-void
.end method
