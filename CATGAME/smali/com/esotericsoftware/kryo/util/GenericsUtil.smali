.class public Lcom/esotericsoftware/kryo/util/GenericsUtil;
.super Ljava/lang/Object;
.source "GenericsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 4

    .line 38
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object p2

    .line 41
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveTypeVariable(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 44
    :cond_1
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 47
    :cond_2
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    move v0, v1

    .line 50
    :goto_0
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 51
    instance-of v3, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v3, :cond_5

    .line 54
    invoke-static {p0, p1, p2}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 55
    instance-of p1, p0, Ljava/lang/Class;

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    if-ne v0, v1, :cond_4

    .line 56
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 57
    :cond_4
    check-cast p0, Ljava/lang/Class;

    new-array p1, v0, [I

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_6
    instance-of v0, p2, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_9

    .line 63
    check-cast p2, Ljava/lang/reflect/WildcardType;

    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    .line 64
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_7

    invoke-static {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 65
    :cond_7
    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p2

    .line 66
    array-length v0, p2

    if-eqz v0, :cond_8

    aget-object p2, p2, v2

    invoke-static {p0, p1, p2}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 67
    :cond_8
    const-class p0, Ljava/lang/Object;

    return-object p0

    .line 71
    :cond_9
    new-instance p0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to resolve type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resolveTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 4

    .line 124
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 125
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    .line 126
    array-length v0, p2

    .line 127
    new-array v1, v0, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 129
    aget-object v3, p2, v2

    invoke-static {p0, p1, v3}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 134
    :cond_1
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 136
    :cond_2
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 137
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_2

    .line 139
    invoke-static {p0, p1, p2}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resolveTypeVariable(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Z)Ljava/lang/reflect/Type;
    .locals 7

    .line 80
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 81
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    return-object p2

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v1, p0, :cond_1

    .line 86
    invoke-static {p0, v1, p2, v2}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveTypeVariable(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Z)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 87
    instance-of v3, p2, Ljava/lang/Class;

    if-eqz v3, :cond_1

    return-object p2

    .line 92
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 94
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_7

    .line 95
    aget-object v5, v1, v2

    .line 96
    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 98
    move-object v5, v0

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v5, v5, v2

    .line 101
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_2

    return-object v5

    .line 102
    :cond_2
    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3

    invoke-static {p0, p1, v5}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 103
    :cond_3
    instance-of v6, v5, Ljava/lang/reflect/GenericArrayType;

    if-eqz v6, :cond_4

    invoke-static {p0, p1, v5}, Lcom/esotericsoftware/kryo/util/GenericsUtil;->resolveType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 105
    :cond_4
    instance-of v6, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_6

    if-eqz p3, :cond_5

    return-object p2

    :cond_5
    return-object v5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object p2
.end method
