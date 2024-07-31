.class public final Lcom/huawei/agconnect/core/impl/ServiceRepository;
.super Ljava/lang/Object;
.source "ServiceRepository.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceRepository"


# instance fields
.field private mInstantiateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/huawei/agconnect/core/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/agconnect/core/Service;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/agconnect/core/Service;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/agconnect/core/impl/ServiceRepository;->mServiceMap:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/agconnect/core/impl/ServiceRepository;->mInstantiateMap:Ljava/util/Map;

    .line 25
    if-nez p1, :cond_0

    .line 26
    return-void

    .line 29
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/agconnect/core/Service;

    .line 30
    .local v1, "service":Lcom/huawei/agconnect/core/Service;
    iget-object v2, p0, Lcom/huawei/agconnect/core/impl/ServiceRepository;->mServiceMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/huawei/agconnect/core/Service;->getInterface()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .end local v1    # "service":Lcom/huawei/agconnect/core/Service;
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method private instantiate(Lcom/huawei/agconnect/AGConnectInstance;Lcom/huawei/agconnect/core/Service;)Ljava/lang/Object;
    .locals 7
    .param p1, "agcInstance"    # Lcom/huawei/agconnect/AGConnectInstance;
    .param p2, "service"    # Lcom/huawei/agconnect/core/Service;

    .line 58
    invoke-virtual {p2}, Lcom/huawei/agconnect/core/Service;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return-object v1

    .line 65
    :cond_0
    const/4 v2, 0x2

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/huawei/agconnect/AGConnectInstance;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Lcom/huawei/agconnect/core/impl/ServiceRepository;->matchConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 67
    .local v3, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v3, :cond_1

    .line 68
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/huawei/agconnect/AGConnectInstance;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 70
    :cond_1
    new-array v2, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v5

    invoke-static {v0, v2}, Lcom/huawei/agconnect/core/impl/ServiceRepository;->matchConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 71
    .end local v3    # "cons":Ljava/lang/reflect/Constructor;
    .local v2, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v2, :cond_2

    .line 72
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/huawei/agconnect/AGConnectInstance;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 75
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 77
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instantiate service exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ServiceRepository"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private static varargs matchConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 10
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "paramClass"    # [Ljava/lang/Class;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 85
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v1, 0x0

    .line 86
    .local v1, "match":Z
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 87
    .local v5, "cons":Ljava/lang/reflect/Constructor;
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 88
    .local v6, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v6

    array-length v8, p1

    if-ne v7, v8, :cond_2

    .line 89
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, p1

    if-ge v7, v8, :cond_1

    .line 90
    aget-object v8, v6, v7

    aget-object v9, p1, v7

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    move v8, v3

    :goto_2
    move v1, v8

    .line 89
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 93
    .end local v7    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 94
    return-object v5

    .line 86
    .end local v5    # "cons":Ljava/lang/reflect/Constructor;
    .end local v6    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public getService(Lcom/huawei/agconnect/AGConnectInstance;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "agcInstance"    # Lcom/huawei/agconnect/AGConnectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/agconnect/AGConnectInstance;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 36
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/huawei/agconnect/core/impl/ServiceRepository;->mServiceMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/agconnect/core/Service;

    .line 37
    .local v0, "service":Lcom/huawei/agconnect/core/Service;
    if-nez v0, :cond_0

    .line 38
    const/4 v1, 0x0

    return-object v1

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/agconnect/core/Service;->isSingleton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/huawei/agconnect/core/impl/ServiceRepository;->mInstantiateMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 45
    move-object v2, v1

    .line 46
    .local v2, "ret":Ljava/lang/Object;, "TT;"
    return-object v2

    .line 50
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "ret":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/huawei/agconnect/core/impl/ServiceRepository;->instantiate(Lcom/huawei/agconnect/AGConnectInstance;Lcom/huawei/agconnect/core/Service;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, "ret":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/huawei/agconnect/core/Service;->isSingleton()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/huawei/agconnect/core/impl/ServiceRepository;->mInstantiateMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_2
    return-object v1
.end method
