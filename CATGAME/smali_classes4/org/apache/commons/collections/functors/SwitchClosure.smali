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
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    .line 126
    iput-object p2, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    if-nez p3, :cond_0

    .line 127
    sget-object p3, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    :cond_0
    iput-object p3, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections/Closure;

    return-void
.end method

.method public static getInstance(Ljava/util/Map;)Lorg/apache/commons/collections/Closure;
    .locals 6

    if-eqz p0, :cond_4

    .line 94
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    sget-object p0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 98
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Closure;

    .line 99
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    :cond_1
    return-object v0

    .line 103
    :cond_2
    new-array v2, v1, [Lorg/apache/commons/collections/Closure;

    .line 104
    new-array v1, v1, [Lorg/apache/commons/collections/Predicate;

    .line 106
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/collections/Predicate;

    aput-object v5, v1, v3

    .line 109
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections/Closure;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_3
    new-instance p0, Lorg/apache/commons/collections/functors/SwitchClosure;

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/commons/collections/functors/SwitchClosure;-><init>([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V

    return-object p0

    .line 92
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The predicate and closure map must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance([Lorg/apache/commons/collections/Predicate;[Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 2

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

    if-nez p2, :cond_0

    .line 64
    sget-object p2, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    :cond_0
    return-object p2

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
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The predicate and closure arrays must be the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 136
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

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

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
