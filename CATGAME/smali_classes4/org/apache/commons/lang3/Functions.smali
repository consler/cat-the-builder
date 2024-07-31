.class public Lorg/apache/commons/lang3/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/Functions$FailableBiPredicate;,
        Lorg/apache/commons/lang3/Functions$FailablePredicate;,
        Lorg/apache/commons/lang3/Functions$FailableBiFunction;,
        Lorg/apache/commons/lang3/Functions$FailableFunction;,
        Lorg/apache/commons/lang3/Functions$FailableBiConsumer;,
        Lorg/apache/commons/lang3/Functions$FailableConsumer;,
        Lorg/apache/commons/lang3/Functions$FailableCallable;,
        Lorg/apache/commons/lang3/Functions$FailableRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiConsumer<",
            "TO1;TO2;TT;>;TO1;TO2;)V"
        }
    .end annotation

    .line 182
    .local p0, "pConsumer":Lorg/apache/commons/lang3/Functions$FailableBiConsumer;, "Lorg/apache/commons/lang3/Functions$FailableBiConsumer<TO1;TO2;TT;>;"
    .local p1, "pObject1":Ljava/lang/Object;, "TO1;"
    .local p2, "pObject2":Ljava/lang/Object;, "TO2;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/Functions$FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    nop

    .line 186
    return-void

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static accept(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableConsumer<",
            "TO;TT;>;TO;)V"
        }
    .end annotation

    .line 165
    .local p0, "pConsumer":Lorg/apache/commons/lang3/Functions$FailableConsumer;, "Lorg/apache/commons/lang3/Functions$FailableConsumer<TO;TT;>;"
    .local p1, "pObject":Ljava/lang/Object;, "TO;"
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/Functions$FailableConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    nop

    .line 169
    return-void

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static apply(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I1:",
            "Ljava/lang/Object;",
            "I2:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiFunction<",
            "TI1;TI2;TO;TT;>;TI1;TI2;)TO;"
        }
    .end annotation

    .line 218
    .local p0, "pFunction":Lorg/apache/commons/lang3/Functions$FailableBiFunction;, "Lorg/apache/commons/lang3/Functions$FailableBiFunction<TI1;TI2;TO;TT;>;"
    .local p1, "pInput1":Ljava/lang/Object;, "TI1;"
    .local p2, "pInput2":Ljava/lang/Object;, "TI2;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/Functions$FailableBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static apply(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableFunction<",
            "TI;TO;TT;>;TI;)TO;"
        }
    .end annotation

    .line 199
    .local p0, "pFunction":Lorg/apache/commons/lang3/Functions$FailableFunction;, "Lorg/apache/commons/lang3/Functions$FailableFunction<TI;TO;TT;>;"
    .local p1, "pInput":Ljava/lang/Object;, "TI;"
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/Functions$FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static call(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableCallable<",
            "TO;TT;>;)TO;"
        }
    .end annotation

    .line 150
    .local p0, "pCallable":Lorg/apache/commons/lang3/Functions$FailableCallable;, "Lorg/apache/commons/lang3/Functions$FailableCallable<TO;TT;>;"
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/Functions$FailableCallable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static synthetic lambda$tryWithResources$0(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 286
    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    return-void
.end method

.method public static rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "pThrowable"    # Ljava/lang/Throwable;

    .line 354
    if-eqz p0, :cond_3

    .line 357
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_2

    .line 359
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_1

    .line 361
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/io/UncheckedIOException;

    move-object v1, p0

    check-cast v1, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 360
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 358
    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 355
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The Throwable must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static run(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "TT;>;)V"
        }
    .end annotation

    .line 135
    .local p0, "pRunnable":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<TT;>;"
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/Functions$FailableRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    nop

    .line 139
    return-void

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static test(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiPredicate<",
            "TO1;TO2;TT;>;TO1;TO2;)Z"
        }
    .end annotation

    .line 252
    .local p0, "pPredicate":Lorg/apache/commons/lang3/Functions$FailableBiPredicate;, "Lorg/apache/commons/lang3/Functions$FailableBiPredicate<TO1;TO2;TT;>;"
    .local p1, "pObject1":Ljava/lang/Object;, "TO1;"
    .local p2, "pObject2":Ljava/lang/Object;, "TO2;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/Functions$FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static test(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailablePredicate<",
            "TO;TT;>;TO;)Z"
        }
    .end annotation

    .line 234
    .local p0, "pPredicate":Lorg/apache/commons/lang3/Functions$FailablePredicate;, "Lorg/apache/commons/lang3/Functions$FailablePredicate<TO;TT;>;"
    .local p1, "pObject":Ljava/lang/Object;, "TO;"
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/Functions$FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 235
    :catchall_0
    move-exception v0

    .line 236
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static varargs tryWithResources(Lorg/apache/commons/lang3/Functions$FailableRunnable;Lorg/apache/commons/lang3/Functions$FailableConsumer;[Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lorg/apache/commons/lang3/Functions$FailableConsumer<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 285
    .local p0, "pAction":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    .local p1, "pErrorHandler":Lorg/apache/commons/lang3/Functions$FailableConsumer;, "Lorg/apache/commons/lang3/Functions$FailableConsumer<Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    .local p2, "pResources":[Lorg/apache/commons/lang3/Functions$FailableRunnable;, "[Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 286
    sget-object v0, Lorg/apache/commons/lang3/-$$Lambda$Functions$L2k0GpoN0uUF4QMXDyyp_qUqLfw;->INSTANCE:Lorg/apache/commons/lang3/-$$Lambda$Functions$L2k0GpoN0uUF4QMXDyyp_qUqLfw;

    .local v0, "errorHandler":Lorg/apache/commons/lang3/Functions$FailableConsumer;, "Lorg/apache/commons/lang3/Functions$FailableConsumer<Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    goto :goto_0

    .line 288
    .end local v0    # "errorHandler":Lorg/apache/commons/lang3/Functions$FailableConsumer;, "Lorg/apache/commons/lang3/Functions$FailableConsumer<Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    :cond_0
    move-object v0, p1

    .line 290
    .restart local v0    # "errorHandler":Lorg/apache/commons/lang3/Functions$FailableConsumer;, "Lorg/apache/commons/lang3/Functions$FailableConsumer<Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 291
    array-length v2, p2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 292
    .local v4, "runnable":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    if-eqz v4, :cond_1

    .line 291
    .end local v4    # "runnable":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 293
    .restart local v4    # "runnable":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "A resource action must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    .end local v4    # "runnable":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    :cond_2
    const/4 v2, 0x0

    .line 299
    .local v2, "th":Ljava/lang/Throwable;
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/Functions$FailableRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    goto :goto_2

    .line 300
    :catchall_0
    move-exception v3

    .line 301
    .local v3, "t":Ljava/lang/Throwable;
    move-object v2, v3

    .line 303
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_2
    if-eqz p2, :cond_4

    .line 304
    array-length v3, p2

    :goto_3
    if-ge v1, v3, :cond_4

    aget-object v4, p2, v1

    .line 306
    .local v4, "runnable":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Object;>;"
    :try_start_1
    invoke-interface {v4}, Lorg/apache/commons/lang3/Functions$FailableRunnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    goto :goto_4

    .line 307
    :catchall_1
    move-exception v5

    .line 308
    .local v5, "t":Ljava/lang/Throwable;
    if-nez v2, :cond_3

    .line 309
    move-object v2, v5

    .line 304
    .end local v4    # "runnable":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Object;>;"
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 314
    :cond_4
    if-eqz v2, :cond_5

    .line 316
    :try_start_2
    invoke-interface {v0, v2}, Lorg/apache/commons/lang3/Functions$FailableConsumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 319
    goto :goto_5

    .line 317
    :catchall_2
    move-exception v1

    .line 318
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 321
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_5
    return-void
.end method

.method public static varargs tryWithResources(Lorg/apache/commons/lang3/Functions$FailableRunnable;[Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 345
    .local p0, "pAction":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    .local p1, "pResources":[Lorg/apache/commons/lang3/Functions$FailableRunnable;, "[Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/Functions;->tryWithResources(Lorg/apache/commons/lang3/Functions$FailableRunnable;Lorg/apache/commons/lang3/Functions$FailableConsumer;[Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    .line 346
    return-void
.end method
