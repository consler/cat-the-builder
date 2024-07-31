.class public Lorg/apache/commons/beanutils/MethodUtils;
.super Ljava/lang/Object;
.source "MethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;
    }
.end annotation


# static fields
.field private static CACHE_METHODS:Z

.field private static final EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;",
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static loggedAccessibleWarning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/commons/beanutils/MethodUtils;->loggedAccessibleWarning:Z

    .line 77
    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/commons/beanutils/MethodUtils;->CACHE_METHODS:Z

    .line 80
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;

    .line 82
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 105
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/beanutils/MethodUtils;->cache:Ljava/util/Map;

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .line 52
    sget-object v0, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;

    return-object v0
.end method

.method private static cacheMethod(Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;Ljava/lang/reflect/Method;)V
    .locals 2
    .param p0, "md"    # Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 1297
    sget-boolean v0, Lorg/apache/commons/beanutils/MethodUtils;->CACHE_METHODS:Z

    if-eqz v0, :cond_0

    .line 1298
    if-eqz p1, :cond_0

    .line 1299
    sget-object v0, Lorg/apache/commons/beanutils/MethodUtils;->cache:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    :cond_0
    return-void
.end method

.method public static declared-synchronized clearCache()I
    .locals 3

    const-class v0, Lorg/apache/commons/beanutils/MethodUtils;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lorg/apache/commons/beanutils/MethodUtils;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 131
    .local v1, "size":I
    sget-object v2, Lorg/apache/commons/beanutils/MethodUtils;->cache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit v0

    return v1

    .line 129
    .end local v1    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 705
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 706
    .local v0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, v0}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1
.end method

.method public static getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 728
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)V

    .line 730
    .local v0, "md":Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;
    invoke-static {v0}, Lorg/apache/commons/beanutils/MethodUtils;->getCachedMethod(Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 731
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 732
    return-object v1

    .line 735
    :cond_0
    nop

    .line 736
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    .line 737
    invoke-static {v0, v1}, Lorg/apache/commons/beanutils/MethodUtils;->cacheMethod(Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    return-object v1

    .line 739
    .end local v0    # "md":Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 777
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 778
    return-object v0

    .line 782
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 783
    return-object v0

    .line 786
    :cond_1
    const/4 v0, 0x1

    .line 787
    .local v0, "sameClass":Z
    if-nez p0, :cond_2

    .line 788
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 790
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 791
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 798
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 799
    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 800
    invoke-static {p1}, Lorg/apache/commons/beanutils/MethodUtils;->setMethodAccessible(Ljava/lang/reflect/Method;)V

    .line 802
    :cond_3
    return-object p1

    .line 805
    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, "methodName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 809
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    nop

    .line 810
    invoke-static {p0, v1, v2}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethodFromInterfaceNest(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 815
    if-nez p1, :cond_5

    .line 816
    invoke-static {p0, v1, v2}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethodFromSuperclass(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 821
    :cond_5
    return-object p1

    .line 792
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v2    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not assignable from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 755
    if-nez p0, :cond_0

    .line 756
    const/4 v0, 0x0

    return-object v0

    .line 759
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static getAccessibleMethodFromInterfaceNest(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 870
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 873
    .local v0, "method":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz p0, :cond_4

    .line 876
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 877
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 880
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 881
    goto :goto_3

    .line 886
    :cond_0
    :try_start_0
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 892
    goto :goto_2

    .line 888
    :catch_0
    move-exception v3

    .line 893
    :goto_2
    if-eqz v0, :cond_1

    .line 894
    return-object v0

    .line 898
    :cond_1
    aget-object v3, v1, v2

    .line 899
    invoke-static {v3, p1, p2}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethodFromInterfaceNest(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 902
    if-eqz v0, :cond_2

    .line 903
    return-object v0

    .line 877
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 873
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 911
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getAccessibleMethodFromSuperclass(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 839
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 840
    .local v0, "parentClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 841
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 844
    :catch_0
    move-exception v2

    .line 845
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    return-object v1

    .line 848
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 850
    :cond_1
    return-object v1
.end method

.method private static getCachedMethod(Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "md"    # Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;

    .line 1281
    sget-boolean v0, Lorg/apache/commons/beanutils/MethodUtils;->CACHE_METHODS:Z

    if-eqz v0, :cond_0

    .line 1282
    sget-object v0, Lorg/apache/commons/beanutils/MethodUtils;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 1283
    .local v0, "methodRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/reflect/Method;>;"
    if-eqz v0, :cond_0

    .line 1284
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    return-object v1

    .line 1287
    .end local v0    # "methodRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/reflect/Method;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 18
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 942
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-class v0, Lorg/apache/commons/beanutils/MethodUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v4

    .line 943
    .local v4, "log":Lorg/apache/commons/logging/Log;
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matching name="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " on "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 946
    :cond_0
    new-instance v0, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)V

    move-object v6, v0

    .line 952
    .local v6, "md":Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;
    :try_start_0
    invoke-static {v6}, Lorg/apache/commons/beanutils/MethodUtils;->getCachedMethod(Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 953
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    .line 954
    return-object v0

    .line 957
    :cond_1
    invoke-virtual/range {p0 .. p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v0, v7

    .line 958
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 959
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found straight match: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 960
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isPublic:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 963
    :cond_2
    invoke-static {v0}, Lorg/apache/commons/beanutils/MethodUtils;->setMethodAccessible(Ljava/lang/reflect/Method;)V

    .line 965
    invoke-static {v6, v0}, Lorg/apache/commons/beanutils/MethodUtils;->cacheMethod(Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    return-object v0

    .line 968
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 971
    array-length v0, v3

    .line 972
    .local v0, "paramSize":I
    const/4 v7, 0x0

    .line 973
    .local v7, "bestMatch":Ljava/lang/reflect/Method;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 974
    .local v8, "methods":[Ljava/lang/reflect/Method;
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    .line 975
    .local v9, "bestMatchCost":F
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 976
    .local v10, "myCost":F
    array-length v11, v8

    :goto_0
    if-ge v5, v11, :cond_d

    aget-object v12, v8, v5

    .line 977
    .local v12, "method2":Ljava/lang/reflect/Method;
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 979
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 980
    const-string v13, "Found matching name:"

    invoke-interface {v4, v13}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 981
    invoke-interface {v4, v12}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 985
    :cond_3
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    .line 986
    .local v13, "methodsParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v14, v13

    .line 987
    .local v14, "methodParamSize":I
    if-ne v14, v0, :cond_a

    .line 988
    const/4 v15, 0x1

    .line 989
    .local v15, "match":Z
    const/16 v16, 0x0

    move/from16 v17, v0

    move/from16 v0, v16

    .local v0, "n":I
    .local v17, "paramSize":I
    :goto_1
    if-ge v0, v14, :cond_7

    .line 990
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v8

    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .local v16, "methods":[Ljava/lang/reflect/Method;
    const-string v8, "Param="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v0

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Method="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v13, v0

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_2

    .line 990
    .end local v16    # "methods":[Ljava/lang/reflect/Method;
    .restart local v8    # "methods":[Ljava/lang/reflect/Method;
    :cond_4
    move-object/from16 v16, v8

    .line 994
    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .restart local v16    # "methods":[Ljava/lang/reflect/Method;
    :goto_2
    aget-object v2, v13, v0

    aget-object v8, v3, v0

    invoke-static {v2, v8}, Lorg/apache/commons/beanutils/MethodUtils;->isAssignmentCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 995
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v13, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not assignable from "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 999
    :cond_5
    const/4 v15, 0x0

    .line 1000
    goto :goto_3

    .line 989
    :cond_6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p1

    move-object/from16 v8, v16

    goto :goto_1

    .end local v16    # "methods":[Ljava/lang/reflect/Method;
    .restart local v8    # "methods":[Ljava/lang/reflect/Method;
    :cond_7
    move-object/from16 v16, v8

    .line 1004
    .end local v0    # "n":I
    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .restart local v16    # "methods":[Ljava/lang/reflect/Method;
    :goto_3
    if-eqz v15, :cond_c

    .line 1006
    invoke-static {v1, v12}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1007
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_9

    .line 1008
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " accessible version of "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1012
    :cond_8
    invoke-static {v0}, Lorg/apache/commons/beanutils/MethodUtils;->setMethodAccessible(Ljava/lang/reflect/Method;)V

    .line 1013
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/apache/commons/beanutils/MethodUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v10

    .line 1014
    cmpg-float v2, v10, v9

    if-gez v2, :cond_9

    .line 1015
    move-object v7, v0

    .line 1016
    move v9, v10

    .line 1020
    :cond_9
    const-string v2, "Couldn\'t find accessible method."

    invoke-interface {v4, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    goto :goto_4

    .line 987
    .end local v15    # "match":Z
    .end local v16    # "methods":[Ljava/lang/reflect/Method;
    .end local v17    # "paramSize":I
    .local v0, "paramSize":I
    .restart local v8    # "methods":[Ljava/lang/reflect/Method;
    :cond_a
    move/from16 v17, v0

    move-object/from16 v16, v8

    .end local v0    # "paramSize":I
    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .restart local v16    # "methods":[Ljava/lang/reflect/Method;
    .restart local v17    # "paramSize":I
    goto :goto_4

    .line 977
    .end local v13    # "methodsParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v14    # "methodParamSize":I
    .end local v16    # "methods":[Ljava/lang/reflect/Method;
    .end local v17    # "paramSize":I
    .restart local v0    # "paramSize":I
    .restart local v8    # "methods":[Ljava/lang/reflect/Method;
    :cond_b
    move/from16 v17, v0

    move-object/from16 v16, v8

    .line 976
    .end local v0    # "paramSize":I
    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .end local v12    # "method2":Ljava/lang/reflect/Method;
    .restart local v16    # "methods":[Ljava/lang/reflect/Method;
    .restart local v17    # "paramSize":I
    :cond_c
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p1

    move-object/from16 v8, v16

    move/from16 v0, v17

    goto/16 :goto_0

    .line 1025
    .end local v16    # "methods":[Ljava/lang/reflect/Method;
    .end local v17    # "paramSize":I
    .restart local v0    # "paramSize":I
    .restart local v8    # "methods":[Ljava/lang/reflect/Method;
    :cond_d
    move/from16 v17, v0

    move-object/from16 v16, v8

    .end local v0    # "paramSize":I
    .end local v8    # "methods":[Ljava/lang/reflect/Method;
    .restart local v16    # "methods":[Ljava/lang/reflect/Method;
    .restart local v17    # "paramSize":I
    if-eqz v7, :cond_e

    .line 1026
    invoke-static {v6, v7}, Lorg/apache/commons/beanutils/MethodUtils;->cacheMethod(Lorg/apache/commons/beanutils/MethodUtils$MethodDescriptor;Ljava/lang/reflect/Method;)V

    goto :goto_5

    .line 1029
    :cond_e
    const-string v0, "No match found."

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1032
    :goto_5
    return-object v7
.end method

.method private static getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    .line 1120
    .local p0, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1121
    .local v0, "cost":F
    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1122
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    if-eqz v1, :cond_0

    .line 1123
    invoke-static {p1}, Lorg/apache/commons/beanutils/MethodUtils;->getPrimitiveWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 1124
    .local v1, "destClassWrapperClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1125
    add-float/2addr v0, v2

    .line 1126
    goto :goto_1

    .line 1129
    .end local v1    # "destClassWrapperClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p0}, Lorg/apache/commons/beanutils/MethodUtils;->isAssignmentCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1134
    add-float/2addr v0, v2

    .line 1135
    goto :goto_1

    .line 1137
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 1138
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1145
    :cond_2
    :goto_1
    if-nez p0, :cond_3

    .line 1146
    const/high16 v1, 0x3fc00000    # 1.5f

    add-float/2addr v0, v1

    .line 1149
    :cond_3
    return v0
.end method

.method public static getPrimitiveType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1228
    .local p0, "wrapperType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1230
    :cond_0
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1232
    :cond_1
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1233
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1234
    :cond_2
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1235
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1236
    :cond_3
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1237
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1238
    :cond_4
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1239
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1240
    :cond_5
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1241
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1242
    :cond_6
    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1243
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 1245
    :cond_7
    const-class v0, Lorg/apache/commons/beanutils/MethodUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 1246
    .local v0, "log":Lorg/apache/commons/logging/Log;
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a known primitive wrapper class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1249
    :cond_8
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getPrimitiveWrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1197
    .local p0, "primitiveType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    const-class v0, Ljava/lang/Boolean;

    return-object v0

    .line 1199
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1200
    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 1201
    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1202
    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 1203
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1204
    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 1205
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1206
    const-class v0, Ljava/lang/Short;

    return-object v0

    .line 1207
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1208
    const-class v0, Ljava/lang/Byte;

    return-object v0

    .line 1209
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1210
    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 1211
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1212
    const-class v0, Ljava/lang/Character;

    return-object v0

    .line 1215
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    .line 1100
    .local p0, "srcArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "destArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1101
    .local v0, "totalCost":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1103
    aget-object v2, p0, v1

    .line 1104
    .local v2, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v3, p1, v1

    .line 1105
    .local v3, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, v3}, Lorg/apache/commons/beanutils/MethodUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v4

    add-float/2addr v0, v4

    .line 1101
    .end local v2    # "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1108
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 311
    invoke-static {p2}, Lorg/apache/commons/beanutils/MethodUtils;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 312
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {p0, p1, v0}, Lorg/apache/commons/beanutils/MethodUtils;->invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 344
    if-nez p2, :cond_0

    .line 345
    sget-object p2, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 347
    :cond_0
    array-length v0, p2

    .line 348
    .local v0, "arguments":I
    new-array v1, v0, [Ljava/lang/Class;

    .line 349
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 350
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    .end local v2    # "i":I
    :cond_1
    invoke-static {p0, p1, p2, v1}, Lorg/apache/commons/beanutils/MethodUtils;->invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 386
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 387
    sget-object p2, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 390
    :cond_0
    if-nez p3, :cond_1

    .line 391
    sget-object p3, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;

    .line 394
    :cond_1
    nop

    .line 395
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 394
    invoke-static {v0, p1, p3}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 398
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_2

    .line 402
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 399
    :cond_2
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "() on object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 635
    .local p0, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lorg/apache/commons/beanutils/MethodUtils;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 636
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {p0, p1, v0}, Lorg/apache/commons/beanutils/MethodUtils;->invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 668
    .local p0, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 669
    sget-object p2, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 671
    :cond_0
    array-length v0, p2

    .line 672
    .local v0, "arguments":I
    new-array v1, v0, [Ljava/lang/Class;

    .line 673
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 674
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 673
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    .end local v2    # "i":I
    :cond_1
    invoke-static {p0, p1, p2, v1}, Lorg/apache/commons/beanutils/MethodUtils;->invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 436
    .local p0, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 437
    sget-object p2, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 440
    :cond_0
    if-nez p3, :cond_1

    .line 441
    sget-object p3, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;

    .line 444
    :cond_1
    invoke-static {p0, p1, p3}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 448
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_2

    .line 452
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 449
    :cond_2
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "() on class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 172
    invoke-static {p2}, Lorg/apache/commons/beanutils/MethodUtils;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {p0, p1, v0}, Lorg/apache/commons/beanutils/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 214
    if-nez p2, :cond_0

    .line 215
    sget-object p2, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 217
    :cond_0
    array-length v0, p2

    .line 218
    .local v0, "arguments":I
    new-array v1, v0, [Ljava/lang/Class;

    .line 219
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 220
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "i":I
    :cond_1
    invoke-static {p0, p1, p2, v1}, Lorg/apache/commons/beanutils/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 263
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p3, :cond_0

    .line 264
    sget-object p3, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;

    .line 266
    :cond_0
    if-nez p2, :cond_1

    .line 267
    sget-object p2, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 270
    :cond_1
    nop

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 270
    invoke-static {v0, p1, p3}, Lorg/apache/commons/beanutils/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 274
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 275
    :cond_2
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "() on object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 493
    .local p0, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lorg/apache/commons/beanutils/MethodUtils;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 494
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {p0, p1, v0}, Lorg/apache/commons/beanutils/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 536
    .local p0, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 537
    sget-object p2, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 539
    :cond_0
    array-length v0, p2

    .line 540
    .local v0, "arguments":I
    new-array v1, v0, [Ljava/lang/Class;

    .line 541
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 542
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 541
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    .end local v2    # "i":I
    :cond_1
    invoke-static {p0, p1, p2, v1}, Lorg/apache/commons/beanutils/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 586
    .local p0, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p3, :cond_0

    .line 587
    sget-object p3, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;

    .line 589
    :cond_0
    if-nez p2, :cond_1

    .line 590
    sget-object p2, Lorg/apache/commons/beanutils/MethodUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 593
    :cond_1
    invoke-static {p0, p1, p3}, Lorg/apache/commons/beanutils/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 597
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_2

    .line 601
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 598
    :cond_2
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "() on class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final isAssignmentCompatible(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1172
    .local p0, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "parameterization":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    const/4 v0, 0x1

    return v0

    .line 1176
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1179
    invoke-static {p0}, Lorg/apache/commons/beanutils/MethodUtils;->getPrimitiveWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1180
    .local v0, "parameterWrapperClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 1181
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1185
    .end local v0    # "parameterWrapperClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized setCacheMethods(Z)V
    .locals 1
    .param p0, "cacheMethods"    # Z

    const-class v0, Lorg/apache/commons/beanutils/MethodUtils;

    monitor-enter v0

    .line 118
    :try_start_0
    sput-boolean p0, Lorg/apache/commons/beanutils/MethodUtils;->CACHE_METHODS:Z

    .line 119
    if-nez p0, :cond_0

    .line 120
    invoke-static {}, Lorg/apache/commons/beanutils/MethodUtils;->clearCache()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit v0

    return-void

    .line 117
    .end local p0    # "cacheMethods":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static setMethodAccessible(Ljava/lang/reflect/Method;)V
    .locals 9
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 1057
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1058
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :cond_0
    goto :goto_1

    .line 1061
    :catch_0
    move-exception v1

    .line 1063
    .local v1, "se":Ljava/lang/SecurityException;
    const-class v2, Lorg/apache/commons/beanutils/MethodUtils;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 1064
    .local v2, "log":Lorg/apache/commons/logging/Log;
    sget-boolean v3, Lorg/apache/commons/beanutils/MethodUtils;->loggedAccessibleWarning:Z

    if-nez v3, :cond_4

    .line 1065
    const/4 v3, 0x0

    .line 1067
    .local v3, "vulnerableJVM":Z
    :try_start_1
    const-string v4, "java.specification.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1068
    .local v4, "specVersion":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_2

    .line 1069
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-eq v7, v8, :cond_1

    .line 1070
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v6, :cond_1

    .line 1071
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x32

    if-eq v6, v7, :cond_1

    .line 1072
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v6, 0x33

    if-ne v5, v6, :cond_2

    .line 1074
    :cond_1
    const/4 v3, 0x1

    .line 1079
    .end local v4    # "specVersion":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1076
    :catch_1
    move-exception v4

    .line 1078
    .local v4, "e":Ljava/lang/SecurityException;
    const/4 v3, 0x1

    .line 1080
    .end local v4    # "e":Ljava/lang/SecurityException;
    :goto_0
    if-eqz v3, :cond_3

    .line 1081
    const-string v4, "Current Security Manager restricts use of workarounds for reflection bugs  in pre-1.4 JVMs."

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1085
    :cond_3
    sput-boolean v0, Lorg/apache/commons/beanutils/MethodUtils;->loggedAccessibleWarning:Z

    .line 1087
    .end local v3    # "vulnerableJVM":Z
    :cond_4
    const-string v0, "Cannot setAccessible on method. Therefore cannot use jvm access bug workaround."

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1089
    .end local v1    # "se":Ljava/lang/SecurityException;
    .end local v2    # "log":Lorg/apache/commons/logging/Log;
    :goto_1
    return-void
.end method

.method private static toArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "arg"    # Ljava/lang/Object;

    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "args":[Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 683
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    move-object v0, v1

    .line 685
    :cond_0
    return-object v0
.end method

.method public static toNonPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1260
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1261
    invoke-static {p0}, Lorg/apache/commons/beanutils/MethodUtils;->getPrimitiveWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1263
    .local v0, "primitiveClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 1264
    return-object v0

    .line 1266
    :cond_0
    return-object p0

    .line 1269
    .end local v0    # "primitiveClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-object p0
.end method
