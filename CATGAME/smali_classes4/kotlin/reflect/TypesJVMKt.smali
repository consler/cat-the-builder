.class public final Lkotlin/reflect/TypesJVMKt;
.super Ljava/lang/Object;
.source "TypesJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypesJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/TypesJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,227:1\n1#2:228\n1517#3:229\n1588#3,3:230\n1517#3:233\n1588#3,3:234\n1517#3:237\n1588#3,3:238\n*E\n*S KotlinDebug\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/TypesJVMKt\n*L\n69#1:229\n69#1,3:230\n71#1:233\n71#1,3:234\n77#1:237\n77#1,3:238\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u001a\"\u0010\n\u001a\u00020\u00012\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000eH\u0003\u001a\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a\u0016\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H\u0003\"\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00078BX\u0083\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\u0005\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "javaType",
        "Ljava/lang/reflect/Type;",
        "Lkotlin/reflect/KType;",
        "getJavaType$annotations",
        "(Lkotlin/reflect/KType;)V",
        "getJavaType",
        "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;",
        "Lkotlin/reflect/KTypeProjection;",
        "(Lkotlin/reflect/KTypeProjection;)V",
        "(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;",
        "createPossiblyInnerType",
        "jClass",
        "Ljava/lang/Class;",
        "arguments",
        "",
        "typeToString",
        "",
        "type",
        "computeJavaType",
        "forceWrapper",
        "",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final synthetic access$computeJavaType(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "$this$access_u24computeJavaType"    # Lkotlin/reflect/KType;
    .param p1, "forceWrapper"    # Z

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/TypesJVMKt;->computeJavaType(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 1
    invoke-static {p0}, Lkotlin/reflect/TypesJVMKt;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final computeJavaType(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;
    .locals 8
    .param p0, "$this$computeJavaType"    # Lkotlin/reflect/KType;
    .param p1, "forceWrapper"    # Z

    .line 38
    invoke-interface {p0}, Lkotlin/reflect/KType;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    .line 39
    .local v0, "classifier":Lkotlin/reflect/KClassifier;
    instance-of v1, v0, Lkotlin/reflect/KTypeParameter;

    if-eqz v1, :cond_0

    new-instance v1, Lkotlin/reflect/TypeVariableImpl;

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/KTypeParameter;

    invoke-direct {v1, v2}, Lkotlin/reflect/TypeVariableImpl;-><init>(Lkotlin/reflect/KTypeParameter;)V

    check-cast v1, Ljava/lang/reflect/Type;

    return-object v1

    .line 40
    :cond_0
    instance-of v1, v0, Lkotlin/reflect/KClass;

    if-eqz v1, :cond_b

    .line 41
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/KClass;

    if-eqz p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v1

    .line 42
    .local v1, "jClass":Ljava/lang/Class;
    :goto_0
    invoke-interface {p0}, Lkotlin/reflect/KType;->getArguments()Ljava/util/List;

    move-result-object v2

    .line 43
    .local v2, "arguments":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/Type;

    return-object v3

    .line 45
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "jClass.componentType"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/Type;

    return-object v3

    .line 48
    :cond_3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KTypeProjection;

    if-eqz v3, :cond_9

    .line 49
    invoke-virtual {v3}, Lkotlin/reflect/KTypeProjection;->component1()Lkotlin/reflect/KVariance;

    move-result-object v4

    .line 48
    invoke-virtual {v3}, Lkotlin/reflect/KTypeProjection;->component2()Lkotlin/reflect/KType;

    move-result-object v3

    .line 50
    .local v3, "elementType":Lkotlin/reflect/KType;
    .local v4, "variance":Lkotlin/reflect/KVariance;
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    sget-object v5, Lkotlin/reflect/TypesJVMKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lkotlin/reflect/KVariance;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    const/4 v7, 0x2

    if-eq v5, v7, :cond_6

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5

    goto :goto_1

    .line 55
    :cond_5
    new-instance v5, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v5}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v5

    .line 54
    :cond_6
    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Lkotlin/reflect/TypesJVMKt;->computeJavaType$default(Lkotlin/reflect/KType;ZILjava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 55
    .local v5, "javaElementType":Ljava/lang/reflect/Type;
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_7

    move-object v6, v1

    check-cast v6, Ljava/lang/reflect/Type;

    goto :goto_3

    :cond_7
    new-instance v6, Lkotlin/reflect/GenericArrayTypeImpl;

    invoke-direct {v6, v5}, Lkotlin/reflect/GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    check-cast v6, Ljava/lang/reflect/Type;

    .end local v5    # "javaElementType":Ljava/lang/reflect/Type;
    goto :goto_3

    .line 52
    :cond_8
    :goto_2
    move-object v6, v1

    check-cast v6, Ljava/lang/reflect/Type;

    .line 50
    :goto_3
    return-object v6

    .line 49
    .end local v3    # "elementType":Lkotlin/reflect/KType;
    .end local v4    # "variance":Lkotlin/reflect/KVariance;
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kotlin.Array must have exactly one type argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 60
    :cond_a
    invoke-static {v1, v2}, Lkotlin/reflect/TypesJVMKt;->createPossiblyInnerType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Type;

    move-result-object v3

    return-object v3

    .line 62
    .end local v1    # "jClass":Ljava/lang/Class;
    .end local v2    # "arguments":Ljava/util/List;
    :cond_b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type classifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method static synthetic computeJavaType$default(Lkotlin/reflect/KType;ZILjava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 37
    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/reflect/TypesJVMKt;->computeJavaType(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private static final createPossiblyInnerType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Type;
    .locals 13
    .param p0, "jClass"    # Ljava/lang/Class;
    .param p1, "arguments"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0xa

    if-eqz v0, :cond_3

    .line 70
    .local v0, "ownerClass":Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/Type;

    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 233
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    check-cast v1, Ljava/util/Collection;

    .local v1, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v3

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 234
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 235
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "receiver":Ljava/lang/Object;
    const/4 v10, 0x0

    .local v10, "$i$a$-unknown-Object":I
    move-object v11, v9

    check-cast v11, Lkotlin/reflect/KTypeProjection;

    .line 71
    invoke-static {v11}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;

    move-result-object v9

    .end local v9    # "receiver":Ljava/lang/Object;
    .end local v10    # "$i$a$-unknown-Object":I
    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 236
    :cond_0
    nop

    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v1, Ljava/util/List;

    .line 233
    nop

    .line 71
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    new-instance v3, Lkotlin/reflect/ParameterizedTypeImpl;

    invoke-direct {v3, p0, v2, v1}, Lkotlin/reflect/ParameterizedTypeImpl;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V

    check-cast v3, Ljava/lang/reflect/Type;

    return-object v3

    .line 73
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    .line 74
    .local v2, "n":I
    nop

    .line 75
    nop

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/reflect/TypesJVMKt;->createPossiblyInnerType(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 77
    const/4 v4, 0x0

    invoke-interface {p1, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 237
    .local v5, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    check-cast v1, Ljava/util/Collection;

    .restart local v1    # "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v4

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 238
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 239
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    .local v10, "receiver":Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "$i$a$-unknown-Object":I
    move-object v12, v10

    check-cast v12, Lkotlin/reflect/KTypeProjection;

    .line 77
    invoke-static {v12}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;

    move-result-object v10

    .end local v10    # "receiver":Ljava/lang/Object;
    .end local v11    # "$i$a$-unknown-Object":I
    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 240
    :cond_2
    nop

    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v1, Ljava/util/List;

    .line 237
    nop

    .line 74
    .end local v4    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map":I
    new-instance v4, Lkotlin/reflect/ParameterizedTypeImpl;

    invoke-direct {v4, p0, v3, v1}, Lkotlin/reflect/ParameterizedTypeImpl;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V

    check-cast v4, Ljava/lang/reflect/Type;

    return-object v4

    .line 69
    .end local v0    # "ownerClass":Ljava/lang/Class;
    .end local v2    # "n":I
    :cond_3
    const/4 v0, 0x0

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 229
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    .restart local v1    # "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v2

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 230
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 231
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    .local v8, "receiver":Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "$i$a$-unknown-Object":I
    move-object v10, v8

    check-cast v10, Lkotlin/reflect/KTypeProjection;

    .line 69
    invoke-static {v10}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;

    move-result-object v8

    .end local v8    # "receiver":Ljava/lang/Object;
    .end local v9    # "$i$a$-unknown-Object":I
    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 232
    :cond_4
    nop

    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v1, Ljava/util/List;

    .line 229
    nop

    .line 69
    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    new-instance v2, Lkotlin/reflect/ParameterizedTypeImpl;

    invoke-direct {v2, p0, v0, v1}, Lkotlin/reflect/ParameterizedTypeImpl;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/List;)V

    check-cast v2, Ljava/lang/reflect/Type;

    return-object v2
.end method

.method public static final getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;
    .locals 3
    .param p0, "$this$javaType"    # Lkotlin/reflect/KType;

    const-string v0, "$this$javaType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v0, p0, Lkotlin/jvm/internal/KTypeBase;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p0

    check-cast v0, Lkotlin/jvm/internal/KTypeBase;

    invoke-interface {v0}, Lkotlin/jvm/internal/KTypeBase;->getJavaType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    .local v0, "it":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .line 30
    .local v1, "$i$a$-let-TypesJVMKt$javaType$1":I
    return-object v0

    .line 33
    .end local v0    # "it":Ljava/lang/reflect/Type;
    .end local v1    # "$i$a$-let-TypesJVMKt$javaType$1":I
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lkotlin/reflect/TypesJVMKt;->computeJavaType$default(Lkotlin/reflect/KType;ZILjava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private static final getJavaType(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "$this$javaType"    # Lkotlin/reflect/KTypeProjection;

    .line 84
    invoke-virtual {p0}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 85
    .local v0, "variance":Lkotlin/reflect/KVariance;
    invoke-virtual {p0}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    .local v1, "type":Lkotlin/reflect/KType;
    sget-object v2, Lkotlin/reflect/TypesJVMKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lkotlin/reflect/KVariance;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 93
    new-instance v2, Lkotlin/reflect/WildcardTypeImpl;

    invoke-static {v1, v3}, Lkotlin/reflect/TypesJVMKt;->computeJavaType(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lkotlin/reflect/WildcardTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    check-cast v2, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2

    .line 92
    :cond_1
    new-instance v2, Lkotlin/reflect/WildcardTypeImpl;

    invoke-static {v1, v3}, Lkotlin/reflect/TypesJVMKt;->computeJavaType(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lkotlin/reflect/WildcardTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    check-cast v2, Ljava/lang/reflect/Type;

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {v1, v3}, Lkotlin/reflect/TypesJVMKt;->computeJavaType(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 87
    :goto_0
    return-object v2

    .line 84
    .end local v0    # "variance":Lkotlin/reflect/KVariance;
    .end local v1    # "type":Lkotlin/reflect/KType;
    :cond_3
    sget-object v0, Lkotlin/reflect/WildcardTypeImpl;->Companion:Lkotlin/reflect/WildcardTypeImpl$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/WildcardTypeImpl$Companion;->getSTAR()Lkotlin/reflect/WildcardTypeImpl;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public static synthetic getJavaType$annotations(Lkotlin/reflect/KType;)V
    .locals 0

    return-void
.end method

.method private static synthetic getJavaType$annotations(Lkotlin/reflect/KTypeProjection;)V
    .locals 0

    return-void
.end method

.method private static final typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 221
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 222
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lkotlin/reflect/TypesJVMKt$typeToString$unwrap$1;->INSTANCE:Lkotlin/reflect/TypesJVMKt$typeToString$unwrap$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 224
    .local v0, "unwrap":Lkotlin/sequences/Sequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->last(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[]"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v3

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "unwrap":Lkotlin/sequences/Sequence;
    goto :goto_0

    .line 225
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_0
    const-string v1, "if (type.isArray) {\n    \u2026\n        } else type.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_1
    nop

    .line 226
    return-object v0
.end method
