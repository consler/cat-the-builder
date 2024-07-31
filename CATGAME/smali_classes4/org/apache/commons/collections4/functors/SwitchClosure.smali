.class public Lorg/apache/commons/collections4/functors/SwitchClosure;
.super Ljava/lang/Object;
.source "SwitchClosure.java"

# interfaces
.implements Lorg/apache/commons/collections4/Closure;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Closure<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30d42478696adb72L


# instance fields
.field private final iClosures:[Lorg/apache/commons/collections4/Closure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iDefault:Lorg/apache/commons/collections4/Closure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final iPredicates:[Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z[Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V
    .locals 1
    .param p1, "clone"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/apache/commons/collections4/functors/SwitchClosure;, "Lorg/apache/commons/collections4/functors/SwitchClosure<TE;>;"
    .local p2, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TE;>;"
    .local p3, "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    .local p4, "defaultClosure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    .line 123
    if-eqz p1, :cond_1

    invoke-static {p3}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Closure;)[Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p3

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections4/Closure;

    .line 124
    if-nez p4, :cond_2

    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p4

    :goto_2
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections4/Closure;

    .line 125
    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/commons/collections4/functors/SwitchClosure;, "Lorg/apache/commons/collections4/functors/SwitchClosure<TE;>;"
    .local p1, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TE;>;"
    .local p2, "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    .local p3, "defaultClosure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/collections4/functors/SwitchClosure;-><init>(Z[Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V

    .line 138
    return-void
.end method

.method public static switchClosure(Ljava/util/Map;)Lorg/apache/commons/collections4/Closure;
    .locals 8
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

    .line 90
    .local p0, "predicatesAndClosures":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/collections4/Predicate<TE;>;Lorg/apache/commons/collections4/Closure<TE;>;>;"
    if-eqz p0, :cond_3

    .line 94
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Closure;

    .line 95
    .local v0, "defaultClosure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 96
    .local v1, "size":I
    if-nez v1, :cond_1

    .line 97
    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2

    .line 99
    :cond_1
    new-array v2, v1, [Lorg/apache/commons/collections4/Closure;

    .line 100
    .local v2, "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<TE;>;"
    new-array v3, v1, [Lorg/apache/commons/collections4/Predicate;

    .line 101
    .local v3, "preds":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<TE;>;"
    const/4 v4, 0x0

    .line 102
    .local v4, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 103
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/collections4/Predicate<TE;>;Lorg/apache/commons/collections4/Closure<TE;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections4/Predicate;

    aput-object v7, v3, v4

    .line 104
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections4/Closure;

    aput-object v7, v2, v4

    .line 105
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/commons/collections4/Predicate<TE;>;Lorg/apache/commons/collections4/Closure<TE;>;>;"
    add-int/lit8 v4, v4, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    new-instance v5, Lorg/apache/commons/collections4/functors/SwitchClosure;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3, v2, v0}, Lorg/apache/commons/collections4/functors/SwitchClosure;-><init>(Z[Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V

    return-object v5

    .line 91
    .end local v0    # "defaultClosure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    .end local v1    # "size":I
    .end local v2    # "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<TE;>;"
    .end local v3    # "preds":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<TE;>;"
    .end local v4    # "i":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The predicate and closure map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static switchClosure([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 2
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

    .line 59
    .local p0, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TE;>;"
    .local p1, "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    .local p2, "defaultClosure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Predicate;)V

    .line 60
    invoke-static {p1}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Closure;)V

    .line 61
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 64
    array-length v0, p0

    if-nez v0, :cond_1

    .line 65
    if-nez p2, :cond_0

    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    .line 67
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/SwitchClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/SwitchClosure;-><init>([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Closure;Lorg/apache/commons/collections4/Closure;)V

    return-object v0

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The predicate and closure arrays must be the same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/apache/commons/collections4/functors/SwitchClosure;, "Lorg/apache/commons/collections4/functors/SwitchClosure<TE;>;"
    .local p1, "input":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 148
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 149
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections4/Closure;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    .line 150
    return-void

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections4/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public getClosures()[Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/apache/commons/collections4/functors/SwitchClosure;, "Lorg/apache/commons/collections4/functors/SwitchClosure<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iClosures:[Lorg/apache/commons/collections4/Closure;

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Closure;)[Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultClosure()Lorg/apache/commons/collections4/Closure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/functors/SwitchClosure;, "Lorg/apache/commons/collections4/functors/SwitchClosure<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iDefault:Lorg/apache/commons/collections4/Closure;

    return-object v0
.end method

.method public getPredicates()[Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/apache/commons/collections4/functors/SwitchClosure;, "Lorg/apache/commons/collections4/functors/SwitchClosure<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchClosure;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0
.end method
