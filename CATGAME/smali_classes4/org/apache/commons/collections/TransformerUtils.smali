.class public Lorg/apache/commons/collections/TransformerUtils;
.super Ljava/lang/Object;
.source "TransformerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static asTransformer(Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "closure"    # Lorg/apache/commons/collections/Closure;

    .line 153
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ClosureTransformer;->getInstance(Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static asTransformer(Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "factory"    # Lorg/apache/commons/collections/Factory;

    .line 181
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FactoryTransformer;->getInstance(Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static asTransformer(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "predicate"    # Lorg/apache/commons/collections/Predicate;

    .line 167
    invoke-static {p0}, Lorg/apache/commons/collections/functors/PredicateTransformer;->getInstance(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static chainedTransformer(Ljava/util/Collection;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "transformers"    # Ljava/util/Collection;

    .line 227
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ChainedTransformer;->getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static chainedTransformer(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "transformer1"    # Lorg/apache/commons/collections/Transformer;
    .param p1, "transformer2"    # Lorg/apache/commons/collections/Transformer;

    .line 196
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/ChainedTransformer;->getInstance(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static chainedTransformer([Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "transformers"    # [Lorg/apache/commons/collections/Transformer;

    .line 211
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ChainedTransformer;->getInstance([Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static cloneTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 126
    sget-object v0, Lorg/apache/commons/collections/functors/CloneTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "constantToReturn"    # Ljava/lang/Object;

    .line 139
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ConstantTransformer;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static exceptionTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 84
    sget-object v0, Lorg/apache/commons/collections/functors/ExceptionTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static instantiateTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 359
    sget-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->NO_ARG_INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static instantiateTransformer([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "paramTypes"    # [Ljava/lang/Class;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 375
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/InstantiateTransformer;->getInstance([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static invokerTransformer(Ljava/lang/String;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "paramTypes"    # [Ljava/lang/Class;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 426
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static mapTransformer(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;

    .line 389
    invoke-static {p0}, Lorg/apache/commons/collections/functors/MapTransformer;->getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static nopTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 108
    sget-object v0, Lorg/apache/commons/collections/functors/NOPTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static nullTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 95
    sget-object v0, Lorg/apache/commons/collections/functors/ConstantTransformer;->NULL_INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static stringValueTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 439
    sget-object v0, Lorg/apache/commons/collections/functors/StringValueTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static switchMapTransformer(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;
    .locals 8
    .param p0, "objectsAndTransformers"    # Ljava/util/Map;

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "trs":[Lorg/apache/commons/collections/Transformer;
    const/4 v1, 0x0

    .line 334
    .local v1, "preds":[Lorg/apache/commons/collections/Predicate;
    if-eqz p0, :cond_1

    .line 337
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/Transformer;

    .line 338
    .local v2, "def":Lorg/apache/commons/collections/Transformer;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    .line 339
    .local v3, "size":I
    new-array v0, v3, [Lorg/apache/commons/collections/Transformer;

    .line 340
    new-array v1, v3, [Lorg/apache/commons/collections/Predicate;

    .line 341
    const/4 v4, 0x0

    .line 342
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

    .line 343
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 344
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/collections/functors/EqualPredicate;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;

    move-result-object v7

    aput-object v7, v1, v4

    .line 345
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections/Transformer;

    aput-object v7, v0, v4

    .line 346
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;
    add-int/lit8 v4, v4, 0x1

    .line 347
    goto :goto_0

    .line 348
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_0
    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections/TransformerUtils;->switchTransformer([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object v5

    return-object v5

    .line 335
    .end local v2    # "def":Lorg/apache/commons/collections/Transformer;
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The object and transformer map must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static switchTransformer(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "predicatesAndTransformers"    # Ljava/util/Map;

    .line 311
    invoke-static {p0}, Lorg/apache/commons/collections/functors/SwitchTransformer;->getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static switchTransformer(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 3
    .param p0, "predicate"    # Lorg/apache/commons/collections/Predicate;
    .param p1, "trueTransformer"    # Lorg/apache/commons/collections/Transformer;
    .param p2, "falseTransformer"    # Lorg/apache/commons/collections/Transformer;

    .line 244
    const/4 v0, 0x1

    new-array v1, v0, [Lorg/apache/commons/collections/Predicate;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-array v0, v0, [Lorg/apache/commons/collections/Transformer;

    aput-object p1, v0, v2

    invoke-static {v1, v0, p2}, Lorg/apache/commons/collections/functors/SwitchTransformer;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static switchTransformer([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "predicates"    # [Lorg/apache/commons/collections/Predicate;
    .param p1, "transformers"    # [Lorg/apache/commons/collections/Transformer;

    .line 264
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/functors/SwitchTransformer;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static switchTransformer([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "predicates"    # [Lorg/apache/commons/collections/Predicate;
    .param p1, "transformers"    # [Lorg/apache/commons/collections/Transformer;
    .param p2, "defaultTransformer"    # Lorg/apache/commons/collections/Transformer;

    .line 286
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/SwitchTransformer;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    return-object v0
.end method
