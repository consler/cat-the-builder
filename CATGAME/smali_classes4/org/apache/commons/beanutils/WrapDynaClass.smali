.class public Lorg/apache/commons/beanutils/WrapDynaClass;
.super Ljava/lang/Object;
.source "WrapDynaClass.java"

# interfaces
.implements Lorg/apache/commons/beanutils/DynaClass;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;
    }
.end annotation


# static fields
.field private static final CLASSLOADER_CACHE:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/beanutils/ContextClassLoaderLocal<",
            "Ljava/util/Map<",
            "Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;",
            "Lorg/apache/commons/beanutils/WrapDynaClass;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static dynaClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private beanClassName:Ljava/lang/String;

.field private beanClassRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected descriptors:[Ljava/beans/PropertyDescriptor;

.field protected descriptorsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected properties:[Lorg/apache/commons/beanutils/DynaProperty;

.field protected propertiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/beanutils/DynaProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyUtilsBean:Lorg/apache/commons/beanutils/PropertyUtilsBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lorg/apache/commons/beanutils/WrapDynaClass$1;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/WrapDynaClass$1;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/WrapDynaClass;->CLASSLOADER_CACHE:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    .line 198
    new-instance v0, Lorg/apache/commons/beanutils/WrapDynaClass$2;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/WrapDynaClass$2;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/WrapDynaClass;->dynaClasses:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V
    .locals 2
    .param p2, "propUtils"    # Lorg/apache/commons/beanutils/PropertyUtilsBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/PropertyUtilsBean;",
            ")V"
        }
    .end annotation

    .line 65
    .local p1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->beanClassName:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->beanClassRef:Ljava/lang/ref/Reference;

    .line 96
    iput-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->beanClass:Ljava/lang/Class;

    .line 103
    iput-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->descriptors:[Ljava/beans/PropertyDescriptor;

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->descriptorsMap:Ljava/util/HashMap;

    .line 117
    iput-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->propertiesMap:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->beanClassRef:Ljava/lang/ref/Reference;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->beanClassName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->propertyUtilsBean:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/WrapDynaClass;->introspect()V

    .line 72
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 51
    invoke-static {}, Lorg/apache/commons/beanutils/WrapDynaClass;->getDynaClassesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 51
    invoke-static {}, Lorg/apache/commons/beanutils/WrapDynaClass;->getClassesCache()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static clear()V
    .locals 1

    .line 391
    invoke-static {}, Lorg/apache/commons/beanutils/WrapDynaClass;->getClassesCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 393
    return-void
.end method

.method public static createDynaClass(Ljava/lang/Class;)Lorg/apache/commons/beanutils/WrapDynaClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/WrapDynaClass;"
        }
    .end annotation

    .line 405
    .local p0, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/beanutils/WrapDynaClass;->createDynaClass(Ljava/lang/Class;Lorg/apache/commons/beanutils/PropertyUtilsBean;)Lorg/apache/commons/beanutils/WrapDynaClass;

    move-result-object v0

    return-object v0
.end method

.method public static createDynaClass(Ljava/lang/Class;Lorg/apache/commons/beanutils/PropertyUtilsBean;)Lorg/apache/commons/beanutils/WrapDynaClass;
    .locals 4
    .param p1, "pu"    # Lorg/apache/commons/beanutils/PropertyUtilsBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/PropertyUtilsBean;",
            ")",
            "Lorg/apache/commons/beanutils/WrapDynaClass;"
        }
    .end annotation

    .line 424
    .local p0, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getInstance()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    .line 425
    .local v0, "propUtils":Lorg/apache/commons/beanutils/PropertyUtilsBean;
    :goto_0
    new-instance v1, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;-><init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V

    .line 426
    .local v1, "key":Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;
    invoke-static {}, Lorg/apache/commons/beanutils/WrapDynaClass;->getClassesCache()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/beanutils/WrapDynaClass;

    .line 427
    .local v2, "dynaClass":Lorg/apache/commons/beanutils/WrapDynaClass;
    if-nez v2, :cond_1

    .line 428
    new-instance v3, Lorg/apache/commons/beanutils/WrapDynaClass;

    invoke-direct {v3, p0, v0}, Lorg/apache/commons/beanutils/WrapDynaClass;-><init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V

    move-object v2, v3

    .line 429
    invoke-static {}, Lorg/apache/commons/beanutils/WrapDynaClass;->getClassesCache()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_1
    return-object v2
.end method

.method private static getClassesCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;",
            "Lorg/apache/commons/beanutils/WrapDynaClass;",
            ">;"
        }
    .end annotation

    .line 158
    sget-object v0, Lorg/apache/commons/beanutils/WrapDynaClass;->CLASSLOADER_CACHE:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static getDynaClassesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 147
    sget-object v0, Lorg/apache/commons/beanutils/WrapDynaClass;->CLASSLOADER_CACHE:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 148
    .local v0, "cache":Ljava/util/Map;
    return-object v0
.end method


# virtual methods
.method protected getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->beanClassRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    return-object v0
.end method

.method public getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 306
    if-eqz p1, :cond_0

    .line 310
    iget-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/DynaProperty;

    return-object v0

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->beanClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->descriptorsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyDescriptor;

    return-object v0
.end method

.method protected getPropertyUtilsBean()Lorg/apache/commons/beanutils/PropertyUtilsBean;
    .locals 1

    .line 446
    iget-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->propertyUtilsBean:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    return-object v0
.end method

.method protected introspect()V
    .locals 11

    .line 455
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/WrapDynaClass;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    .line 456
    .local v0, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 457
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/WrapDynaClass;->getPropertyUtilsBean()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 458
    .local v1, "regulars":[Ljava/beans/PropertyDescriptor;
    if-nez v1, :cond_0

    .line 459
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/beans/PropertyDescriptor;

    .line 462
    :cond_0
    nop

    .line 463
    invoke-static {v0}, Lorg/apache/commons/beanutils/PropertyUtils;->getMappedPropertyDescriptors(Ljava/lang/Class;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v2

    .line 464
    .local v2, "mappeds":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez v2, :cond_1

    .line 465
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 469
    :cond_1
    array-length v3, v1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Lorg/apache/commons/beanutils/DynaProperty;

    iput-object v3, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    .line 470
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 471
    iget-object v4, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->descriptorsMap:Ljava/util/HashMap;

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v4, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    new-instance v5, Lorg/apache/commons/beanutils/DynaProperty;

    aget-object v6, v1, v3

    .line 474
    invoke-virtual {v6}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v3

    .line 475
    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v4, v3

    .line 476
    iget-object v4, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->propertiesMap:Ljava/util/HashMap;

    iget-object v5, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    aget-object v6, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 479
    .end local v3    # "i":I
    :cond_2
    array-length v3, v1

    .line 480
    .local v3, "j":I
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 481
    .local v4, "names":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 482
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 483
    .local v5, "name":Ljava/lang/String;
    nop

    .line 484
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/beans/PropertyDescriptor;

    .line 485
    .local v6, "descriptor":Ljava/beans/PropertyDescriptor;
    iget-object v7, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    new-instance v8, Lorg/apache/commons/beanutils/DynaProperty;

    .line 486
    invoke-virtual {v6}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v9

    const-class v10, Ljava/util/Map;

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v8, v7, v3

    .line 488
    iget-object v7, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->propertiesMap:Ljava/util/HashMap;

    iget-object v8, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/beanutils/WrapDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    aget-object v9, v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    nop

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "descriptor":Ljava/beans/PropertyDescriptor;
    add-int/lit8 v3, v3, 0x1

    .line 491
    goto :goto_1

    .line 493
    :cond_3
    return-void
.end method

.method public newInstance()Lorg/apache/commons/beanutils/DynaBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 361
    new-instance v0, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/WrapDynaClass;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/WrapDynaBean;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
