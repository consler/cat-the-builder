.class public Lorg/apache/commons/collections4/functors/InstantiateTransformer;
.super Ljava/lang/Object;
.source "InstantiateTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "Ljava/lang/Class<",
        "+TT;>;TT;>;"
    }
.end annotation


# static fields
.field private static final NO_ARG_INSTANCE:Lorg/apache/commons/collections4/Transformer;


# instance fields
.field private final iArgs:[Ljava/lang/Object;

.field private final iParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/InstantiateTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->NO_ARG_INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/functors/InstantiateTransformer;, "Lorg/apache/commons/collections4/functors/InstantiateTransformer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    .line 86
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public constructor <init>([Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 2
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/functors/InstantiateTransformer;, "Lorg/apache/commons/collections4/functors/InstantiateTransformer<TT;>;"
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    .line 101
    if-eqz p2, :cond_1

    invoke-virtual {p2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :cond_1
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public static instantiateTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Class<",
            "+TT;>;TT;>;"
        }
    .end annotation

    .line 54
    sget-object v0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->NO_ARG_INSTANCE:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method

.method public static instantiateTransformer([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/Transformer<",
            "Ljava/lang/Class<",
            "+TT;>;TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
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
    new-instance v0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/functors/InstantiateTransformer;-><init>([Ljava/lang/Class;[Ljava/lang/Object;)V

    return-object v0

    .line 75
    :cond_5
    :goto_1
    new-instance v0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections4/functors/InstantiateTransformer;-><init>()V

    return-object v0
.end method


# virtual methods
.method public transform(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/apache/commons/collections4/functors/InstantiateTransformer;, "Lorg/apache/commons/collections4/functors/InstantiateTransformer<TT;>;"
    .local p1, "input":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    if-eqz p1, :cond_0

    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 118
    .local v0, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TT;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 125
    .end local v0    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TT;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    .line 123
    :catch_1
    move-exception v0

    goto :goto_1

    .line 121
    :catch_2
    move-exception v0

    goto :goto_2

    .line 119
    :catch_3
    move-exception v0

    goto :goto_3

    .line 114
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/FunctorException;

    const-string v1, "InstantiateTransformer: Input object was not an instanceof Class, it was a null object"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    .end local p1    # "input":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local p1    # "input":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :goto_0
    new-instance v1, Lorg/apache/commons/collections4/FunctorException;

    const-string v2, "InstantiateTransformer: Constructor threw an exception"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 124
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    :goto_1
    new-instance v1, Lorg/apache/commons/collections4/FunctorException;

    const-string v2, "InstantiateTransformer: Constructor must be public"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 122
    .local v0, "ex":Ljava/lang/InstantiationException;
    :goto_2
    new-instance v1, Lorg/apache/commons/collections4/FunctorException;

    const-string v2, "InstantiateTransformer: InstantiationException"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 120
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    :goto_3
    new-instance v1, Lorg/apache/commons/collections4/FunctorException;

    const-string v2, "InstantiateTransformer: The constructor must exist and be public "

    invoke-direct {v1, v2}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    .local p0, "this":Lorg/apache/commons/collections4/functors/InstantiateTransformer;, "Lorg/apache/commons/collections4/functors/InstantiateTransformer<TT;>;"
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/functors/InstantiateTransformer;->transform(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
