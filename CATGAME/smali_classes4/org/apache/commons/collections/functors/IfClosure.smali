.class public Lorg/apache/commons/collections/functors/IfClosure;
.super Ljava/lang/Object;
.source "IfClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x30d42478696adb72L


# instance fields
.field private final iFalseClosure:Lorg/apache/commons/collections/Closure;

.field private final iPredicate:Lorg/apache/commons/collections/Predicate;

.field private final iTrueClosure:Lorg/apache/commons/collections/Closure;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;)V
    .locals 1
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;
    .param p2, "trueClosure"    # Lorg/apache/commons/collections/Closure;

    .line 93
    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/functors/IfClosure;-><init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V
    .locals 0
    .param p1, "predicate"    # Lorg/apache/commons/collections/Predicate;
    .param p2, "trueClosure"    # Lorg/apache/commons/collections/Closure;
    .param p3, "falseClosure"    # Lorg/apache/commons/collections/Closure;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/apache/commons/collections/functors/IfClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    .line 107
    iput-object p2, p0, Lorg/apache/commons/collections/functors/IfClosure;->iTrueClosure:Lorg/apache/commons/collections/Closure;

    .line 108
    iput-object p3, p0, Lorg/apache/commons/collections/functors/IfClosure;->iFalseClosure:Lorg/apache/commons/collections/Closure;

    .line 109
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .param p0, "predicate"    # Lorg/apache/commons/collections/Predicate;
    .param p1, "trueClosure"    # Lorg/apache/commons/collections/Closure;

    .line 59
    sget-object v0, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/functors/IfClosure;->getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 2
    .param p0, "predicate"    # Lorg/apache/commons/collections/Predicate;
    .param p1, "trueClosure"    # Lorg/apache/commons/collections/Closure;
    .param p2, "falseClosure"    # Lorg/apache/commons/collections/Closure;

    .line 72
    if-eqz p0, :cond_1

    .line 75
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 78
    new-instance v0, Lorg/apache/commons/collections/functors/IfClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/IfClosure;-><init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Closures must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iTrueClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iFalseClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    .line 122
    :goto_0
    return-void
.end method

.method public getFalseClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iFalseClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public getTrueClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iTrueClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method
