.class public Lorg/apache/commons/collections4/functors/ChainedClosure;
.super Ljava/lang/Object;
.source "ChainedClosure.java"

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
.field private static final serialVersionUID:J = -0x30dbf54892a4d5f8L


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


# direct methods
.method private varargs constructor <init>(Z[Lorg/apache/commons/collections4/Closure;)V
    .locals 1
    .param p1, "clone"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/apache/commons/collections4/functors/ChainedClosure;, "Lorg/apache/commons/collections4/functors/ChainedClosure<TE;>;"
    .local p2, "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Closure;)[Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections4/Closure;

    .line 92
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/commons/collections4/Closure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Closure<",
            "-TE;>;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/functors/ChainedClosure;, "Lorg/apache/commons/collections4/functors/ChainedClosure<TE;>;"
    .local p1, "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/functors/ChainedClosure;-><init>(Z[Lorg/apache/commons/collections4/Closure;)V

    .line 102
    return-void
.end method

.method public static chainedClosure(Ljava/util/Collection;)Lorg/apache/commons/collections4/Closure;
    .locals 5
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

    .line 67
    .local p0, "closures":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/commons/collections4/Closure<-TE;>;>;"
    if-eqz p0, :cond_2

    .line 70
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/collections4/Closure;

    .line 75
    .local v0, "cmds":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    const/4 v1, 0x0

    .line 76
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections4/Closure;

    .line 77
    .local v3, "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aput-object v3, v0, v1

    .line 78
    .end local v3    # "closure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    move v1, v4

    goto :goto_0

    .line 79
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Closure;)V

    .line 80
    new-instance v2, Lorg/apache/commons/collections4/functors/ChainedClosure;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/collections4/functors/ChainedClosure;-><init>(Z[Lorg/apache/commons/collections4/Closure;)V

    return-object v2

    .line 68
    .end local v0    # "cmds":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    .end local v1    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Closure collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 47
    .local p0, "closures":[Lorg/apache/commons/collections4/Closure;, "[Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Closure;)V

    .line 48
    array-length v0, p0

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lorg/apache/commons/collections4/functors/NOPClosure;->nopClosure()Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/functors/ChainedClosure;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/ChainedClosure;-><init>([Lorg/apache/commons/collections4/Closure;)V

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/functors/ChainedClosure;, "Lorg/apache/commons/collections4/functors/ChainedClosure<TE;>;"
    .local p1, "input":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections4/Closure;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 112
    .local v3, "iClosure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    invoke-interface {v3, p1}, Lorg/apache/commons/collections4/Closure;->execute(Ljava/lang/Object;)V

    .line 111
    .end local v3    # "iClosure":Lorg/apache/commons/collections4/Closure;, "Lorg/apache/commons/collections4/Closure<-TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_0
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

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/functors/ChainedClosure;, "Lorg/apache/commons/collections4/functors/ChainedClosure<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/ChainedClosure;->iClosures:[Lorg/apache/commons/collections4/Closure;

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Closure;)[Lorg/apache/commons/collections4/Closure;

    move-result-object v0

    return-object v0
.end method
