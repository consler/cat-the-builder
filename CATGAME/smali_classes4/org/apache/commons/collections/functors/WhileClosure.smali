.class public Lorg/apache/commons/collections/functors/WhileClosure;
.super Ljava/lang/Object;
.source "WhileClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;
.implements Ljava/io/Serializable;


# static fields
.field static synthetic class$org$apache$commons$collections$functors$WhileClosure:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x2b2ad9efdef5076cL


# instance fields
.field private final iClosure:Lorg/apache/commons/collections/Closure;

.field private final iDoLoop:Z

.field private final iPredicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Z)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    .line 88
    iput-object p2, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    .line 89
    iput-boolean p3, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iDoLoop:Z

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 141
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Z)Lorg/apache/commons/collections/Closure;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Lorg/apache/commons/collections/functors/WhileClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/WhileClosure;-><init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Z)V

    return-object v0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Closure must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Predicate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    sget-object v0, Lorg/apache/commons/collections/functors/WhileClosure;->class$org$apache$commons$collections$functors$WhileClosure:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.collections.functors.WhileClosure"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/WhileClosure;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/WhileClosure;->class$org$apache$commons$collections$functors$WhileClosure:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    .line 151
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    sget-object v0, Lorg/apache/commons/collections/functors/WhileClosure;->class$org$apache$commons$collections$functors$WhileClosure:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.collections.functors.WhileClosure"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/WhileClosure;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/WhileClosure;->class$org$apache$commons$collections$functors$WhileClosure:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    .line 142
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iDoLoop:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public isDoLoop()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/apache/commons/collections/functors/WhileClosure;->iDoLoop:Z

    return v0
.end method
