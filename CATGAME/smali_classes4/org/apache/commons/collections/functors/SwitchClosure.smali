.class public Lorg/apache/commons/collections/functors/SwitchClosure;
.super Ljava/lang/Object;
.source "SwitchClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x30d42478696adb72L


# instance fields
.field private final iClosures:[Lorg/apache/commons/collections/Closure;

.field private final iDefault:Lorg/apache/commons/collections/Closure;

.field private final iPredicates:[Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V
    .locals 1
    .param p1, "predicates"    # [Lorg/apache/commons/collections/Predicate;
    .param p2, "closures"    # [Lorg/apache/commons/collections/Closure;
    .param p3, "defaultClosure"    # Lorg/apache/commons/collections/Closure;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    .line 126
    iput-object p2, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    .line 127
    if-nez p3, :cond_0

    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections/Closure;

    .line 128
    return-void
.end method

.method public static getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Closure;
    .locals 8
    .param p0, "predicatesAndClosures"    # Ljava/util/Map;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "closures":[Lorg/apache/commons/collections/Closure;
    const/4 v1, 0x0

    .line 91
    .local v1, "preds":[Lorg/apache/commons/collections/Predicate;
    if-eqz p0, :cond_4

    .line 94
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 95
    sget-object v2, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object v2

    .line 98
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/Closure;

    .line 99
    .local v2, "defaultClosure":Lorg/apache/commons/collections/Closure;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    .line 100
    .local v3, "size":I
    if-nez v3, :cond_2

    .line 101
    if-nez v2, :cond_1

    sget-object v4, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    return-object v4

    .line 103
    :cond_2
    new-array v0, v3, [Lorg/apache/commons/collections/Closure;

    .line 104
    new-array v1, v3, [Lorg/apache/commons/collections/Predicate;

    .line 105
    const/4 v4, 0x0

    .line 106
    .local v4, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 107
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 108
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections/Predicate;

    aput-object v7, v1, v4

    .line 109
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections/Closure;

    aput-object v7, v0, v4

    .line 110
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;
    add-int/lit8 v4, v4, 0x1

    .line 111
    goto :goto_1

    .line 112
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_3
    new-instance v5, Lorg/apache/commons/collections/functors/SwitchClosure;

    invoke-direct {v5, v1, v0, v2}, Lorg/apache/commons/collections/functors/SwitchClosure;-><init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V

    return-object v5

    .line 92
    .end local v2    # "defaultClosure":Lorg/apache/commons/collections/Closure;
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The predicate and closure map must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 2
    .param p0, "predicates"    # [Lorg/apache/commons/collections/Predicate;
    .param p1, "closures"    # [Lorg/apache/commons/collections/Closure;
    .param p2, "defaultClosure"    # Lorg/apache/commons/collections/Closure;

    .line 58
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Predicate;)V

    .line 59
    invoke-static {p1}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Closure;)V

    .line 60
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 63
    array-length v0, p0

    if-nez v0, :cond_1

    .line 64
    if-nez p2, :cond_0

    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    .line 66
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Predicate;)[Lorg/apache/commons/collections/Predicate;

    move-result-object p0

    .line 67
    invoke-static {p1}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Closure;)[Lorg/apache/commons/collections/Closure;

    move-result-object p1

    .line 68
    new-instance v0, Lorg/apache/commons/collections/functors/SwitchClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/SwitchClosure;-><init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V

    return-object v0

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The predicate and closure arrays must be the same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/Object;

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 137
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 138
    iget-object v1, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    .line 139
    return-void

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public getClosures()[Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public getDefaultClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method
