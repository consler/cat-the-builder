.class public Lorg/apache/commons/collections4/TransformerUtils;
.super Ljava/lang/Object;
.source "TransformerUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asTransformer(Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 158
    .local p0, "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TT;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ClosureTransformer;->closureTransformer(Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static asTransformer(Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Factory<",
            "+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 187
    .local p0, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TO;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FactoryTransformer;->factoryTransformer(Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static asTransformer(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 172
    .local p0, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/PredicateTransformer;->predicateTransformer(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static chainedTransformer(Ljava/util/Collection;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 218
    .local p0, "transformers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/commons/collections4/Transformer<-TT;+TT;>;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ChainedTransformer;->chainedTransformer(Ljava/util/Collection;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static varargs chainedTransformer([Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 202
    .local p0, "transformers":[Lorg/apache/commons/collections4/Transformer;, "[Lorg/apache/commons/collections4/Transformer<-TT;+TT;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ChainedTransformer;->chainedTransformer([Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static cloneTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 130
    invoke-static {}, Lorg/apache/commons/collections4/functors/CloneTransformer;->cloneTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(TO;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 144
    .local p0, "constantToReturn":Ljava/lang/Object;, "TO;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static exceptionTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 88
    invoke-static {}, Lorg/apache/commons/collections4/functors/ExceptionTransformer;->exceptionTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static ifTransformer(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TT;+TT;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 235
    .local p0, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    .local p1, "trueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TT;+TT;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/functors/IfTransformer;->ifTransformer(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static ifTransformer(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 255
    .local p0, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TI;>;"
    .local p1, "trueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .local p2, "falseTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/IfTransformer;->ifTransformer(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static instantiateTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Class<",
            "+TT;>;TT;>;"
        }
    .end annotation

    .line 396
    invoke-static {}, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->instantiateTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static instantiateTransformer([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Class<",
            "+TT;>;TT;>;"
        }
    .end annotation

    .line 413
    .local p0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->instantiateTransformer([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static invokerTransformer(Ljava/lang/String;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 450
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/collections4/functors/InvokerTransformer;->invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 470
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/InvokerTransformer;->invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static mapTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TI;+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 428
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<-TI;+TO;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/MapTransformer;->mapTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static nopTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 113
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPTransformer;->nopTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static nullTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static stringValueTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 483
    invoke-static {}, Lorg/apache/commons/collections4/functors/StringValueTransformer;->stringValueTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static switchMapTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TI;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 373
    .local p0, "objectsAndTransformers":Ljava/util/Map;, "Ljava/util/Map<TI;Lorg/apache/commons/collections4/Transformer<TI;TO;>;>;"
    if-eqz p0, :cond_1

    .line 376
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Transformer;

    .line 377
    .local v0, "def":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 378
    .local v1, "size":I
    new-array v2, v1, [Lorg/apache/commons/collections4/Transformer;

    .line 379
    .local v2, "trs":[Lorg/apache/commons/collections4/Transformer;, "[Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    new-array v3, v1, [Lorg/apache/commons/collections4/Predicate;

    .line 380
    .local v3, "preds":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<TI;>;"
    const/4 v4, 0x0

    .line 381
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

    .line 382
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TI;Lorg/apache/commons/collections4/Transformer<TI;TO;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/collections4/functors/EqualPredicate;->equalPredicate(Ljava/lang/Object;)Lorg/apache/commons/collections4/Predicate;

    move-result-object v7

    aput-object v7, v3, v4

    .line 383
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/collections4/Transformer;

    aput-object v8, v2, v4

    .line 384
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TI;Lorg/apache/commons/collections4/Transformer<TI;TO;>;>;"
    move v4, v7

    goto :goto_0

    .line 385
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_0
    invoke-static {v3, v2, v0}, Lorg/apache/commons/collections4/TransformerUtils;->switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v5

    return-object v5

    .line 374
    .end local v0    # "def":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .end local v1    # "size":I
    .end local v2    # "trs":[Lorg/apache/commons/collections4/Transformer;, "[Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .end local v3    # "preds":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<TI;>;"
    .end local v4    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The object and transformer map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static switchTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/collections4/Predicate<",
            "TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 349
    .local p0, "predicatesAndTransformers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/collections4/Predicate<TI;>;Lorg/apache/commons/collections4/Transformer<TI;TO;>;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/SwitchTransformer;->switchTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static switchTransformer(Lorg/apache/commons/collections4/Predicate;Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 277
    .local p0, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TI;>;"
    .local p1, "trueTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .local p2, "falseTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    const/4 v0, 0x1

    new-array v1, v0, [Lorg/apache/commons/collections4/Predicate;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-array v0, v0, [Lorg/apache/commons/collections4/Transformer;

    aput-object p1, v0, v2

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections4/functors/SwitchTransformer;->switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 299
    .local p0, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TI;>;"
    .local p1, "transformers":[Lorg/apache/commons/collections4/Transformer;, "[Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/functors/SwitchTransformer;->switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 323
    .local p0, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TI;>;"
    .local p1, "transformers":[Lorg/apache/commons/collections4/Transformer;, "[Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .local p2, "defaultTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/SwitchTransformer;->switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method
