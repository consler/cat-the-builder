.class public Lorg/catrobat/catroid/io/CatroidFieldKeySorter;
.super Ljava/lang/Object;
.source "CatroidFieldKeySorter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkMissingSerializableField(Ljava/util/List;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/thoughtworks/xstream/converters/reflection/FieldKey;",
            "Ljava/lang/reflect/Field;",
            ">;>;)V"
        }
    .end annotation

    .line 88
    .local p1, "fieldOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/thoughtworks/xstream/converters/reflection/FieldKey;Ljava/lang/reflect/Field;>;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    .local v1, "fieldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/thoughtworks/xstream/converters/reflection/FieldKey;Ljava/lang/reflect/Field;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 90
    .local v2, "fieldKey":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    invoke-static {v2}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->getAliasOrFieldName(Lcom/thoughtworks/xstream/converters/reflection/FieldKey;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "fieldKeyName":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-direct {p0, v4}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->isSerializable(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/io/XStreamMissingSerializableFieldException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing field \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' in XStreamFieldKeyOrder annotation for class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/catrobat/catroid/io/XStreamMissingSerializableFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    .end local v1    # "fieldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/thoughtworks/xstream/converters/reflection/FieldKey;Ljava/lang/reflect/Field;>;"
    .end local v2    # "fieldKey":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    .end local v3    # "fieldKeyName":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 96
    :cond_2
    return-void
.end method

.method private findAnnotationInClassHierarchy(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+TE;>;)TE;"
        }
    .end annotation

    .line 56
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    move-object v0, p1

    .line 57
    .local v0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 59
    .local v1, "currentClassAnnotation":Ljava/lang/annotation/Annotation;, "TE;"
    if-eqz v1, :cond_0

    .line 60
    return-object v1

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 64
    .end local v1    # "currentClassAnnotation":Ljava/lang/annotation/Annotation;, "TE;"
    goto :goto_0

    .line 65
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getAliasOrFieldName(Lcom/thoughtworks/xstream/converters/reflection/FieldKey;)Ljava/lang/String;
    .locals 4
    .param p0, "fieldKey"    # Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 124
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "fieldName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 128
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v2, Lcom/thoughtworks/xstream/annotations/XStreamAlias;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/annotations/XStreamAlias;

    .line 129
    .local v2, "alias":Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    if-eqz v2, :cond_0

    .line 130
    invoke-interface {v2}, Lcom/thoughtworks/xstream/annotations/XStreamAlias;->value()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 132
    :cond_0
    return-object v0

    .line 134
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "alias":Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 135
    .local v1, "exception":Ljava/lang/Exception;
    :goto_0
    sget-object v2, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v1    # "exception":Ljava/lang/Exception;
    return-object v0
.end method

.method private isSerializable(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 99
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 100
    .local v0, "modifiers":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private sortAlphabeticallyByClassHierarchy(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "keyedByFieldKey"    # Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lorg/catrobat/catroid/io/CatroidFieldKeySorter$2;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter$2;-><init>(Lorg/catrobat/catroid/io/CatroidFieldKeySorter;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 119
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 120
    return-object v0
.end method

.method private sortByList(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p2, "keyedByFieldKey"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 70
    .local p1, "fieldOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->checkMissingSerializableField(Ljava/util/List;Ljava/util/Set;)V

    .line 71
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lorg/catrobat/catroid/io/CatroidFieldKeySorter$1;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter$1;-><init>(Lorg/catrobat/catroid/io/CatroidFieldKeySorter;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 83
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 84
    return-object v0
.end method


# virtual methods
.method public sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "keyedByFieldKey"    # Ljava/util/Map;

    .line 46
    const-class v0, Lorg/catrobat/catroid/io/XStreamFieldKeyOrder;

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->findAnnotationInClassHierarchy(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/io/XStreamFieldKeyOrder;

    .line 47
    .local v0, "fieldKeyOrderAnnotation":Lorg/catrobat/catroid/io/XStreamFieldKeyOrder;
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Lorg/catrobat/catroid/io/XStreamFieldKeyOrder;->value()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, "fieldOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1, p2}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->sortByList(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 51
    .end local v1    # "fieldOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->sortAlphabeticallyByClassHierarchy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method
