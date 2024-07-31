.class public Lorg/apache/commons/collections4/ClosureUtils;
.super Ljava/lang/Object;
.source "ClosureUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asClosure(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;*>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 105
    .local p0, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;*>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/TransformerClosure;->transformerClosure(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static chainedClosure(Ljava/util/Collection;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 226
    .local p0, "closures":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/commons/collections4/Closure<-TE;>;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ChainedClosure;->chainedClosure(Ljava/util/Collection;)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static varargs chainedClosure([Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 208
    .local p0, "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ChainedClosure;->chainedClosure([Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static doWhileClosure(Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 154
    .local p0, "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lorg/apache/commons/collections4/functors/WhileClosure;->whileClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Z)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static exceptionClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lorg/apache/commons/collections4/functors/ExceptionClosure;->exceptionClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static forClosure(ILorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .param p0, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 121
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/functors/ForClosure;->forClosure(ILorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static ifClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 244
    .local p0, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    .local p1, "trueClosure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/functors/IfClosure;->ifClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static ifClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 263
    .local p0, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    .local p1, "trueClosure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    .local p2, "falseClosure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/IfClosure;->ifClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static invokerClosure(Ljava/lang/String;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 171
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/InvokerTransformer;->invokerTransformer(Ljava/lang/String;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ClosureUtils;->asClosure(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static invokerClosure(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 192
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/InvokerTransformer;->invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/ClosureUtils;->asClosure(Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static nopClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 90
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static switchClosure(Ljava/util/Map;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/collections4/Predicate<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 337
    .local p0, "predicatesAndClosures":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/collections4/Predicate<TE;>;Lorg/apache/commons/collections4/Closure<TE;>;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/SwitchClosure;->switchClosure(Ljava/util/Map;)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static switchClosure([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 286
    .local p0, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TE;>;"
    .local p1, "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/functors/SwitchClosure;->switchClosure([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static switchClosure([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 312
    .local p0, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TE;>;"
    .local p1, "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    .local p2, "defaultClosure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/SwitchClosure;->switchClosure([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static switchMapClosure(Ljava/util/Map;)Lorg/apache/commons/collections4/Closure;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TE;",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 360
    .local p0, "objectsAndClosures":Ljava/util/Map;, "Ljava/util/Map<+TE;Lorg/apache/commons/collections4/Closure<TE;>;>;"
    if-eqz p0, :cond_1

    .line 363
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Closure;

    .line 364
    .local v0, "def":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 365
    .local v1, "size":I
    new-array v2, v1, [Lorg/apache/commons/collections4/Closure;

    .line 366
    .local v2, "trs":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    new-array v3, v1, [Lorg/apache/commons/collections4/Predicate;

    .line 367
    .local v3, "preds":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<TE;>;"
    const/4 v4, 0x0

    .line 368
    .local v4, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 369
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TE;Lorg/apache/commons/collections4/Closure<TE;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/collections4/functors/EqualPredicate;->equalPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;

    move-result-object v7

    aput-object v7, v3, v4

    .line 370
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections4/Closure;

    aput-object v7, v2, v4

    .line 371
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TE;Lorg/apache/commons/collections4/Closure<TE;>;>;"
    add-int/lit8 v4, v4, 0x1

    .line 372
    goto :goto_0

    .line 373
    :cond_0
    invoke-static {v3, v2, v0}, Lorg/apache/commons/collections4/ClosureUtils;->switchClosure([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;

    move-result-object v5

    return-object v5

    .line 361
    .end local v0    # "def":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    .end local v1    # "size":I
    .end local v2    # "trs":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    .end local v3    # "preds":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<TE;>;"
    .end local v4    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The object and closure map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whileClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)",
            "Lorg/apache/commons/collections4/Closure<",
            "TE;>;"
        }
    .end annotation

    .line 137
    .local p0, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/functors/WhileClosure;->whileClosure(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Closure;Z)Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method
