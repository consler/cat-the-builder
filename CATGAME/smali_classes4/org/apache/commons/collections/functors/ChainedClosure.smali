.class public Lorg/apache/commons/collections/functors/ChainedClosure;
.super Ljava/lang/Object;
.source "ChainedClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x30dbf54892a4d5f8L


# instance fields
.field private final iClosures:[Lorg/apache/commons/collections/Closure;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Closure;)V
    .locals 0
    .param p1, "closures"    # [Lorg/apache/commons/collections/Closure;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/apache/commons/collections/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    .line 110
    return-void
.end method

.method public static getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Closure;
    .locals 5
    .param p0, "closures"    # Ljava/util/Collection;

    .line 69
    if-eqz p0, :cond_2

    .line 72
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object v0

    .line 76
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/collections/Closure;

    .line 77
    .local v0, "cmds":[Lorg/apache/commons/collections/Closure;
    const/4 v1, 0x0

    .line 78
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections/Closure;

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_0

    .line 81
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Closure;)V

    .line 82
    new-instance v2, Lorg/apache/commons/collections/functors/ChainedClosure;

    invoke-direct {v2, v0}, Lorg/apache/commons/collections/functors/ChainedClosure;-><init>([Lorg/apache/commons/collections/Closure;)V

    return-object v2

    .line 70
    .end local v0    # "cmds":[Lorg/apache/commons/collections/Closure;
    .end local v1    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Closure collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 2
    .param p0, "closure1"    # Lorg/apache/commons/collections/Closure;
    .param p1, "closure2"    # Lorg/apache/commons/collections/Closure;

    .line 94
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/Closure;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 98
    .local v0, "closures":[Lorg/apache/commons/collections/Closure;
    new-instance v1, Lorg/apache/commons/collections/functors/ChainedClosure;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/functors/ChainedClosure;-><init>([Lorg/apache/commons/collections/Closure;)V

    return-object v1

    .line 95
    .end local v0    # "closures":[Lorg/apache/commons/collections/Closure;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Closures must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance([Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "closures"    # [Lorg/apache/commons/collections/Closure;

    .line 50
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Closure;)V

    .line 51
    array-length v0, p0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    return-object v0

    .line 54
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Closure;)[Lorg/apache/commons/collections/Closure;

    move-result-object p0

    .line 55
    new-instance v0, Lorg/apache/commons/collections/functors/ChainedClosure;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/ChainedClosure;-><init>([Lorg/apache/commons/collections/Closure;)V

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/Object;

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 119
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getClosures()[Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections/Closure;

    return-object v0
.end method
