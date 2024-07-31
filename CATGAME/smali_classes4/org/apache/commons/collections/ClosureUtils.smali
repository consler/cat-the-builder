.class public Lorg/apache/commons/collections/ClosureUtils;
.super Ljava/lang/Object;
.source "ClosureUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static asClosure(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "transformer"    # Lorg/apache/commons/collections/Transformer;

    .line 101
    invoke-static {p0}, Lorg/apache/commons/collections/functors/TransformerClosure;->getInstance(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static chainedClosure(Ljava/util/Collection;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "closures"    # Ljava/util/Collection;

    .line 228
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ChainedClosure;->getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static chainedClosure(Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "closure1"    # Lorg/apache/commons/collections/Closure;
    .param p1, "closure2"    # Lorg/apache/commons/collections/Closure;

    .line 196
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/ChainedClosure;->getInstance(Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static chainedClosure([Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "closures"    # [Lorg/apache/commons/collections/Closure;

    .line 211
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ChainedClosure;->getInstance([Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static doWhileClosure(Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "closure"    # Lorg/apache/commons/collections/Closure;
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 146
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lorg/apache/commons/collections/functors/WhileClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Z)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static exceptionClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 75
    sget-object v0, Lorg/apache/commons/collections/functors/ExceptionClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public static forClosure(ILorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "count"    # I
    .param p1, "closure"    # Lorg/apache/commons/collections/Closure;

    .line 116
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/ForClosure;->getInstance(ILorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static ifClosure(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "predicate"    # Lorg/apache/commons/collections/Predicate;
    .param p1, "trueClosure"    # Lorg/apache/commons/collections/Closure;

    .line 245
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/IfClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static ifClosure(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "predicate"    # Lorg/apache/commons/collections/Predicate;
    .param p1, "trueClosure"    # Lorg/apache/commons/collections/Closure;
    .param p2, "falseClosure"    # Lorg/apache/commons/collections/Closure;

    .line 262
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/IfClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static invokerClosure(Ljava/lang/String;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;

    .line 162
    invoke-static {p0}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/ClosureUtils;->asClosure(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static invokerClosure(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "paramTypes"    # [Ljava/lang/Class;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 181
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/ClosureUtils;->asClosure(Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static nopClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 87
    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public static switchClosure(Ljava/util/Map;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "predicatesAndClosures"    # Ljava/util/Map;

    .line 330
    invoke-static {p0}, Lorg/apache/commons/collections/functors/SwitchClosure;->getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static switchClosure([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "predicates"    # [Lorg/apache/commons/collections/Predicate;
    .param p1, "closures"    # [Lorg/apache/commons/collections/Closure;

    .line 283
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/functors/SwitchClosure;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static switchClosure([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "predicates"    # [Lorg/apache/commons/collections/Predicate;
    .param p1, "closures"    # [Lorg/apache/commons/collections/Closure;
    .param p2, "defaultClosure"    # Lorg/apache/commons/collections/Closure;

    .line 306
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/SwitchClosure;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static switchMapClosure(Ljava/util/Map;)Lorg/apache/commons/collections/Closure;
    .locals 8
    .param p0, "objectsAndClosures"    # Ljava/util/Map;

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "trs":[Lorg/apache/commons/collections/Closure;
    const/4 v1, 0x0

    .line 353
    .local v1, "preds":[Lorg/apache/commons/collections/Predicate;
    if-eqz p0, :cond_1

    .line 356
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/Closure;

    .line 357
    .local v2, "def":Lorg/apache/commons/collections/Closure;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    .line 358
    .local v3, "size":I
    new-array v0, v3, [Lorg/apache/commons/collections/Closure;

    .line 359
    new-array v1, v3, [Lorg/apache/commons/collections/Predicate;

    .line 360
    const/4 v4, 0x0

    .line 361
    .local v4, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 362
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 363
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/collections/functors/EqualPredicate;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;

    move-result-object v7

    aput-object v7, v1, v4

    .line 364
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections/Closure;

    aput-object v7, v0, v4

    .line 365
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;
    add-int/lit8 v4, v4, 0x1

    .line 366
    goto :goto_0

    .line 367
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_0
    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections/ClosureUtils;->switchClosure([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v5

    return-object v5

    .line 354
    .end local v2    # "def":Lorg/apache/commons/collections/Closure;
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The object and closure map must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whileClosure(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "predicate"    # Lorg/apache/commons/collections/Predicate;
    .param p1, "closure"    # Lorg/apache/commons/collections/Closure;

    .line 131
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/functors/WhileClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Z)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method
