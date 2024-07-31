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
.method static constructor <clinit>()V
    .locals 4

    .line 60
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/opencsv/bean/AbstractMappingStrategy;->FORBIDDEN_CLASSES_FOR_RECURSION:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
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
    .param p1, "root"    # Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    .local p2, "encounteredFields":Lorg/apache/commons/collections4/ListValuedMap;, "Lorg/apache/commons/collections4/ListValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
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

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$o7zVI-jc3U763P16VepILq4QuSU;

    invoke-direct {v1, p0, p2}, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$o7zVI-jc3U763P16VepILq4QuSU;-><init>(Lcom/opencsv/bean/AbstractMappingStrategy;Lorg/apache/commons/collections4/ListValuedMap;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 481
    return-void
.end method

.method private static createSubordinateBeans(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 4
    .param p0, "typeTree"    # Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;
    .param p2, "containingObject"    # Ljava/lang/Object;
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
    .local p1, "instanceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->getRecursiveMembers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 215
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/opencsv/bean/FieldAccess<Ljava/lang/Object;>;Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/FieldAccess;

    invoke-virtual {v2, p2}, Lcom/opencsv/bean/FieldAccess;->getField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 216
    .local v2, "childObject":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 217
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-static {v3}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->access$000(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 218
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/FieldAccess;

    invoke-virtual {v3, p2, v2}, Lcom/opencsv/bean/FieldAccess;->setField(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-virtual {v3}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-static {v3, p1, v2}, Lcom/opencsv/bean/AbstractMappingStrategy;->createSubordinateBeans(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Ljava/util/Map;Ljava/lang/Object;)V

    .line 222
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/opencsv/bean/FieldAccess<Ljava/lang/Object;>;Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;>;"
    .end local v2    # "childObject":Ljava/lang/Object;
    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method private filterIgnoredFields(Ljava/lang/Class;[Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 2
    .param p2, "fields"    # [Ljava/lang/reflect/Field;
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$C4BkN_ipCTaBAS77eUv1Tj8_F_8;

    invoke-direct {v1, p0, p1}, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$C4BkN_ipCTaBAS77eUv1Tj8_F_8;-><init>(Lcom/opencsv/bean/AbstractMappingStrategy;Ljava/lang/Class;)V

    .line 384
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 385
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 383
    return-object v0
.end method

.method private static indexSubordinateBeans(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 4
    .param p0, "typeTree"    # Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;
    .param p2, "containingObject"    # Ljava/lang/Object;
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
    .local p1, "instanceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->getRecursiveMembers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 249
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/opencsv/bean/FieldAccess<Ljava/lang/Object;>;Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;>;"
    if-nez p2, :cond_0

    .line 250
    const/4 v2, 0x0

    .local v2, "childObject":Ljava/lang/Object;
    goto :goto_1

    .line 253
    .end local v2    # "childObject":Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opencsv/bean/FieldAccess;

    invoke-virtual {v2, p2}, Lcom/opencsv/bean/FieldAccess;->getField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 255
    .restart local v2    # "childObject":Ljava/lang/Object;
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-virtual {v3}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-static {v3, p1, v2}, Lcom/opencsv/bean/AbstractMappingStrategy;->indexSubordinateBeans(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Ljava/util/Map;Ljava/lang/Object;)V

    .line 257
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/opencsv/bean/FieldAccess<Ljava/lang/Object;>;Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;>;"
    .end local v2    # "childObject":Ljava/lang/Object;
    goto :goto_0

    .line 258
    :cond_1
    return-void
.end method

.method static synthetic lambda$null$4(Ljava/util/Map$Entry;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "entry"    # Ljava/util/Map$Entry;
    .param p1, "a"    # Ljava/lang/Class;

    .line 510
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$partitionFields$3(Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "entry"    # Ljava/util/Map$Entry;

    .line 507
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$partitionFields$5(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map$Entry;)V
    .locals 3
    .param p0, "bindingAnnotations"    # Ljava/util/Set;
    .param p1, "returnValue"    # Ljava/util/Map;
    .param p2, "entry"    # Ljava/util/Map$Entry;

    .line 509
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$UmggMLhPNezAZ2k346lqtQ00crU;

    invoke-direct {v1, p2}, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$UmggMLhPNezAZ2k346lqtQ00crU;-><init>(Ljava/util/Map$Entry;)V

    .line 510
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/collections4/ListValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/collections4/ListValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 516
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
    .locals 5
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    const-string v1, "opencsv"

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v0, "instanceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v2, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 197
    .local v2, "rootBean":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v3, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->recursiveTypeTree:Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-static {v3, v0, v2}, Lcom/opencsv/bean/AbstractMappingStrategy;->createSubordinateBeans(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Ljava/util/Map;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v2    # "rootBean":Ljava/lang/Object;, "TT;"
    nop

    .line 209
    return-object v0

    .line 199
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v3, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v4, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 201
    invoke-static {v1, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 204
    const-string v4, "bean.instantiation.impossible"

    invoke-virtual {v1, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 205
    .local v1, "csve":Lcom/opencsv/exceptions/CsvBeanIntrospectionException;
    invoke-virtual {v1, v2}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 206
    throw v1

    .line 190
    .end local v0    # "instanceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    .end local v1    # "csve":Lcom/opencsv/exceptions/CsvBeanIntrospectionException;
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
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
    .locals 19
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "writeLocale"    # Ljava/lang/String;
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

    .line 693
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    .local p2, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "customConverter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractCsvConverter;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    if-eqz v15, :cond_0

    const-class v0, Lcom/opencsv/bean/AbstractCsvConverter;

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/CsvConverter;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .local v0, "converter":Lcom/opencsv/bean/CsvConverter;
    nop

    .line 703
    invoke-interface {v0, v12}, Lcom/opencsv/bean/CsvConverter;->setType(Ljava/lang/Class;)V

    .line 704
    invoke-interface {v0, v13}, Lcom/opencsv/bean/CsvConverter;->setLocale(Ljava/lang/String;)V

    .line 705
    invoke-interface {v0, v14}, Lcom/opencsv/bean/CsvConverter;->setWriteLocale(Ljava/lang/String;)V

    .line 706
    iget-object v3, v1, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-interface {v0, v3}, Lcom/opencsv/bean/CsvConverter;->setErrorLocale(Ljava/util/Locale;)V

    goto/16 :goto_4

    .line 696
    .end local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 697
    .local v0, "oldEx":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v3, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object v4, v1, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 699
    const-string v5, "opencsv"

    invoke-static {v5, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    const-string v5, "custom.converter.invalid"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v15, v4}, Lcom/opencsv/exceptions/CsvBadConverterException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 700
    .local v3, "newEx":Lcom/opencsv/exceptions/CsvBadConverterException;
    invoke-virtual {v3, v0}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 701
    throw v3

    .line 710
    .end local v0    # "oldEx":Ljava/lang/ReflectiveOperationException;
    .end local v3    # "newEx":Lcom/opencsv/exceptions/CsvBadConverterException;
    :cond_0
    const-class v0, Lcom/opencsv/bean/CsvDate;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 711
    const-class v0, Lcom/opencsv/bean/CsvDate;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/CsvDate;

    .line 712
    .local v0, "annotation":Lcom/opencsv/bean/CsvDate;
    invoke-interface {v0}, Lcom/opencsv/bean/CsvDate;->value()Ljava/lang/String;

    move-result-object v16

    .line 713
    .local v16, "readFormat":Ljava/lang/String;
    invoke-interface {v0}, Lcom/opencsv/bean/CsvDate;->writeFormatEqualsReadFormat()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v9, v16

    goto :goto_1

    .line 714
    :cond_1
    invoke-interface {v0}, Lcom/opencsv/bean/CsvDate;->writeFormat()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    :goto_1
    nop

    .line 715
    .local v9, "writeFormat":Ljava/lang/String;
    invoke-interface {v0}, Lcom/opencsv/bean/CsvDate;->chronology()Ljava/lang/String;

    move-result-object v17

    .line 716
    .local v17, "readChrono":Ljava/lang/String;
    invoke-interface {v0}, Lcom/opencsv/bean/CsvDate;->writeChronologyEqualsReadChronology()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v11, v17

    goto :goto_2

    .line 717
    :cond_2
    invoke-interface {v0}, Lcom/opencsv/bean/CsvDate;->writeChronology()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    :goto_2
    nop

    .line 718
    .local v11, "writeChrono":Ljava/lang/String;
    new-instance v18, Lcom/opencsv/bean/ConverterDate;

    iget-object v7, v1, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object/from16 v3, v18

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    invoke-direct/range {v3 .. v11}, Lcom/opencsv/bean/ConverterDate;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    .line 720
    .end local v9    # "writeFormat":Ljava/lang/String;
    .end local v11    # "writeChrono":Ljava/lang/String;
    .end local v16    # "readFormat":Ljava/lang/String;
    .end local v17    # "readChrono":Ljava/lang/String;
    .local v0, "converter":Lcom/opencsv/bean/CsvConverter;
    goto :goto_4

    .line 723
    .end local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    :cond_3
    const-class v0, Lcom/opencsv/bean/CsvNumber;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 724
    const-class v0, Lcom/opencsv/bean/CsvNumber;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/CsvNumber;

    .line 725
    .local v0, "annotation":Lcom/opencsv/bean/CsvNumber;
    invoke-interface {v0}, Lcom/opencsv/bean/CsvNumber;->value()Ljava/lang/String;

    move-result-object v10

    .line 726
    .local v10, "readFormat":Ljava/lang/String;
    invoke-interface {v0}, Lcom/opencsv/bean/CsvNumber;->writeFormatEqualsReadFormat()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v9, v10

    goto :goto_3

    .line 727
    :cond_4
    invoke-interface {v0}, Lcom/opencsv/bean/CsvNumber;->writeFormat()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    :goto_3
    nop

    .line 728
    .restart local v9    # "writeFormat":Ljava/lang/String;
    new-instance v11, Lcom/opencsv/bean/ConverterNumber;

    iget-object v7, v1, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    move-object v3, v11

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/opencsv/bean/ConverterNumber;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v11

    .line 730
    .end local v9    # "writeFormat":Ljava/lang/String;
    .end local v10    # "readFormat":Ljava/lang/String;
    .local v0, "converter":Lcom/opencsv/bean/CsvConverter;
    goto :goto_4

    .line 734
    .end local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    :cond_5
    new-instance v0, Lcom/opencsv/bean/ConverterPrimitiveTypes;

    iget-object v3, v1, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-direct {v0, v12, v13, v14, v3}, Lcom/opencsv/bean/ConverterPrimitiveTypes;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 737
    .restart local v0    # "converter":Lcom/opencsv/bean/CsvConverter;
    :goto_4
    return-object v0
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
    .locals 3
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TT;"
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

    move-result-object v0

    .line 290
    .local v0, "header":[Ljava/lang/String;
    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v1, v0}, Lcom/opencsv/bean/HeaderIndex;->initializeHeaderIndex([Ljava/lang/String;)V

    .line 291
    return-object v0

    .line 295
    .end local v0    # "header":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->getHeaderIndex()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 283
    const-string v2, "opencsv"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 284
    const-string v2, "type.before.header"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "col"    # I

    .line 307
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/HeaderIndex;->getByPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public ignoreFields(Lorg/apache/commons/collections4/MultiValuedMap;)V
    .locals 2
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

    .line 350
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    .local p1, "fields":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    if-nez p1, :cond_0

    .line 351
    new-instance v0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;

    goto :goto_0

    .line 354
    :cond_0
    iput-object p1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;

    .line 355
    invoke-interface {p1}, Lorg/apache/commons/collections4/MultiValuedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    .line 356
    .local v0, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    new-instance v1, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$A-7Iat49MdHW-iB1DJfCgEoWs68;

    invoke-direct {v1, p0, v0}, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$A-7Iat49MdHW-iB1DJfCgEoWs68;-><init>(Lcom/opencsv/bean/AbstractMappingStrategy;Lorg/apache/commons/collections4/MapIterator;)V

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/MapIterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 368
    .end local v0    # "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    :goto_0
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->loadFieldMap()V

    .line 371
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v0, "instanceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->recursiveTypeTree:Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-static {v1, v0, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->indexSubordinateBeans(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Ljava/util/Map;Ljava/lang/Object;)V

    .line 242
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    .local p1, "converter":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/opencsv/bean/AbstractBeanField<TT;TK;>;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opencsv/bean/BeanField;

    .line 531
    .local v0, "c":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;TK;>;"
    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lcom/opencsv/bean/BeanField;->setErrorLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    return-object v0

    .line 533
    .end local v0    # "c":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;TK;>;"
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 534
    .local v0, "oldEx":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Lcom/opencsv/exceptions/CsvBadConverterException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 536
    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

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
    .local v1, "newEx":Lcom/opencsv/exceptions/CsvBadConverterException;
    invoke-virtual {v1, v0}, Lcom/opencsv/exceptions/CsvBadConverterException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 538
    throw v1
.end method

.method public synthetic isAnnotationDriven()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/opencsv/bean/MappingStrategy$-CC;->$default$isAnnotationDriven(Lcom/opencsv/bean/MappingStrategy;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$assembleCompleteFieldList$2$AbstractMappingStrategy(Lorg/apache/commons/collections4/ListValuedMap;Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;)V
    .locals 0
    .param p1, "encounteredFields"    # Lorg/apache/commons/collections4/ListValuedMap;
    .param p2, "f"    # Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    .line 480
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    invoke-direct {p0, p2, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->assembleCompleteFieldList(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Lorg/apache/commons/collections4/ListValuedMap;)V

    return-void
.end method

.method public synthetic lambda$filterIgnoredFields$1$AbstractMappingStrategy(Ljava/lang/Class;Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "f"    # Ljava/lang/reflect/Field;

    .line 384
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->ignoredFields:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/MultiValuedMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/opencsv/bean/CsvIgnore;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$ignoreFields$0$AbstractMappingStrategy(Lorg/apache/commons/collections4/MapIterator;Ljava/lang/Class;)V
    .locals 4
    .param p1, "it"    # Lorg/apache/commons/collections4/MapIterator;
    .param p2, "type"    # Ljava/lang/Class;

    .line 357
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    invoke-interface {p1}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 358
    .local v0, "f":Ljava/lang/reflect/Field;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    return-void

    .line 360
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    const-string v3, "opencsv"

    invoke-static {v3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    .line 362
    const-string v3, "ignore.field.inconsistent"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic lambda$setErrorLocale$6$AbstractMappingStrategy(Lcom/opencsv/bean/BeanField;)V
    .locals 1
    .param p1, "f"    # Lcom/opencsv/bean/BeanField;

    .line 551
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
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

    .line 127
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    .local p1, "fields":Lorg/apache/commons/collections4/ListValuedMap;, "Lorg/apache/commons/collections4/ListValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
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
    .local v0, "partitionedFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Boolean;Lorg/apache/commons/collections4/ListValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;>;"
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

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/ListValuedMap;

    invoke-virtual {p0, v1}, Lcom/opencsv/bean/AbstractMappingStrategy;->loadAnnotatedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V

    goto :goto_0

    .line 408
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections4/ListValuedMap;

    invoke-virtual {p0, v1}, Lcom/opencsv/bean/AbstractMappingStrategy;->loadUnadornedFieldMap(Lorg/apache/commons/collections4/ListValuedMap;)V

    .line 410
    :goto_0
    return-void
.end method

.method protected loadRecursiveClasses(Ljava/lang/Class;Ljava/util/Set;)Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;
    .locals 7
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    .local p1, "newType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "encounteredTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
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
    .local v0, "localRecursiveTypeTree":Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;
    const-class v2, Lcom/opencsv/bean/CsvRecurse;

    invoke-static {p1, v2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getFieldsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/opencsv/bean/AbstractMappingStrategy;->filterIgnoredFields(Ljava/lang/Class;[Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 451
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->getBindingAnnotations()Ljava/util/Set;

    move-result-object v4

    .line 452
    .local v4, "bindingAnnotations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/opencsv/bean/-$$Lambda$JQt_2xUU8OlQKldVWJ146Zmfe7o;

    invoke-direct {v6, v3}, Lcom/opencsv/bean/-$$Lambda$JQt_2xUU8OlQKldVWJ146Zmfe7o;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 461
    new-instance v5, Lcom/opencsv/bean/FieldAccess;

    invoke-direct {v5, v3}, Lcom/opencsv/bean/FieldAccess;-><init>(Ljava/lang/reflect/Field;)V

    .line 463
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/opencsv/bean/AbstractMappingStrategy;->loadRecursiveClasses(Ljava/lang/Class;Ljava/util/Set;)Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    move-result-object v6

    .line 461
    invoke-virtual {v0, v5, v6}, Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;->addRecursiveMember(Lcom/opencsv/bean/FieldAccess;Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;)Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    .line 464
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "bindingAnnotations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    goto :goto_0

    .line 453
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    .restart local v4    # "bindingAnnotations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    :cond_0
    new-instance v2, Lcom/opencsv/exceptions/CsvRecursionException;

    iget-object v5, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 454
    invoke-static {v1, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 456
    const-string v5, "recursion.binding.mutually.exclusive"

    invoke-virtual {v1, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Lcom/opencsv/exceptions/CsvRecursionException;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    throw v2

    .line 466
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "bindingAnnotations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    :cond_1
    return-object v0

    .line 440
    .end local v0    # "localRecursiveTypeTree":Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;
    :cond_2
    new-instance v0, Lcom/opencsv/exceptions/CsvRecursionException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 441
    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 442
    const-string v2, "recursive.type.encountered.twice"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 440
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/opencsv/exceptions/CsvRecursionException;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    throw v0

    .line 432
    :cond_3
    new-instance v0, Lcom/opencsv/exceptions/CsvRecursionException;

    iget-object v2, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 433
    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 435
    const-string v2, "recursion.on.primitive"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/opencsv/exceptions/CsvRecursionException;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    throw v0
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    new-instance v0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    .line 496
    .local v0, "allFields":Lorg/apache/commons/collections4/ListValuedMap;, "Lorg/apache/commons/collections4/ListValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->recursiveTypeTree:Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;

    invoke-direct {p0, v1, v0}, Lcom/opencsv/bean/AbstractMappingStrategy;->assembleCompleteFieldList(Lcom/opencsv/bean/AbstractMappingStrategy$RecursiveType;Lorg/apache/commons/collections4/ListValuedMap;)V

    .line 499
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->getBindingAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 503
    .local v1, "bindingAnnotations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 504
    .local v2, "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Boolean;Lorg/apache/commons/collections4/ListValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;>;"
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

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$w8Rzty_4W5GQT8Fub5AW-3OtzQo;->INSTANCE:Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$w8Rzty_4W5GQT8Fub5AW-3OtzQo;

    .line 507
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$Vp86sNlB1osvxJVh3oB7rVEc42s;

    invoke-direct {v4, v1, v2}, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$Vp86sNlB1osvxJVh3oB7rVEc42s;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 508
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 517
    return-object v2
.end method

.method public populateNewBean([Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "line"    # [Ljava/lang/String;
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/opencsv/bean/AbstractMappingStrategy;->verifyLineLength(I)V

    .line 326
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->createBean()Ljava/util/Map;

    move-result-object v0

    .line 327
    .local v0, "beanTree":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "col":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 328
    aget-object v2, p1, v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/opencsv/bean/AbstractMappingStrategy;->setFieldValue(Ljava/util/Map;Ljava/lang/String;I)V

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "col":I
    :cond_0
    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public setErrorLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 544
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 549
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->getFieldMap()Lcom/opencsv/bean/FieldMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->getFieldMap()Lcom/opencsv/bean/FieldMap;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lcom/opencsv/bean/FieldMap;->setErrorLocale(Ljava/util/Locale;)V

    .line 551
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->getFieldMap()Lcom/opencsv/bean/FieldMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/opencsv/bean/FieldMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$bF5wJ36p9ZInlcZX5s5q6Kv7jsE;

    invoke-direct {v1, p0}, Lcom/opencsv/bean/-$$Lambda$AbstractMappingStrategy$bF5wJ36p9ZInlcZX5s5q6Kv7jsE;-><init>(Lcom/opencsv/bean/AbstractMappingStrategy;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 553
    :cond_0
    return-void
.end method

.method protected setFieldValue(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 3
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "column"    # I
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    .local p1, "beanTree":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    invoke-virtual {p0, p3}, Lcom/opencsv/bean/AbstractMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v0

    .line 579
    .local v0, "beanField":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;TK;>;"
    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0}, Lcom/opencsv/bean/BeanField;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 581
    .local v1, "subordinateBean":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lcom/opencsv/bean/AbstractMappingStrategy;->findHeader(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/opencsv/bean/BeanField;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .end local v1    # "subordinateBean":Ljava/lang/Object;
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iput-object p1, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->type:Ljava/lang/Class;

    .line 343
    invoke-virtual {p0}, Lcom/opencsv/bean/AbstractMappingStrategy;->loadFieldMap()V

    .line 344
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
    .local p0, "this":Lcom/opencsv/bean/AbstractMappingStrategy;, "Lcom/opencsv/bean/AbstractMappingStrategy<TI;TK;TC;TT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0}, Lcom/opencsv/bean/HeaderIndex;->findMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 590
    .local v0, "numColumns":I
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 595
    .local v1, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/opencsv/bean/AbstractMappingStrategy;->indexBean(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .local v3, "instanceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    nop

    .line 610
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 613
    invoke-virtual {p0, v4}, Lcom/opencsv/bean/AbstractMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v5

    .line 614
    .local v5, "firstBeanField":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;TK;>;"
    invoke-virtual {p0, v4}, Lcom/opencsv/bean/AbstractMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;

    move-result-object v6

    .line 615
    .local v6, "firstIndex":Ljava/lang/Comparable;, "TK;"
    if-eqz v5, :cond_0

    .line 616
    invoke-interface {v5}, Lcom/opencsv/bean/BeanField;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Lcom/opencsv/bean/BeanField;->write(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    sget-object v7, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 619
    .local v7, "fields":[Ljava/lang/String;
    :goto_1
    array-length v8, v7

    const-string v9, ""

    if-nez v8, :cond_1

    .line 622
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 628
    :cond_1
    aget-object v8, v7, v2

    invoke-static {v8}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    const/4 v8, 0x1

    .line 634
    .local v8, "j":I
    add-int v10, v4, v8

    .line 635
    .local v10, "displacedIndex":I
    invoke-virtual {p0, v10}, Lcom/opencsv/bean/AbstractMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v11

    .line 636
    .local v11, "subsequentBeanField":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;TK;>;"
    invoke-virtual {p0, v10}, Lcom/opencsv/bean/AbstractMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;

    move-result-object v12

    .line 637
    .local v12, "subsequentIndex":Ljava/lang/Comparable;, "TK;"
    :goto_2
    array-length v13, v7

    if-ge v8, v13, :cond_2

    if-ge v10, v0, :cond_2

    .line 639
    invoke-static {v5, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 640
    invoke-static {v6, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 642
    aget-object v13, v7, v8

    invoke-static {v13}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    add-int/lit8 v8, v8, 0x1

    add-int v10, v4, v8

    .line 646
    invoke-virtual {p0, v10}, Lcom/opencsv/bean/AbstractMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v11

    .line 647
    invoke-virtual {p0, v10}, Lcom/opencsv/bean/AbstractMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;

    move-result-object v12

    goto :goto_2

    .line 650
    :cond_2
    move v4, v10

    .line 654
    if-ge v4, v0, :cond_3

    .line 655
    invoke-virtual {p0, v4}, Lcom/opencsv/bean/AbstractMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v11

    .line 656
    invoke-virtual {p0, v4}, Lcom/opencsv/bean/AbstractMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;

    move-result-object v12

    .line 657
    :goto_3
    invoke-static {v5, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 658
    invoke-static {v6, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-ge v4, v0, :cond_3

    .line 660
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/opencsv/bean/AbstractMappingStrategy;->findField(I)Lcom/opencsv/bean/BeanField;

    move-result-object v11

    .line 662
    invoke-virtual {p0, v4}, Lcom/opencsv/bean/AbstractMappingStrategy;->chooseMultivaluedFieldIndexFromHeaderIndex(I)Ljava/lang/Comparable;

    move-result-object v12

    goto :goto_3

    .line 666
    .end local v7    # "fields":[Ljava/lang/String;
    .end local v8    # "j":I
    .end local v10    # "displacedIndex":I
    .end local v11    # "subsequentBeanField":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;TK;>;"
    .end local v12    # "subsequentIndex":Ljava/lang/Comparable;, "TK;"
    :cond_3
    :goto_4
    goto/16 :goto_0

    .line 667
    .end local v4    # "i":I
    .end local v5    # "firstBeanField":Lcom/opencsv/bean/BeanField;, "Lcom/opencsv/bean/BeanField<TT;TK;>;"
    .end local v6    # "firstIndex":Ljava/lang/Comparable;, "TK;"
    :cond_4
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 597
    .end local v3    # "instanceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    .line 601
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_5
    new-instance v3, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;

    iget-object v4, p0, Lcom/opencsv/bean/AbstractMappingStrategy;->errorLocale:Ljava/util/Locale;

    .line 602
    const-string v5, "opencsv"

    invoke-static {v5, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    .line 604
    const-string v5, "error.introspecting.beans"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;-><init>(Ljava/lang/String;)V

    .line 605
    .local v3, "csve":Lcom/opencsv/exceptions/CsvBeanIntrospectionException;
    invoke-virtual {v3, v2}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 606
    throw v3
.end method

.method protected abstract verifyLineLength(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation
.end method
