.class Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;
.super Ljava/lang/Object;
.source "PrototypeFactory.java"

# interfaces
.implements Lorg/apache/commons/collections4/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/functors/PrototypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrototypeCloneFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Factory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private transient iCloneMethod:Ljava/lang/reflect/Method;

.field private final iPrototype:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;->iPrototype:Ljava/lang/Object;

    .line 115
    iput-object p2, p0, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;->iCloneMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lorg/apache/commons/collections4/functors/PrototypeFactory$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private findCloneMethod()V
    .locals 4

    .line 123
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;->iPrototype:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clone"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;->iCloneMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 125
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PrototypeCloneFactory: The clone method must exist and be public "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;->iCloneMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;->findCloneMethod()V

    .line 143
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;->iCloneMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;->iPrototype:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Lorg/apache/commons/collections4/FunctorException;

    const-string v2, "PrototypeCloneFactory: Clone method threw an exception"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 145
    new-instance v1, Lorg/apache/commons/collections4/FunctorException;

    const-string v2, "PrototypeCloneFactory: Clone method must be public"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
