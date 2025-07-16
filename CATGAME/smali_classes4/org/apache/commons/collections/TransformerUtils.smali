.class public Lorg/apache/commons/collections/TransformerUtils;
.super Ljava/lang/Object;
.source "TransformerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asTransformer(Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Transformer;
    .locals 0

    .line 153
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ClosureTransformer;->getInstance(Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static asTransformer(Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/Transformer;
    .locals 0

    .line 181
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FactoryTransformer;->getInstance(Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static asTransformer(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Transformer;
    .locals 0

    .line 167
    invoke-static {p0}, Lorg/apache/commons/collections/functors/PredicateTransformer;->getInstance(Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static chainedTransformer(Ljava/util/Collection;)Lorg/apache/commons/collections/Transformer;
    .locals 0

    .line 227
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ChainedTransformer;->getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static chainedTransformer(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 0

    .line 196
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/ChainedTransformer;->getInstance(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static chainedTransformer([Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 0

    .line 211
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ChainedTransformer;->getInstance([Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static cloneTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 126
    sget-object v0, Lorg/apache/commons/collections/functors/CloneTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public static constantTransformer(Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .locals 0

    .line 139
    invoke-static {p0}, Lorg/apache/commons/collections/functors/ConstantTransformer;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
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
    .locals 0

    .line 375
    invoke-static {p0, p1}, Lorg/apache/commons/collections/functors/InstantiateTransformer;->getInstance([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static invokerTransformer(Ljava/lang/String;)Lorg/apache/commons/collections/Transformer;
    .locals 1

    const/4 v0, 0x0

    .line 408
    invoke-static {p0, v0, v0}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .locals 0

    .line 426
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/InvokerTransformer;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static mapTransformer(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;
    .locals 0

    .line 389
    invoke-static {p0}, Lorg/apache/commons/collections/functors/MapTransformer;->getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
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
    .locals 6

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 337
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Transformer;

    .line 338
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 339
    new-array v2, v1, [Lorg/apache/commons/collections/Transformer;

    .line 340
    new-array v1, v1, [Lorg/apache/commons/collections/Predicate;

    .line 342
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 344
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/collections/functors/EqualPredicate;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;

    move-result-object v5

    aput-object v5, v1, v3

    .line 345
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections/Transformer;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    :cond_0
    invoke-static {v1, v2, v0}, Lorg/apache/commons/collections/TransformerUtils;->switchTransformer([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0

    .line 335
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The object and transformer map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static switchTransformer(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;
    .locals 0

    .line 311
    invoke-static {p0}, Lorg/apache/commons/collections/functors/SwitchTransformer;->getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static switchTransformer(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/apache/commons/collections/Predicate;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-array p0, v0, [Lorg/apache/commons/collections/Transformer;

    aput-object p1, p0, v2

    .line 244
    invoke-static {v1, p0, p2}, Lorg/apache/commons/collections/functors/SwitchTransformer;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static switchTransformer([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 1

    const/4 v0, 0x0

    .line 264
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/functors/SwitchTransformer;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public static switchTransformer([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 0

    .line 286
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/functors/SwitchTransformer;->getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    return-object p0
.end method
