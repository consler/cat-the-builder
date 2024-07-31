.class public Lorg/apache/commons/collections/functors/InstantiateTransformer;
.super Ljava/lang/Object;
.source "InstantiateTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections/Transformer;
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_ARG_INSTANCE:Lorg/apache/commons/collections/Transformer;

.field static synthetic class$org$apache$commons$collections$functors$InstantiateTransformer:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x348bf47fa486d03bL


# instance fields
.field private final iArgs:[Ljava/lang/Object;

.field private final iParamTypes:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/InstantiateTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->NO_ARG_INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    .line 89
    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public constructor <init>([Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "paramTypes"    # [Ljava/lang/Class;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    .line 102
    iput-object p2, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    .line 103
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .line 137
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .locals 2
    .param p0, "paramTypes"    # [Ljava/lang/Class;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 68
    if-nez p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter types must match the arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_3
    :goto_0
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_4

    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    move-object p0, v0

    check-cast p0, [Ljava/lang/Class;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    check-cast p1, [Ljava/lang/Object;

    .line 80
    new-instance v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/functors/InstantiateTransformer;-><init>([Ljava/lang/Class;[Ljava/lang/Object;)V

    return-object v0

    .line 75
    :cond_5
    :goto_1
    sget-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->NO_ARG_INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    sget-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->class$org$apache$commons$collections$functors$InstantiateTransformer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.collections.functors.InstantiateTransformer"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/InstantiateTransformer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->class$org$apache$commons$collections$functors$InstantiateTransformer:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    .line 147
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 148
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    sget-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->class$org$apache$commons$collections$functors$InstantiateTransformer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.collections.functors.InstantiateTransformer"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/InstantiateTransformer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->class$org$apache$commons$collections$functors$InstantiateTransformer:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    .line 138
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 139
    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "input"    # Ljava/lang/Object;

    .line 113
    :try_start_0
    instance-of v0, p1, Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Lorg/apache/commons/collections/FunctorException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "InstantiateTransformer: Input object was not an instanceof Class, it was a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_0

    const-string v2, "null object"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    .end local p1    # "input":Ljava/lang/Object;
    throw v0

    .line 118
    .restart local p1    # "input":Ljava/lang/Object;
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 119
    .local v0, "con":Ljava/lang/reflect/Constructor;
    iget-object v1, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 127
    .end local v0    # "con":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateTransformer: Constructor threw an exception"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 125
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateTransformer: Constructor must be public"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 123
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateTransformer: InstantiationException"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 121
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    .line 122
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateTransformer: The constructor must exist and be public "

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
