.class public Lorg/apache/commons/collections/ClosureUtils;
.super Ljava/lang/Object;
.source "ClosureUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asClosure(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;
    .locals 0

    .line 101
    invoke-static {p0}, Lorg/apache/commons/collections/functors/TransformerClosure;->getInstance(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static chainedClosure(Ljava/util/Collection;)Lorg/apache/commons/collections/Closure;
    .locals 0

    .line 228
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ChainedClosure;->getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static chainedClosure(Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 0

    .line 196
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/ChainedClosure;->getInstance(Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static chainedClosure([Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 0

    .line 211
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ChainedClosure;->getInstance([Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static doWhileClosure(Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Closure;
    .locals 1

    const/4 v0, 0x1

    .line 146
    invoke-static {p1, p0, v0}, Lorg/apache/commons/collections/functors/WhileClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Z)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 75
    sget-object v0, Lorg/apache/commons/collections/functors/ExceptionClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public static forClosure(ILorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 0

    .line 116
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/ForClosure;->getInstance(ILorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static ifClosure(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 0

    .line 245
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/IfClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static ifClosure(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 0

    .line 262
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/IfClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static invokerClosure(Ljava/lang/String;)Lorg/apache/commons/collections/Closure;
    .locals 0

    .line 162
    invoke-static {p0}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections/ClosureUtils;->asClosure(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static invokerClosure(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Closure;
    .locals 0

    .line 181
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/collections/ClosureUtils;->asClosure(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static nopClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 87
    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public static switchClosure(Ljava/util/Map;)Lorg/apache/commons/collections/Closure;
    .locals 0

    .line 330
    invoke-static {p0}, Lorg/apache/commons/collections/functors/SwitchClosure;->getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static switchClosure([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/functors/SwitchClosure;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static switchClosure([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 0

    .line 306
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/SwitchClosure;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method

.method public static switchMapClosure(Ljava/util/Map;)Lorg/apache/commons/collections/Closure;
    .locals 6

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 356
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Closure;

    .line 357
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 358
    new-array v2, v1, [Lorg/apache/commons/collections/Closure;

    .line 359
    new-array v1, v1, [Lorg/apache/commons/collections/Predicate;

    .line 361
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 363
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/collections/functors/EqualPredicate;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;

    move-result-object v5

    aput-object v5, v1, v3

    .line 364
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections/Closure;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    :cond_0
    invoke-static {v1, v2, v0}, Lorg/apache/commons/collections/ClosureUtils;->switchClosure([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0

    .line 354
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The object and closure map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whileClosure(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/functors/WhileClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Z)Lorg/apache/commons/collections/Closure;

    move-result-object p0

    return-object p0
.end method
