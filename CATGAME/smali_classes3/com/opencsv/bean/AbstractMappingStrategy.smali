.class public abstract Lcom/opencsv/bean/AbstractMappingStrategy;
.super Ljava/lang/Object;
.source "AbstractMappingStrategy.java"

# interfaces
.implements Lcom/opencsv/bean/MappingStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "K::",
        "Ljava/lang/Comparable<",
        "TK;>;C::",
        "Lcom/opencsv/bean/ComplexFieldMapEntry<",
        "TI;TK;TT;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/opencsv/bean/MappingStrategy<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final FORBIDDEN_CLASSES_FOR_RECURSION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected errorLocale:Ljava/util/Locale;

.field protected final headerIndex:Lcom/opencsv/bean/HeaderIndex;

.field private ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private recursiveTypeTree:Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

.field protected type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DkOTCYBYCF30YKlNOUh77nF4zEY(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 60
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/opencsv/bean/AbstractMappingStrategy;->FORBIDDEN_CLASSES_FOR_RECURSION:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/opencsv/bean/HeaderIndex;

    invoke-direct {v0}, Lcom/opencsv/bean/HeaderIndex;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    .line 81
    new-instance v0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    return-void
.end method

.method private assembleCompleteFieldList(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Lorg/apache/commons/collections4/ListValuedMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;",
            "Lorg/apache/commons/collections4/ListValuedMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 479
    invoke-static {p1}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->access$000(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->access$000(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->access$000(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/opencsv/bean/AbstractMappingStrategy;->filterIgnoredFields(Ljava/lang/Class;[Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/apache/commons/collections4/ListValuedMap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    .line 480
    invoke-virtual {p1}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->getRecursiveMembers()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda4;-><init>(Lcom/opencsv/bean/AbstractMappingStrategy;Lorg/apache/commons/collections4/ListValuedMap;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static createSubordinateBeans(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->getRecursiveMembers()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/FieldAccess;

    invoke-virtual {v1, p2}, Lcom/opencsv/bean/FieldAccess;->getField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-static {v1}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->access$000(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 218
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/FieldAccess;

    invoke-virtual {v2, p2, v1}, Lcom/opencsv/bean/FieldAccess;->setField(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-virtual {v2}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-static {v0, p1, v1}, Lcom/opencsv/bean/AbstractMappingStrategy;->createSubordinateBeans(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Ljava/util/Map;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private filterIgnoredFields(Ljava/lang/Class;[Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 383
    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda0;-><init>(Lcom/opencsv/bean/AbstractMappingStrategy;Ljava/lang/Class;)V

    .line 384
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 385
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private static indexSubordinateBeans(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->getRecursiveMembers()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 253
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opencsv/bean/FieldAccess;

    invoke-virtual {v1, p2}, Lcom/opencsv/bean/FieldAccess;->getField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 255
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-virtual {v2}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-static {v0, p1, v1}, Lcom/opencsv/bean/AbstractMappingStrategy;->indexSubordinateBeans(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Ljava/util/Map;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$null$4(Ljava/util/Map$Entry;Ljava/lang/Class;)Z
    .locals 0

    .line 510
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$partitionFields$3(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 507
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$partitionFields$5(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map$Entry;)V
    .locals 1

    .line 509
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map$Entry;)V

    .line 510
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 511
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/collections4/ListValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/collections4/ListValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation
.end method

.method protected createBean()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBeanIntrospectionException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    const-string v1, "opencsv"

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 197
    iget-object v3, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v3, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->recursiveTypeTree:Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-static {v3, v0, v2}, Lcom/opencsv/bean/AbstractMappingStrategy;->createSubordinateBeans(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Ljava/util/Map;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 200
    :goto_0
    new-instance v2, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v3, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 201
    invoke-static {v1, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v3, "bean.instantiation.impossible"

    .line 204
    invoke-virtual {v1, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2, v0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 206
    throw v2

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "type.unset"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected determineConverter(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lcom/opencsv/bean/CsvConverter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/opencsv/bean/AbstractCsvConverter;",
            ">;)",
            "Lcom/opencsv/bean/CsvConverter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 693
    const-class v0, Lcom/opencsv/bean/AbstractCsvConverter;

    invoke-virtual {p5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    :try_start_0
    invoke-virtual {p5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/opencsv/bean/CsvConverter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    invoke-interface {p1, p2}, Lcom/opencsv/bean/CsvConverter;->setType(Ljava/lang/Class;)V

    .line 704
    invoke-interface {p1, p3}, Lcom/opencsv/bean/CsvConverter;->setLocale(Ljava/lang/String;)V

    .line 705
    invoke-interface {p1, p4}, Lcom/opencsv/bean/CsvConverter;->setWriteLocale(Ljava/lang/String;)V

    .line 706
    iget-object p2, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-interface {p1, p2}, Lcom/opencsv/bean/CsvConverter;->setErrorLocale(Ljava/util/Locale;)V

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 697
    :goto_0
    new-instance p2, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-string p3, "opencsv"

    iget-object p4, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 699
    invoke-static {p3, p4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p3

    const-string p4, "custom.converter.invalid"

    invoke-virtual {p3, p4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p5, p3}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p2, p1}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 701
    throw p2

    .line 710
    :cond_0
    const-class p5, Lcom/opencsv/bean/CsvDate;

    invoke-virtual {p1, p5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 711
    const-class p5, Lcom/opencsv/bean/CsvDate;

    invoke-virtual {p1, p5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/opencsv/bean/CsvDate;

    .line 712
    invoke-interface {p1}, Lcom/opencsv/bean/CsvDate;->value()Ljava/lang/String;

    move-result-object v5

    .line 713
    invoke-interface {p1}, Lcom/opencsv/bean/CsvDate;->writeFormatEqualsReadFormat()Z

    move-result p5

    if-eqz p5, :cond_1

    move-object v6, v5

    goto :goto_1

    .line 714
    :cond_1
    invoke-interface {p1}, Lcom/opencsv/bean/CsvDate;->writeFormat()Ljava/lang/String;

    move-result-object p5

    move-object v6, p5

    .line 715
    :goto_1
    invoke-interface {p1}, Lcom/opencsv/bean/CsvDate;->chronology()Ljava/lang/String;

    move-result-object v7

    .line 716
    invoke-interface {p1}, Lcom/opencsv/bean/CsvDate;->writeChronologyEqualsReadChronology()Z

    move-result p5

    if-eqz p5, :cond_2

    move-object v8, v7

    goto :goto_2

    .line 717
    :cond_2
    invoke-interface {p1}, Lcom/opencsv/bean/CsvDate;->writeChronology()Ljava/lang/String;

    move-result-object p1

    move-object v8, p1

    .line 718
    :goto_2
    new-instance p1, Lcom/opencsv/bean/ConverterDate;

    iget-object v4, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v8}, Lcom/opencsv/bean/ConverterDate;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 723
    :cond_3
    const-class p5, Lcom/opencsv/bean/CsvNumber;

    invoke-virtual {p1, p5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 724
    const-class p5, Lcom/opencsv/bean/CsvNumber;

    invoke-virtual {p1, p5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/opencsv/bean/CsvNumber;

    .line 725
    invoke-interface {p1}, Lcom/opencsv/bean/CsvNumber;->value()Ljava/lang/String;

    move-result-object v5

    .line 726
    invoke-interface {p1}, Lcom/opencsv/bean/CsvNumber;->writeFormatEqualsReadFormat()Z

    move-result p5

    if-eqz p5, :cond_4

    move-object v6, v5

    goto :goto_3

    .line 727
    :cond_4
    invoke-interface {p1}, Lcom/opencsv/bean/CsvNumber;->writeFormat()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 728
    :goto_3
    new-instance p1, Lcom/opencsv/bean/ConverterNumber;

    iget-object v4, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/opencsv/bean/ConverterNumber;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 734
    :cond_5
    new-instance p1, Lcom/opencsv/bean/ConverterPrimitiveTypes;

    iget-object p5, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/opencsv/bean/ConverterPrimitiveTypes;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    :goto_4
    return-object p1
.end method

.method protected abstract findField(I)Lcom/opencsv/bean/BeanField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;"
        }
    .end annotation
.end method

.method public abstract findHeader(I)Ljava/lang/String;
.end method

.method public generateHeader(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->getFieldMap()Lcom/opencsv/bean/FieldMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/opencsv/bean/FieldMap;->generateHeader(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    .line 290
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/HeaderIndex;->initializeHeaderIndex([Ljava/lang/String;)V

    return-object p1

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {p1}, Lcom/opencsv/bean/HeaderIndex;->getHeaderIndex()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 282
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "opencsv"

    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 283
    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "type.before.header"

    .line 284
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getBindingAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/HeaderIndex;->getByPosition(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getFieldMap()Lcom/opencsv/bean/FieldMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/opencsv/bean/FieldMap<",
            "TI;TK;+TC;TT;>;"
        }
    .end annotation
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public ignoreFields(Lorg/apache/commons/collections4/MultiValuedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 351
    new-instance p1, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {p1}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;

    goto :goto_0

    .line 354
    :cond_0
    iput-object p1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;

    .line 355
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiValuedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object p1

    .line 356
    new-instance v0, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda1;-><init>(Lcom/opencsv/bean/AbstractMappingStrategy;Lorg/apache/commons/collections4/MapIterator;)V

    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/MapIterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 368
    :goto_0
    iget-object p1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    if-eqz p1, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->loadFieldMap()V

    :cond_1
    return-void
.end method

.method protected indexBean(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->recursiveTypeTree:Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-static {v1, v0, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->indexSubordinateBeans(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected abstract initializeFieldMap()V
.end method

.method protected instantiateCustomConverter(Ljava/lang/Class;)Lcom/opencsv/bean/BeanField;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/opencsv/bean/AbstractBeanField<",
            "TT;TK;>;>;)",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation

    .line 530
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/BeanField;

    .line 531
    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lcom/opencsv/bean/BeanField;->setErrorLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 534
    :goto_0
    new-instance v1, Lcom/opencsv/exceptions/CsvBadConverterException;

    const-string v2, "opencsv"

    iget-object v3, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 536
    invoke-static {v2, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    const-string v3, "custom.converter.invalid"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 538
    throw v1
.end method

.method synthetic lambda$assembleCompleteFieldList$2$com-opencsv-bean-AbstractMappingStrategy(Lorg/apache/commons/collections4/ListValuedMap;Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;)V
    .locals 0

    .line 480
    invoke-direct {p0, p2, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->assembleCompleteFieldList(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Lorg/apache/commons/collections4/ListValuedMap;)V

    return-void
.end method

.method synthetic lambda$filterIgnoredFields$1$com-opencsv-bean-AbstractMappingStrategy(Ljava/lang/Class;Ljava/lang/reflect/Field;)Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiValuedMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-class p1, Lcom/opencsv/bean/CsvIgnore;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method synthetic lambda$ignoreFields$0$com-opencsv-bean-AbstractMappingStrategy(Lorg/apache/commons/collections4/MapIterator;Ljava/lang/Class;)V
    .locals 1

    .line 357
    invoke-interface {p1}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 360
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "opencsv"

    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-static {p2, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v0, "ignore.field.inconsistent"

    .line 362
    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic lambda$setErrorLocale$6$com-opencsv-bean-AbstractMappingStrategy(Lcom/opencsv/bean/BeanField;)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-interface {p1, v0}, Lcom/opencsv/bean/BeanField;->setErrorLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected loadAnnotatedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/ListValuedMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected loadFieldMap()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->initializeFieldMap()V

    .line 400
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/opencsv/bean/AbstractMappingStrategy;->loadRecursiveClasses(Ljava/lang/Class;Ljava/util/Set;)Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    move-result-object v0

    iput-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->recursiveTypeTree:Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    .line 403
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->partitionFields()Ljava/util/Map;

    move-result-object v0

    .line 404
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {v1}, Lorg/apache/commons/collections4/ListValuedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/ListValuedMap;

    invoke-virtual {p0, v0}, Lcom/opencsv/bean/AbstractMappingStrategy;->loadAnnotatedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V

    goto :goto_0

    .line 408
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/ListValuedMap;

    invoke-virtual {p0, v0}, Lcom/opencsv/bean/AbstractMappingStrategy;->loadUnadornedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V

    :goto_0
    return-void
.end method

.method protected loadRecursiveClasses(Ljava/lang/Class;Ljava/util/Set;)Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;"
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/opencsv/bean/AbstractMappingStrategy;->FORBIDDEN_CLASSES_FOR_RECURSION:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "opencsv"

    if-nez v0, :cond_3

    .line 439
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v0, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-direct {v0, p1}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;-><init>(Ljava/lang/Class;)V

    .line 448
    const-class v2, Lcom/opencsv/bean/CsvRecurse;

    invoke-static {p1, v2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getFieldsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/opencsv/bean/AbstractMappingStrategy;->filterIgnoredFields(Ljava/lang/Class;[Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 451
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->getBindingAnnotations()Ljava/util/Set;

    move-result-object v3

    .line 452
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2}, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda5;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 461
    new-instance v3, Lcom/opencsv/bean/FieldAccess;

    invoke-direct {v3, v2}, Lcom/opencsv/bean/FieldAccess;-><init>(Ljava/lang/reflect/Field;)V

    .line 463
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/opencsv/bean/AbstractMappingStrategy;->loadRecursiveClasses(Ljava/lang/Class;Ljava/util/Set;)Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    move-result-object v2

    .line 461
    invoke-virtual {v0, v3, v2}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->addRecursiveMember(Lcom/opencsv/bean/FieldAccess;Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;)Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    goto :goto_0

    .line 453
    :cond_0
    new-instance p1, Lcom/opencsv/exceptions/CsvRecursionException;

    iget-object p2, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 454
    invoke-static {v1, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p2

    const-string v0, "recursion.binding.mutually.exclusive"

    .line 456
    invoke-virtual {p2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 457
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/opencsv/exceptions/CsvRecursionException;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    throw p1

    :cond_1
    return-object v0

    .line 440
    :cond_2
    new-instance p2, Lcom/opencsv/exceptions/CsvRecursionException;

    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 441
    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "recursive.type.encountered.twice"

    .line 442
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 440
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/opencsv/exceptions/CsvRecursionException;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    throw p2

    .line 432
    :cond_3
    new-instance p2, Lcom/opencsv/exceptions/CsvRecursionException;

    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 433
    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string v1, "recursion.on.primitive"

    .line 435
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/opencsv/exceptions/CsvRecursionException;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    throw p2
.end method

.method protected abstract loadUnadornedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/ListValuedMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation
.end method

.method protected partitionFields()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Lorg/apache/commons/collections4/ListValuedMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation

    .line 495
    new-instance v0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    .line 496
    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->recursiveTypeTree:Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-direct {p0, v1, v0}, Lcom/opencsv/bean/AbstractMappingStrategy;->assembleCompleteFieldList(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Lorg/apache/commons/collections4/ListValuedMap;)V

    .line 499
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->getBindingAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 503
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 504
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v4, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v4}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v4, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v4}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-interface {v0}, Lorg/apache/commons/collections4/ListValuedMap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda6;-><init>()V

    .line 507
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, v2}, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda7;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 508
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v2
.end method

.method public populateNewBean([Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBeanIntrospectionException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;,
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 325
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/opencsv/bean/AbstractMappingStrategy;->verifyLineLength(I)V

    .line 326
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->createBean()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 327
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 328
    aget-object v2, p1, v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/opencsv/bean/AbstractMappingStrategy;->setFieldValue(Ljava/util/Map;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 1

    .line 544
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 549
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->getFieldMap()Lcom/opencsv/bean/FieldMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->getFieldMap()Lcom/opencsv/bean/FieldMap;

    move-result-object p1

    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-interface {p1, v0}, Lcom/opencsv/bean/FieldMap;->setErrorLocale(Ljava/util/Locale;)V

    .line 551
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->getFieldMap()Lcom/opencsv/bean/FieldMap;

    move-result-object p1

    invoke-interface {p1}, Lcom/opencsv/bean/FieldMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/opencsv/bean/AbstractMappingStrategy$$ExternalSyntheticLambda2;-><init>(Lcom/opencsv/bean/AbstractMappingStrategy;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method protected setFieldValue(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;,
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 578
    invoke-virtual {p0, p3}, Lcom/opencsv/bean/AbstractMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0}, Lcom/opencsv/bean/BeanField;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 581
    invoke-virtual {p0, p3}, Lcom/opencsv/bean/AbstractMappingStrategy;->findHeader(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/opencsv/bean/BeanField;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvBadConverterException;
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    .line 343
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->loadFieldMap()V

    return-void
.end method

.method public transmuteBean(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->findMaxIndex()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 590
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 595
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->indexBean(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_4

    .line 613
    invoke-virtual {p0, v4}, Lcom/opencsv/bean/AbstractMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v5

    .line 614
    invoke-virtual {p0, v4}, Lcom/opencsv/bean/AbstractMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;

    move-result-object v6

    if-eqz v5, :cond_0

    .line 616
    invoke-interface {v5}, Lcom/opencsv/bean/BeanField;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Lcom/opencsv/bean/BeanField;->write(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    sget-object v7, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 619
    :goto_1
    array-length v8, v7

    const-string v9, ""

    if-nez v8, :cond_1

    .line 622
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 628
    :cond_1
    aget-object v8, v7, v3

    invoke-static {v8}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v4, 0x1

    .line 635
    invoke-virtual {p0, v8}, Lcom/opencsv/bean/AbstractMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v10

    .line 636
    invoke-virtual {p0, v8}, Lcom/opencsv/bean/AbstractMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;

    move-result-object v11

    move v12, v1

    .line 637
    :goto_2
    array-length v13, v7

    if-ge v12, v13, :cond_2

    if-ge v8, v0, :cond_2

    .line 639
    invoke-static {v5, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 640
    invoke-static {v6, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 642
    aget-object v8, v7, v12

    invoke-static {v8}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    add-int v8, v4, v12

    .line 646
    invoke-virtual {p0, v8}, Lcom/opencsv/bean/AbstractMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v10

    .line 647
    invoke-virtual {p0, v8}, Lcom/opencsv/bean/AbstractMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;

    move-result-object v11

    goto :goto_2

    :cond_2
    if-ge v8, v0, :cond_3

    .line 655
    invoke-virtual {p0, v8}, Lcom/opencsv/bean/AbstractMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v4

    .line 656
    invoke-virtual {p0, v8}, Lcom/opencsv/bean/AbstractMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;

    move-result-object v7

    .line 657
    :goto_3
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 658
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v8, v0, :cond_3

    .line 660
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    .line 661
    invoke-virtual {p0, v8}, Lcom/opencsv/bean/AbstractMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v4

    .line 662
    invoke-virtual {p0, v8}, Lcom/opencsv/bean/AbstractMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;

    move-result-object v7

    goto :goto_3

    :cond_3
    move v4, v8

    goto/16 :goto_0

    :cond_4
    new-array p1, v3, [Ljava/lang/String;

    .line 667
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 601
    :goto_4
    new-instance v0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    const-string v1, "opencsv"

    iget-object v2, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 602
    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "error.introspecting.beans"

    .line 604
    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0, p1}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 606
    throw v0
.end method

.method protected abstract verifyLineLength(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation
.end method
