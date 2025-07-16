.class public Lorg/apache/commons/collections4/functors/PrototypeFactory;
.super Ljava/lang/Object;
.source "PrototypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;,
        Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prototypeFactory(Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/commons/collections4/Factory<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 68
    invoke-static {v0}, Lorg/apache/commons/collections4/functors/ConstantFactory;->constantFactory(Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;

    move-result-object p0

    return-object p0

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "clone"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 72
    new-instance v2, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;

    invoke-direct {v2, p0, v1, v0}, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lorg/apache/commons/collections4/functors/PrototypeFactory$1;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 76
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 77
    new-instance v1, Lorg/apache/commons/collections4/functors/InstantiateFactory;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/commons/collections4/functors/InstantiateFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 82
    :catch_1
    instance-of v1, p0, Ljava/io/Serializable;

    if-eqz v1, :cond_1

    .line 83
    new-instance v1, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;

    check-cast p0, Ljava/io/Serializable;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;-><init>(Ljava/io/Serializable;Lorg/apache/commons/collections4/functors/PrototypeFactory$1;)V

    return-object v1

    .line 87
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The prototype must be cloneable via a public clone method"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
