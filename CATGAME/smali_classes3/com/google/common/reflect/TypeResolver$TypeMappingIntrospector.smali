.class final Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;
.super Lcom/google/common/reflect/TypeVisitor;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeMappingIntrospector"
.end annotation


# instance fields
.field private final mappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/reflect/TypeResolver$TypeVariableKey;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 372
    invoke-direct {p0}, Lcom/google/common/reflect/TypeVisitor;-><init>()V

    .line 374
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    return-void
.end method

.method static getTypeMappings(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .param p0, "contextType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/ImmutableMap<",
            "Lcom/google/common/reflect/TypeResolver$TypeVariableKey;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 381
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    new-instance v0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;-><init>()V

    .line 383
    .local v0, "introspector":Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 384
    iget-object v1, v0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method private map(Lcom/google/common/reflect/TypeResolver$TypeVariableKey;Ljava/lang/reflect/Type;)V
    .locals 4
    .param p1, "var"    # Lcom/google/common/reflect/TypeResolver$TypeVariableKey;
    .param p2, "arg"    # Ljava/lang/reflect/Type;

    .line 417
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    return-void

    .line 426
    :cond_0
    move-object v0, p2

    .local v0, "t":Ljava/lang/reflect/Type;
    :goto_0
    if-eqz v0, :cond_3

    .line 427
    invoke-virtual {p1, v0}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->equalsType(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    move-object v1, p2

    .local v1, "x":Ljava/lang/reflect/Type;
    :goto_1
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->forLookup(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/reflect/Type;

    goto :goto_1

    .line 433
    .end local v1    # "x":Ljava/lang/reflect/Type;
    :cond_1
    return-void

    .line 426
    :cond_2
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->forLookup(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/Type;

    goto :goto_0

    .line 436
    .end local v0    # "t":Ljava/lang/reflect/Type;
    :cond_3
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->mappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    return-void
.end method


# virtual methods
.method visitClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 389
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 390
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 391
    return-void
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .locals 8
    .param p1, "parameterizedType"    # Ljava/lang/reflect/ParameterizedType;

    .line 395
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 396
    .local v0, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 397
    .local v1, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 398
    .local v2, "typeArgs":[Ljava/lang/reflect/Type;
    array-length v3, v1

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 399
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 400
    new-instance v4, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    aget-object v7, v1, v3

    invoke-direct {v4, v7}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    aget-object v7, v2, v3

    invoke-direct {p0, v4, v7}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->map(Lcom/google/common/reflect/TypeResolver$TypeVariableKey;Ljava/lang/reflect/Type;)V

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 402
    .end local v3    # "i":I
    :cond_1
    new-array v3, v6, [Ljava/lang/reflect/Type;

    aput-object v0, v3, v5

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 403
    new-array v3, v6, [Ljava/lang/reflect/Type;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 404
    return-void
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 408
    .local p1, "t":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 409
    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/reflect/WildcardType;

    .line 413
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver$TypeMappingIntrospector;->visit([Ljava/lang/reflect/Type;)V

    .line 414
    return-void
.end method
