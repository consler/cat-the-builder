.class public Lorg/apache/commons/collections/functors/PrototypeFactory;
.super Ljava/lang/Object;
.source "PrototypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;,
        Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;
    }
.end annotation


# static fields
.field static synthetic class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeCloneFactory:Ljava/lang/Class;

.field static synthetic class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 163
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

.method public static getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;
    .locals 7

    if-nez p0, :cond_0

    .line 70
    sget-object p0, Lorg/apache/commons/collections/functors/ConstantFactory;->NULL_INSTANCE:Lorg/apache/commons/collections/Factory;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "clone"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 74
    new-instance v2, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;

    invoke-direct {v2, p0, v1, v0}, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lorg/apache/commons/collections/functors/PrototypeFactory$1;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 78
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

    .line 79
    new-instance v1, Lorg/apache/commons/collections/functors/InstantiateFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/commons/collections/functors/InstantiateFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 85
    :catch_1
    instance-of v1, p0, Ljava/io/Serializable;

    if-eqz v1, :cond_1

    .line 86
    new-instance v1, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;

    check-cast p0, Ljava/io/Serializable;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;-><init>(Ljava/io/Serializable;Lorg/apache/commons/collections/functors/PrototypeFactory$1;)V

    return-object v1

    .line 90
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The prototype must be cloneable via a public clone method"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
