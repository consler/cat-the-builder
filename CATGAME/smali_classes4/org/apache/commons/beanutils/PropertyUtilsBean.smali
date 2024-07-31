.class public Lorg/apache/commons/beanutils/PropertyUtilsBean;
.super Ljava/lang/Object;
.source "PropertyUtilsBean.java"


# static fields
.field private static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;


# instance fields
.field private descriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/beanutils/WeakFastHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/BeanIntrospectionData;",
            ">;"
        }
    .end annotation
.end field

.field private final introspectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/beanutils/BeanIntrospector;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field private mappedDescriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/beanutils/WeakFastHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/collections/FastHashMap;",
            ">;"
        }
    .end annotation
.end field

.field private resolver:Lorg/apache/commons/beanutils/expression/Resolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lorg/apache/commons/beanutils/expression/DefaultResolver;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/expression/DefaultResolver;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->descriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    .line 117
    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->mappedDescriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    .line 123
    const-class v0, Lorg/apache/commons/beanutils/PropertyUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    .line 132
    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->descriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->setFast(Z)V

    .line 134
    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->mappedDescriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    .line 135
    invoke-virtual {v0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->setFast(Z)V

    .line 136
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resetBeanIntrospectors()V

    .line 138
    return-void
.end method

.method private fetchIntrospectionData(Ljava/lang/Class;)Lorg/apache/commons/beanutils/BeanIntrospectionData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/BeanIntrospectionData;"
        }
    .end annotation

    .line 2242
    .local p1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;-><init>(Ljava/lang/Class;)V

    .line 2244
    .local v0, "ictx":Lorg/apache/commons/beanutils/DefaultIntrospectionContext;
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/beanutils/BeanIntrospector;

    .line 2246
    .local v2, "bi":Lorg/apache/commons/beanutils/BeanIntrospector;
    :try_start_0
    invoke-interface {v2, v0}, Lorg/apache/commons/beanutils/BeanIntrospector;->introspect(Lorg/apache/commons/beanutils/IntrospectionContext;)V
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2249
    goto :goto_1

    .line 2247
    :catch_0
    move-exception v3

    .line 2248
    .local v3, "iex":Ljava/beans/IntrospectionException;
    iget-object v4, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Exception during introspection"

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2250
    .end local v2    # "bi":Lorg/apache/commons/beanutils/BeanIntrospector;
    .end local v3    # "iex":Ljava/beans/IntrospectionException;
    :goto_1
    goto :goto_0

    .line 2252
    :cond_0
    new-instance v1, Lorg/apache/commons/beanutils/BeanIntrospectionData;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/BeanIntrospectionData;-><init>([Ljava/beans/PropertyDescriptor;)V

    return-object v1
.end method

.method protected static getInstance()Lorg/apache/commons/beanutils/PropertyUtilsBean;
    .locals 1

    .line 107
    invoke-static {}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getInstance()Lorg/apache/commons/beanutils/BeanUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    return-object v0
.end method

.method private getIntrospectionData(Ljava/lang/Class;)Lorg/apache/commons/beanutils/BeanIntrospectionData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/BeanIntrospectionData;"
        }
    .end annotation

    .line 2220
    .local p1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 2225
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->descriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/BeanIntrospectionData;

    .line 2226
    .local v0, "data":Lorg/apache/commons/beanutils/BeanIntrospectionData;
    if-nez v0, :cond_0

    .line 2227
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->fetchIntrospectionData(Ljava/lang/Class;)Lorg/apache/commons/beanutils/BeanIntrospectionData;

    move-result-object v0

    .line 2228
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->descriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v1, p1, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    :cond_0
    return-object v0

    .line 2221
    .end local v0    # "data":Lorg/apache/commons/beanutils/BeanIntrospectionData;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean class specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 2121
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "<null>"

    const-string v4, "Method invocation failed"

    const-string v5, "\""

    const-string v6, "\" but expected signature \""

    const-string v7, " - had objects of type \""

    const-string v8, "\' - "

    const-string v9, " on bean class \'"

    const-string v10, "."

    const-string v11, "Cannot invoke "

    const-string v12, ", "

    if-eqz p2, :cond_c

    .line 2128
    :try_start_0
    invoke-virtual/range {p1 .. p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2169
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 2170
    .local v0, "cause":Ljava/lang/IllegalArgumentException;
    const-string v13, ""

    .line 2171
    .local v13, "valueString":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2172
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v15, v2

    if-ge v14, v15, :cond_2

    .line 2173
    if-lez v14, :cond_0

    .line 2174
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2176
    :cond_0
    aget-object v15, v2, v14

    if-nez v15, :cond_1

    .line 2177
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 2179
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v16, v2, v14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v17, v13

    .end local v13    # "valueString":Ljava/lang/String;
    .local v17, "valueString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2172
    .end local v17    # "valueString":Ljava/lang/String;
    .restart local v13    # "valueString":Ljava/lang/String;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2183
    .end local v14    # "i":I
    :cond_2
    const-string v3, ""

    .line 2184
    .local v3, "expectedString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    .line 2185
    .local v14, "parTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v14, :cond_4

    .line 2186
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    array-length v2, v14

    if-ge v15, v2, :cond_4

    .line 2187
    if-lez v15, :cond_3

    .line 2188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2190
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v16, v14, v15

    move-object/from16 v17, v3

    .end local v3    # "expectedString":Ljava/lang/String;
    .local v17, "expectedString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2186
    .end local v17    # "expectedString":Ljava/lang/String;
    .restart local v3    # "expectedString":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p3

    goto :goto_2

    .line 2193
    .end local v15    # "i":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2194
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2202
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v2, v0}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2203
    iget-object v5, v1, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5, v4, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2205
    :cond_5
    throw v2

    .line 2130
    .end local v0    # "cause":Ljava/lang/IllegalArgumentException;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "expectedString":Ljava/lang/String;
    .end local v13    # "valueString":Ljava/lang/String;
    .end local v14    # "parTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2133
    .local v0, "cause":Ljava/lang/NullPointerException;
    const-string v2, ""

    .line 2134
    .local v2, "valueString":Ljava/lang/String;
    move-object/from16 v13, p3

    if-eqz v13, :cond_8

    .line 2135
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    array-length v15, v13

    if-ge v14, v15, :cond_8

    .line 2136
    if-lez v14, :cond_6

    .line 2137
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2139
    :cond_6
    aget-object v15, v13, v14

    if-nez v15, :cond_7

    .line 2140
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 2142
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v16, v13, v14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v17, v2

    .end local v2    # "valueString":Ljava/lang/String;
    .local v17, "valueString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2135
    .end local v17    # "valueString":Ljava/lang/String;
    .restart local v2    # "valueString":Ljava/lang/String;
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 2146
    .end local v14    # "i":I
    :cond_8
    const-string v3, ""

    .line 2147
    .restart local v3    # "expectedString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    .line 2148
    .local v14, "parTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v14, :cond_a

    .line 2149
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_5
    array-length v13, v14

    if-ge v15, v13, :cond_a

    .line 2150
    if-lez v15, :cond_9

    .line 2151
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2153
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v16, v14, v15

    move-object/from16 v17, v3

    .end local v3    # "expectedString":Ljava/lang/String;
    .local v17, "expectedString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2149
    .end local v17    # "expectedString":Ljava/lang/String;
    .restart local v3    # "expectedString":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, p3

    goto :goto_5

    .line 2156
    .end local v15    # "i":I
    :cond_a
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v5, v12

    .line 2165
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v5, v0}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2166
    iget-object v6, v1, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6, v4, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2168
    :cond_b
    throw v5

    .line 2122
    .end local v0    # "cause":Ljava/lang/NullPointerException;
    .end local v2    # "valueString":Ljava/lang/String;
    .end local v3    # "expectedString":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v14    # "parTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "No bean specified - this should have been checked before reaching this method"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toObjectList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2267
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 2268
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    return-object v0
.end method

.method private static toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2283
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 2284
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0
.end method


# virtual methods
.method public addBeanIntrospector(Lorg/apache/commons/beanutils/BeanIntrospector;)V
    .locals 2
    .param p1, "introspector"    # Lorg/apache/commons/beanutils/BeanIntrospector;

    .line 204
    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-void

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BeanIntrospector must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearDescriptors()V
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->descriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->clear()V

    .line 231
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->mappedDescriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->clear()V

    .line 232
    invoke-static {}, Ljava/beans/Introspector;->flushCaches()V

    .line 234
    return-void
.end method

.method public copyProperties(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p1, "dest"    # Ljava/lang/Object;
    .param p2, "orig"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 272
    if-eqz p1, :cond_c

    .line 276
    if-eqz p2, :cond_b

    .line 280
    instance-of v0, p2, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v1, 0x0

    const-string v2, "\'"

    const-string v3, "\' on class \'"

    const-string v4, "Error writing to \'"

    if-eqz v0, :cond_3

    .line 281
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    .line 282
    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 283
    .local v0, "origDescriptors":[Lorg/apache/commons/beanutils/DynaProperty;
    array-length v5, v0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v6, v0, v1

    .line 284
    .local v6, "origDescriptor":Lorg/apache/commons/beanutils/DynaProperty;
    invoke-virtual {v6}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v7

    .line 285
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p0, p2, v7}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isReadable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, p1, v7}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 287
    :try_start_0
    move-object v8, p2

    check-cast v8, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v8, v7}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 288
    .local v8, "value":Ljava/lang/Object;
    instance-of v9, p1, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v9, :cond_0

    .line 289
    move-object v9, p1

    check-cast v9, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v9, v7, v8}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {p0, p1, v7, v8}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v8    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 293
    :catch_0
    move-exception v8

    .line 294
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    iget-object v9, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 295
    iget-object v9, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 283
    .end local v6    # "origDescriptor":Lorg/apache/commons/beanutils/DynaProperty;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "origDescriptors":[Lorg/apache/commons/beanutils/DynaProperty;
    :cond_2
    goto/16 :goto_9

    :cond_3
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 301
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 302
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 304
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 305
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 307
    :try_start_1
    instance-of v6, p1, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v6, :cond_4

    .line 308
    move-object v6, p1

    check-cast v6, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 310
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p1, v5, v6}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    :goto_4
    goto :goto_5

    .line 312
    :catch_1
    move-exception v6

    .line 313
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    iget-object v7, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 314
    iget-object v7, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 318
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_5
    :goto_5
    goto :goto_3

    .line 319
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_6
    goto :goto_9

    .line 320
    :cond_7
    nop

    .line 321
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptors(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .line 322
    .local v0, "origDescriptors":[Ljava/beans/PropertyDescriptor;
    array-length v5, v0

    :goto_6
    if-ge v1, v5, :cond_a

    aget-object v6, v0, v1

    .line 323
    .local v6, "origDescriptor":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v6}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v7

    .line 324
    .restart local v7    # "name":Ljava/lang/String;
    invoke-virtual {p0, p2, v7}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isReadable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0, p1, v7}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 326
    :try_start_2
    invoke-virtual {p0, p2, v7}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 327
    .local v8, "value":Ljava/lang/Object;
    instance-of v9, p1, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v9, :cond_8

    .line 328
    move-object v9, p1

    check-cast v9, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v9, v7, v8}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 330
    :cond_8
    invoke-virtual {p0, p1, v7, v8}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 336
    .end local v8    # "value":Ljava/lang/Object;
    :goto_7
    goto :goto_8

    .line 332
    :catch_2
    move-exception v8

    .line 333
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    iget-object v9, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 334
    iget-object v9, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 322
    .end local v6    # "origDescriptor":Ljava/beans/PropertyDescriptor;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :cond_9
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 341
    .end local v0    # "origDescriptors":[Ljava/beans/PropertyDescriptor;
    :cond_a
    :goto_9
    return-void

    .line 277
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No origin bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No destination bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describe(Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .param p1, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 367
    if-eqz p1, :cond_4

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 371
    .local v0, "description":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 372
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    .line 373
    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    .line 374
    .local v1, "descriptors":[Lorg/apache/commons/beanutils/DynaProperty;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 375
    .local v4, "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v5

    .line 376
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .end local v4    # "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    .end local v5    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "descriptors":[Lorg/apache/commons/beanutils/DynaProperty;
    :cond_0
    goto :goto_2

    .line 379
    :cond_1
    nop

    .line 380
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptors(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 381
    .local v1, "descriptors":[Ljava/beans/PropertyDescriptor;
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 382
    .local v4, "descriptor":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 383
    .restart local v5    # "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 384
    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .end local v4    # "descriptor":Ljava/beans/PropertyDescriptor;
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 388
    .end local v1    # "descriptors":[Ljava/beans/PropertyDescriptor;
    :cond_3
    :goto_2
    return-object v0

    .line 368
    .end local v0    # "description":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 421
    const-string v0, "\' on bean class \'"

    const-string v1, "Invalid indexed property \'"

    if-eqz p1, :cond_2

    .line 424
    const-string v2, "\'"

    if-eqz p2, :cond_1

    .line 430
    const/4 v3, -0x1

    .line 432
    .local v3, "index":I
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v4, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 437
    nop

    .line 438
    if-ltz v3, :cond_0

    .line 444
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 447
    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 439
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 433
    :catch_0
    move-exception v2

    .line 434
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 425
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 8
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 479
    if-eqz p1, :cond_c

    .line 482
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 483
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 485
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 486
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 489
    :cond_2
    const-string v0, "\'"

    if-eqz p2, :cond_b

    .line 495
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const-string v2, "\' on bean class \'"

    const-string v3, "Unknown property \'"

    if-eqz v1, :cond_4

    .line 496
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    .line 497
    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    .line 498
    .local v1, "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    if-eqz v1, :cond_3

    .line 502
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0, p2, p3}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 499
    :cond_3
    new-instance v4, Ljava/lang/NoSuchMethodException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 506
    .end local v1    # "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    :cond_4
    nop

    .line 507
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 508
    .local v1, "descriptor":Ljava/beans/PropertyDescriptor;
    if-eqz v1, :cond_a

    .line 514
    instance-of v2, v1, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v2, :cond_6

    .line 515
    move-object v2, v1

    check-cast v2, Ljava/beans/IndexedPropertyDescriptor;

    .line 516
    invoke-virtual {v2}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 517
    .local v2, "readMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 518
    if-eqz v2, :cond_6

    .line 519
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 520
    .local v0, "subscript":[Ljava/lang/Object;
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v3

    .line 522
    :try_start_0
    invoke-direct {p0, v2, p1, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 523
    :catch_0
    move-exception v3

    .line 524
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v4, :cond_5

    .line 526
    nop

    .line 527
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/lang/IndexOutOfBoundsException;

    throw v4

    .line 529
    :cond_5
    throw v3

    .line 536
    .end local v0    # "subscript":[Ljava/lang/Object;
    .end local v2    # "readMethod":Ljava/lang/reflect/Method;
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 537
    .restart local v2    # "readMethod":Ljava/lang/reflect/Method;
    const-string v3, "Property \'"

    if-eqz v2, :cond_9

    .line 543
    sget-object v4, Lorg/apache/commons/beanutils/PropertyUtilsBean;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-direct {p0, v2, p1, v4}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 544
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_8

    .line 545
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_7

    .line 550
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 546
    :cond_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is not indexed on bean class \'"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 555
    :cond_8
    :try_start_1
    invoke-static {v4, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 556
    :catch_1
    move-exception v3

    .line 557
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for property \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 538
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_9
    new-instance v4, Ljava/lang/NoSuchMethodException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' has no getter method on bean class \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 509
    .end local v2    # "readMethod":Ljava/lang/reflect/Method;
    :cond_a
    new-instance v4, Ljava/lang/NoSuchMethodException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 490
    .end local v1    # "descriptor":Ljava/beans/PropertyDescriptor;
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 589
    const-string v0, "\' on bean class \'"

    const-string v1, "Invalid mapped property \'"

    if-eqz p1, :cond_2

    .line 592
    const-string v2, "\'"

    if-eqz p2, :cond_1

    .line 598
    const/4 v3, 0x0

    .line 600
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v4, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 605
    nop

    .line 606
    if-eqz v3, :cond_0

    .line 612
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 615
    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 607
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 601
    :catch_0
    move-exception v2

    .line 602
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 593
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 641
    if-eqz p1, :cond_9

    .line 644
    const-string v0, "\'"

    if-eqz p2, :cond_8

    .line 648
    if-eqz p3, :cond_7

    .line 654
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const-string v2, "\'+ on bean class \'"

    const-string v3, "Unknown property \'"

    if-eqz v1, :cond_1

    .line 655
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    .line 656
    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    .line 657
    .local v1, "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    if-eqz v1, :cond_0

    .line 661
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0, p2, p3}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 658
    :cond_0
    new-instance v4, Ljava/lang/NoSuchMethodException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 664
    .end local v1    # "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    :cond_1
    const/4 v1, 0x0

    .line 667
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v4

    .line 668
    .local v4, "descriptor":Ljava/beans/PropertyDescriptor;
    if-eqz v4, :cond_6

    .line 673
    instance-of v2, v4, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    const-string v3, "\' has no mapped getter method on bean class \'"

    const-string v5, "Property \'"

    if-eqz v2, :cond_3

    .line 675
    move-object v2, v4

    check-cast v2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    .line 676
    invoke-virtual {v2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 677
    .local v2, "readMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 678
    if-eqz v2, :cond_2

    .line 679
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 680
    .local v0, "keyArray":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p3, v0, v3

    .line 681
    invoke-direct {p0, v2, p1, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 682
    .end local v1    # "result":Ljava/lang/Object;
    .local v0, "result":Ljava/lang/Object;
    nop

    .line 687
    .end local v2    # "readMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 683
    .end local v0    # "result":Ljava/lang/Object;
    .restart local v1    # "result":Ljava/lang/Object;
    .restart local v2    # "readMethod":Ljava/lang/reflect/Method;
    :cond_2
    new-instance v6, Ljava/lang/NoSuchMethodException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 689
    .end local v2    # "readMethod":Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 690
    .restart local v2    # "readMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_5

    .line 691
    sget-object v0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-direct {p0, v2, p1, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 693
    .local v0, "invokeResult":Ljava/lang/Object;
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 694
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 696
    .end local v0    # "invokeResult":Ljava/lang/Object;
    :cond_4
    move-object v0, v1

    .line 702
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "readMethod":Ljava/lang/reflect/Method;
    .local v0, "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 697
    .end local v0    # "result":Ljava/lang/Object;
    .restart local v1    # "result":Ljava/lang/Object;
    .restart local v2    # "readMethod":Ljava/lang/reflect/Method;
    :cond_5
    new-instance v6, Ljava/lang/NoSuchMethodException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 669
    .end local v2    # "readMethod":Ljava/lang/reflect/Method;
    :cond_6
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 649
    .end local v1    # "result":Ljava/lang/Object;
    .end local v4    # "descriptor":Ljava/beans/PropertyDescriptor;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No key specified for property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' on bean class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 642
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMappedPropertyDescriptors(Ljava/lang/Class;)Lorg/apache/commons/collections/FastHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/collections/FastHashMap;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 719
    .local p1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 720
    const/4 v0, 0x0

    return-object v0

    .line 724
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->mappedDescriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/FastHashMap;

    return-object v0
.end method

.method public getMappedPropertyDescriptors(Ljava/lang/Object;)Lorg/apache/commons/collections/FastHashMap;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 741
    if-nez p1, :cond_0

    .line 742
    const/4 v0, 0x0

    return-object v0

    .line 744
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedPropertyDescriptors(Ljava/lang/Class;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 772
    if-eqz p1, :cond_9

    .line 775
    const-string v0, "\'"

    if-eqz p2, :cond_8

    .line 781
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 782
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "next":Ljava/lang/String;
    const/4 v2, 0x0

    .line 784
    .local v2, "nestedBean":Ljava/lang/Object;
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 785
    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    invoke-virtual {p0, v3, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyOfMapBean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 786
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, v1}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 787
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 788
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, v1}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 789
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 791
    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 793
    :goto_1
    if-eqz v2, :cond_3

    .line 798
    move-object p1, v2

    .line 799
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 800
    .end local v1    # "next":Ljava/lang/String;
    .end local v2    # "nestedBean":Ljava/lang/Object;
    goto :goto_0

    .line 794
    .restart local v1    # "next":Ljava/lang/String;
    .restart local v2    # "nestedBean":Ljava/lang/Object;
    :cond_3
    new-instance v3, Lorg/apache/commons/beanutils/NestedNullException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null property value for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' on bean class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/beanutils/NestedNullException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 802
    .end local v1    # "next":Ljava/lang/String;
    .end local v2    # "nestedBean":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 803
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyOfMapBean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 804
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 805
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 806
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 807
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 809
    :cond_7
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 811
    :goto_2
    return-object p1

    .line 776
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 773
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 885
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 925
    if-eqz p1, :cond_7

    .line 928
    const-string v0, "\'"

    if-eqz p2, :cond_6

    .line 934
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 936
    .local v1, "next":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 937
    .local v2, "nestedBean":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 942
    move-object p1, v2

    .line 943
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 944
    .end local v1    # "next":Ljava/lang/String;
    .end local v2    # "nestedBean":Ljava/lang/Object;
    goto :goto_0

    .line 938
    .restart local v1    # "next":Ljava/lang/String;
    .restart local v2    # "nestedBean":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lorg/apache/commons/beanutils/NestedNullException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null property value for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' on bean class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/beanutils/NestedNullException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 947
    .end local v1    # "next":Ljava/lang/String;
    .end local v2    # "nestedBean":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 951
    if-nez p2, :cond_2

    .line 952
    const/4 v0, 0x0

    return-object v0

    .line 955
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIntrospectionData(Ljava/lang/Class;)Lorg/apache/commons/beanutils/BeanIntrospectionData;

    move-result-object v0

    .line 956
    .local v0, "data":Lorg/apache/commons/beanutils/BeanIntrospectionData;
    invoke-virtual {v0, p2}, Lorg/apache/commons/beanutils/BeanIntrospectionData;->getDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 957
    .local v1, "result":Ljava/beans/PropertyDescriptor;
    if-eqz v1, :cond_3

    .line 958
    return-object v1

    .line 961
    :cond_3
    nop

    .line 962
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedPropertyDescriptors(Ljava/lang/Object;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v2

    .line 963
    .local v2, "mappedDescriptors":Lorg/apache/commons/collections/FastHashMap;
    if-nez v2, :cond_4

    .line 964
    new-instance v3, Lorg/apache/commons/collections/FastHashMap;

    invoke-direct {v3}, Lorg/apache/commons/collections/FastHashMap;-><init>()V

    move-object v2, v3

    .line 965
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    .line 966
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->mappedDescriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/apache/commons/beanutils/WeakFastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    :cond_4
    invoke-virtual {v2, p2}, Lorg/apache/commons/collections/FastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/beans/PropertyDescriptor;

    .line 969
    if-nez v1, :cond_5

    .line 972
    :try_start_0
    new-instance v3, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 977
    goto :goto_1

    .line 973
    :catch_0
    move-exception v3

    .line 978
    :goto_1
    if-eqz v1, :cond_5

    .line 979
    invoke-virtual {v2, p2, v1}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    :cond_5
    return-object v1

    .line 929
    .end local v0    # "data":Lorg/apache/commons/beanutils/BeanIntrospectionData;
    .end local v1    # "result":Ljava/beans/PropertyDescriptor;
    .end local v2    # "mappedDescriptors":Lorg/apache/commons/collections/FastHashMap;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 926
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPropertyDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/beans/PropertyDescriptor;"
        }
    .end annotation

    .line 1003
    .local p1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIntrospectionData(Ljava/lang/Class;)Lorg/apache/commons/beanutils/BeanIntrospectionData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/BeanIntrospectionData;->getDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDescriptors(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;

    .line 1021
    if-eqz p1, :cond_0

    .line 1024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    return-object v0

    .line 1022
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPropertyEditorClass(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1063
    if-eqz p1, :cond_2

    .line 1066
    if-eqz p2, :cond_1

    .line 1071
    nop

    .line 1072
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .line 1073
    .local v0, "descriptor":Ljava/beans/PropertyDescriptor;
    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyEditorClass()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 1076
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 1067
    .end local v0    # "descriptor":Ljava/beans/PropertyDescriptor;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No name specified for bean class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1064
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getPropertyOfMapBean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 843
    .local p1, "bean":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 846
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 850
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    .line 851
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 857
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 852
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Indexed or mapped properties are not supported on objects of type Map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPropertyType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1118
    if-eqz p1, :cond_a

    .line 1121
    const-string v0, "\'"

    if-eqz p2, :cond_9

    .line 1127
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1128
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1129
    .local v1, "next":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1130
    .local v2, "nestedBean":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1135
    move-object p1, v2

    .line 1136
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1137
    .end local v1    # "next":Ljava/lang/String;
    .end local v2    # "nestedBean":Ljava/lang/Object;
    goto :goto_0

    .line 1131
    .restart local v1    # "next":Ljava/lang/String;
    .restart local v2    # "nestedBean":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lorg/apache/commons/beanutils/NestedNullException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null property value for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' on bean class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/beanutils/NestedNullException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1140
    .end local v1    # "next":Ljava/lang/String;
    .end local v2    # "nestedBean":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1143
    instance-of v0, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1144
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    .line 1145
    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 1146
    .local v0, "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    if-nez v0, :cond_2

    .line 1147
    return-object v1

    .line 1149
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 1150
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_3

    .line 1151
    return-object v1

    .line 1152
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1153
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 1155
    :cond_4
    return-object v2

    .line 1159
    .end local v0    # "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    nop

    .line 1160
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .line 1161
    .local v0, "descriptor":Ljava/beans/PropertyDescriptor;
    if-nez v0, :cond_6

    .line 1162
    return-object v1

    .line 1163
    :cond_6
    instance-of v1, v0, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v1, :cond_7

    .line 1164
    move-object v1, v0

    check-cast v1, Ljava/beans/IndexedPropertyDescriptor;

    .line 1165
    invoke-virtual {v1}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedPropertyType()Ljava/lang/Class;

    move-result-object v1

    .line 1164
    return-object v1

    .line 1166
    :cond_7
    instance-of v1, v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    if-eqz v1, :cond_8

    .line 1167
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    .line 1168
    invoke-virtual {v1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedPropertyType()Ljava/lang/Class;

    move-result-object v1

    .line 1167
    return-object v1

    .line 1170
    :cond_8
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 1122
    .end local v0    # "descriptor":Ljava/beans/PropertyDescriptor;
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1119
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReadMethod(Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "descriptor"    # Ljava/beans/PropertyDescriptor;

    .line 1187
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;
    .locals 1
    .param p2, "descriptor"    # Ljava/beans/PropertyDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/beans/PropertyDescriptor;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1203
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getResolver()Lorg/apache/commons/beanutils/expression/Resolver;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    return-object v0
.end method

.method public getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1230
    if-eqz p1, :cond_8

    .line 1233
    const-string v0, "\'"

    if-eqz p2, :cond_7

    .line 1239
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\' on bean class \'"

    if-nez v1, :cond_6

    .line 1243
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1247
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1254
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const-string v2, "Unknown property \'"

    if-eqz v1, :cond_1

    .line 1255
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    .line 1256
    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    .line 1257
    .local v1, "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    if-eqz v1, :cond_0

    .line 1262
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1258
    :cond_0
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' on dynaclass \'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/beanutils/DynaBean;

    .line 1260
    invoke-interface {v2}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1266
    .end local v1    # "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    :cond_1
    nop

    .line 1267
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 1268
    .local v1, "descriptor":Ljava/beans/PropertyDescriptor;
    if-eqz v1, :cond_3

    .line 1272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1273
    .local v2, "readMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 1279
    sget-object v0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-direct {p0, v2, p1, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1280
    .local v0, "value":Ljava/lang/Object;
    return-object v0

    .line 1274
    .end local v0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' has no getter method in class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1269
    .end local v2    # "readMethod":Ljava/lang/reflect/Method;
    :cond_3
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' on class \'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1248
    .end local v1    # "descriptor":Ljava/beans/PropertyDescriptor;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mapped property names are not allowed: Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1244
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Indexed property names are not allowed: Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1240
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nested property names are not allowed: Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1234
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1231
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWriteMethod(Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "descriptor"    # Ljava/beans/PropertyDescriptor;

    .line 1301
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getWriteMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;
    .locals 2
    .param p2, "descriptor"    # Ljava/beans/PropertyDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/beans/PropertyDescriptor;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1318
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIntrospectionData(Ljava/lang/Class;)Lorg/apache/commons/beanutils/BeanIntrospectionData;

    move-result-object v0

    .line 1319
    .local v0, "data":Lorg/apache/commons/beanutils/BeanIntrospectionData;
    nop

    .line 1320
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/BeanIntrospectionData;->getWriteMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1319
    invoke-static {p1, v1}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1
.end method

.method public isReadable(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .line 1342
    if-eqz p1, :cond_b

    .line 1345
    const-string v0, "\'"

    if-eqz p2, :cond_a

    .line 1351
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1352
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1353
    .local v1, "next":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1355
    .local v3, "nestedBean":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    .end local v3    # "nestedBean":Ljava/lang/Object;
    .local v2, "nestedBean":Ljava/lang/Object;
    nop

    .line 1363
    if-eqz v2, :cond_0

    .line 1368
    move-object p1, v2

    .line 1369
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1370
    .end local v1    # "next":Ljava/lang/String;
    .end local v2    # "nestedBean":Ljava/lang/Object;
    goto :goto_0

    .line 1364
    .restart local v1    # "next":Ljava/lang/String;
    .restart local v2    # "nestedBean":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lorg/apache/commons/beanutils/NestedNullException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null property value for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' on bean class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/beanutils/NestedNullException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1360
    .end local v2    # "nestedBean":Ljava/lang/Object;
    .restart local v3    # "nestedBean":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1361
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2

    .line 1358
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1359
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    return v2

    .line 1356
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 1357
    .local v0, "e":Ljava/lang/IllegalAccessException;
    return v2

    .line 1373
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "next":Ljava/lang/String;
    .end local v3    # "nestedBean":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1377
    instance-of v0, p1, Lorg/apache/commons/beanutils/WrapDynaBean;

    if-eqz v0, :cond_2

    .line 1378
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object p1

    .line 1382
    :cond_2
    instance-of v0, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1384
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    if-eqz v0, :cond_3

    move v2, v1

    :cond_3
    return v2

    .line 1387
    :cond_4
    nop

    .line 1388
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .line 1389
    .local v0, "desc":Ljava/beans/PropertyDescriptor;
    if-eqz v0, :cond_9

    .line 1390
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1391
    .local v3, "readMethod":Ljava/lang/reflect/Method;
    if-nez v3, :cond_7

    .line 1392
    instance-of v4, v0, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v4, :cond_5

    .line 1393
    move-object v4, v0

    check-cast v4, Ljava/beans/IndexedPropertyDescriptor;

    invoke-virtual {v4}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 1394
    :cond_5
    instance-of v4, v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    if-eqz v4, :cond_6

    .line 1395
    move-object v4, v0

    check-cast v4, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    invoke-virtual {v4}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v3, v4

    .line 1397
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 1399
    :cond_7
    if-eqz v3, :cond_8

    move v2, v1

    :cond_8
    return v2

    .line 1401
    .end local v3    # "readMethod":Ljava/lang/reflect/Method;
    :cond_9
    return v2

    .line 1407
    .end local v0    # "desc":Ljava/beans/PropertyDescriptor;
    :catch_3
    move-exception v0

    .line 1408
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2

    .line 1405
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    .line 1406
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    return v2

    .line 1403
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v0

    .line 1404
    .local v0, "e":Ljava/lang/IllegalAccessException;
    return v2

    .line 1346
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1343
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .line 1433
    if-eqz p1, :cond_b

    .line 1436
    const-string v0, "\'"

    if-eqz p2, :cond_a

    .line 1442
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1443
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1444
    .local v1, "next":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1446
    .local v3, "nestedBean":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    .end local v3    # "nestedBean":Ljava/lang/Object;
    .local v2, "nestedBean":Ljava/lang/Object;
    nop

    .line 1454
    if-eqz v2, :cond_0

    .line 1459
    move-object p1, v2

    .line 1460
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1461
    .end local v1    # "next":Ljava/lang/String;
    .end local v2    # "nestedBean":Ljava/lang/Object;
    goto :goto_0

    .line 1455
    .restart local v1    # "next":Ljava/lang/String;
    .restart local v2    # "nestedBean":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lorg/apache/commons/beanutils/NestedNullException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null property value for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' on bean class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/beanutils/NestedNullException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1451
    .end local v2    # "nestedBean":Ljava/lang/Object;
    .restart local v3    # "nestedBean":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1452
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2

    .line 1449
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1450
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    return v2

    .line 1447
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 1448
    .local v0, "e":Ljava/lang/IllegalAccessException;
    return v2

    .line 1464
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "next":Ljava/lang/String;
    .end local v3    # "nestedBean":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1468
    instance-of v0, p1, Lorg/apache/commons/beanutils/WrapDynaBean;

    if-eqz v0, :cond_2

    .line 1469
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object p1

    .line 1473
    :cond_2
    instance-of v0, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1475
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    if-eqz v0, :cond_3

    move v2, v1

    :cond_3
    return v2

    .line 1478
    :cond_4
    nop

    .line 1479
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .line 1480
    .local v0, "desc":Ljava/beans/PropertyDescriptor;
    if-eqz v0, :cond_9

    .line 1481
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getWriteMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1482
    .local v3, "writeMethod":Ljava/lang/reflect/Method;
    if-nez v3, :cond_7

    .line 1483
    instance-of v4, v0, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v4, :cond_5

    .line 1484
    move-object v4, v0

    check-cast v4, Ljava/beans/IndexedPropertyDescriptor;

    invoke-virtual {v4}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 1485
    :cond_5
    instance-of v4, v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    if-eqz v4, :cond_6

    .line 1486
    move-object v4, v0

    check-cast v4, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    invoke-virtual {v4}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v3, v4

    .line 1488
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 1490
    :cond_7
    if-eqz v3, :cond_8

    move v2, v1

    :cond_8
    return v2

    .line 1492
    .end local v3    # "writeMethod":Ljava/lang/reflect/Method;
    :cond_9
    return v2

    .line 1498
    .end local v0    # "desc":Ljava/beans/PropertyDescriptor;
    :catch_3
    move-exception v0

    .line 1499
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return v2

    .line 1496
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    .line 1497
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    return v2

    .line 1494
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v0

    .line 1495
    .local v0, "e":Ljava/lang/IllegalAccessException;
    return v2

    .line 1437
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1434
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeBeanIntrospector(Lorg/apache/commons/beanutils/BeanIntrospector;)Z
    .locals 1
    .param p1, "introspector"    # Lorg/apache/commons/beanutils/BeanIntrospector;

    .line 220
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final resetBeanIntrospectors()V
    .locals 2

    .line 189
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->INSTANCE:Lorg/apache/commons/beanutils/BeanIntrospector;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;->SUPPRESS_CLASS:Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1593
    if-eqz p1, :cond_e

    .line 1596
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1597
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1598
    invoke-static {p1, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1599
    return-void

    .line 1600
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1601
    invoke-static {p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->toObjectList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1602
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1603
    return-void

    .line 1606
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    const-string v0, "\'"

    if-eqz p2, :cond_d

    .line 1612
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const-string v2, "\' on bean class \'"

    const-string v3, "Unknown property \'"

    if-eqz v1, :cond_4

    .line 1613
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    .line 1614
    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    .line 1615
    .local v1, "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    if-eqz v1, :cond_3

    .line 1619
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0, p2, p3, p4}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1620
    return-void

    .line 1616
    :cond_3
    new-instance v4, Ljava/lang/NoSuchMethodException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1624
    .end local v1    # "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    :cond_4
    nop

    .line 1625
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 1626
    .local v1, "descriptor":Ljava/beans/PropertyDescriptor;
    if-eqz v1, :cond_c

    .line 1632
    instance-of v2, v1, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v2, :cond_8

    .line 1633
    move-object v2, v1

    check-cast v2, Ljava/beans/IndexedPropertyDescriptor;

    .line 1634
    invoke-virtual {v2}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1635
    .local v2, "writeMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1636
    if-eqz v2, :cond_8

    .line 1637
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1638
    .local v0, "subscript":[Ljava/lang/Object;
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v3

    .line 1639
    const/4 v3, 0x1

    aput-object p4, v0, v3

    .line 1641
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1642
    if-nez p4, :cond_5

    const-string v3, "<null>"

    goto :goto_0

    .line 1644
    :cond_5
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    nop

    .line 1645
    .local v3, "valueClassName":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSimpleProperty: Invoking method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1650
    .end local v3    # "valueClassName":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v2, p1, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1659
    nop

    .line 1660
    return-void

    .line 1651
    :catch_0
    move-exception v3

    .line 1652
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v4, :cond_7

    .line 1654
    nop

    .line 1655
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/lang/IndexOutOfBoundsException;

    throw v4

    .line 1657
    :cond_7
    throw v3

    .line 1665
    .end local v0    # "subscript":[Ljava/lang/Object;
    .end local v2    # "writeMethod":Ljava/lang/reflect/Method;
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1666
    .local v2, "readMethod":Ljava/lang/reflect/Method;
    const-string v3, "Property \'"

    if-eqz v2, :cond_b

    .line 1672
    sget-object v4, Lorg/apache/commons/beanutils/PropertyUtilsBean;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-direct {p0, v2, p1, v4}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1673
    .local v4, "array":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1674
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_9

    .line 1676
    invoke-static {v4}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->toObjectList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1677
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1678
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_1

    .line 1679
    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is not indexed on bean class \'"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1684
    :cond_a
    invoke-static {v4, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1687
    :goto_1
    return-void

    .line 1667
    .end local v4    # "array":Ljava/lang/Object;
    :cond_b
    new-instance v4, Ljava/lang/NoSuchMethodException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' has no getter method on bean class \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1627
    .end local v2    # "readMethod":Ljava/lang/reflect/Method;
    :cond_c
    new-instance v4, Ljava/lang/NoSuchMethodException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1607
    .end local v1    # "descriptor":Ljava/beans/PropertyDescriptor;
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1594
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1536
    const-string v0, "\' on bean class \'"

    const-string v1, "Invalid indexed property \'"

    if-eqz p1, :cond_2

    .line 1539
    const-string v2, "\'"

    if-eqz p2, :cond_1

    .line 1545
    const/4 v3, -0x1

    .line 1547
    .local v3, "index":I
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v4, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1551
    nop

    .line 1552
    if-ltz v3, :cond_0

    .line 1558
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1561
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    .line 1563
    return-void

    .line 1553
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1548
    :catch_0
    move-exception v4

    .line 1549
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1540
    .end local v3    # "index":I
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1537
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1714
    const-string v0, "\' on bean class \'"

    const-string v1, "Invalid mapped property \'"

    if-eqz p1, :cond_2

    .line 1717
    const-string v2, "\'"

    if-eqz p2, :cond_1

    .line 1723
    const/4 v3, 0x0

    .line 1725
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v4, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 1730
    nop

    .line 1731
    if-eqz v3, :cond_0

    .line 1738
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1741
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1743
    return-void

    .line 1732
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1726
    :catch_0
    move-exception v4

    .line 1727
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1718
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1715
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1767
    if-eqz p1, :cond_b

    .line 1770
    const-string v0, "\'"

    if-eqz p2, :cond_a

    .line 1774
    const-string v1, "\' on bean class \'"

    if-eqz p3, :cond_9

    .line 1780
    instance-of v2, p1, Lorg/apache/commons/beanutils/DynaBean;

    const-string v3, "Unknown property \'"

    if-eqz v2, :cond_1

    .line 1781
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/beanutils/DynaBean;

    .line 1782
    invoke-interface {v2}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v2

    .line 1783
    .local v2, "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    if-eqz v2, :cond_0

    .line 1787
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0, p2, p3, p4}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1788
    return-void

    .line 1784
    :cond_0
    new-instance v4, Ljava/lang/NoSuchMethodException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1792
    .end local v2    # "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    :cond_1
    nop

    .line 1793
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v2

    .line 1794
    .local v2, "descriptor":Ljava/beans/PropertyDescriptor;
    if-eqz v2, :cond_8

    .line 1799
    instance-of v1, v2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    const-string v3, "Property \'"

    if-eqz v1, :cond_5

    .line 1801
    move-object v1, v2

    check-cast v1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    .line 1803
    invoke-virtual {v1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1804
    .local v1, "mappedWriteMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1805
    if-eqz v1, :cond_4

    .line 1806
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1807
    .local v0, "params":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p3, v0, v3

    .line 1808
    const/4 v3, 0x1

    aput-object p4, v0, v3

    .line 1809
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1810
    if-nez p4, :cond_2

    const-string v3, "<null>"

    goto :goto_0

    .line 1811
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    nop

    .line 1812
    .local v3, "valueClassName":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSimpleProperty: Invoking method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1817
    .end local v3    # "valueClassName":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v1, p1, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    .end local v0    # "params":[Ljava/lang/Object;
    nop

    .line 1823
    .end local v1    # "mappedWriteMethod":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 1819
    .restart local v1    # "mappedWriteMethod":Ljava/lang/reflect/Method;
    :cond_4
    new-instance v4, Ljava/lang/NoSuchMethodException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' has no mapped setter methodon bean class \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1825
    .end local v1    # "mappedWriteMethod":Ljava/lang/reflect/Method;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1826
    .local v1, "readMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_7

    .line 1827
    sget-object v0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1829
    .local v0, "invokeResult":Ljava/lang/Object;
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_6

    .line 1830
    invoke-static {v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 1831
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    .end local v0    # "invokeResult":Ljava/lang/Object;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    nop

    .line 1840
    .end local v1    # "readMethod":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 1834
    .restart local v1    # "readMethod":Ljava/lang/reflect/Method;
    :cond_7
    new-instance v4, Ljava/lang/NoSuchMethodException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' has no mapped getter method on bean class \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1795
    .end local v1    # "readMethod":Ljava/lang/reflect/Method;
    :cond_8
    new-instance v4, Ljava/lang/NoSuchMethodException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1775
    .end local v2    # "descriptor":Ljava/beans/PropertyDescriptor;
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No key specified for property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1771
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1768
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1878
    if-eqz p1, :cond_9

    .line 1881
    const-string v0, "\'"

    if-eqz p2, :cond_8

    .line 1887
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1888
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1889
    .local v1, "next":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1890
    .local v2, "nestedBean":Ljava/lang/Object;
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1891
    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    invoke-virtual {p0, v3, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyOfMapBean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 1892
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, v1}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1893
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 1894
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, v1}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1895
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 1897
    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1899
    :goto_1
    if-eqz v2, :cond_3

    .line 1904
    move-object p1, v2

    .line 1905
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1906
    .end local v1    # "next":Ljava/lang/String;
    .end local v2    # "nestedBean":Ljava/lang/Object;
    goto :goto_0

    .line 1900
    .restart local v1    # "next":Ljava/lang/String;
    .restart local v2    # "nestedBean":Ljava/lang/Object;
    :cond_3
    new-instance v3, Lorg/apache/commons/beanutils/NestedNullException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null property value for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' on bean class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1902
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/beanutils/NestedNullException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1908
    .end local v1    # "next":Ljava/lang/String;
    .end local v2    # "nestedBean":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 1909
    invoke-static {p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setPropertyOfMapBean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1910
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1911
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1912
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1913
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1915
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1918
    :goto_2
    return-void

    .line 1882
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1879
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 2022
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2024
    return-void
.end method

.method protected setPropertyOfMapBean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1980
    .local p1, "bean":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1981
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1982
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1983
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1987
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    .line 1988
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1994
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    return-void

    .line 1989
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Indexed or mapped properties are not supported on objects of type Map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setResolver(Lorg/apache/commons/beanutils/expression/Resolver;)V
    .locals 1
    .param p1, "resolver"    # Lorg/apache/commons/beanutils/expression/Resolver;

    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Lorg/apache/commons/beanutils/expression/DefaultResolver;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/expression/DefaultResolver;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    goto :goto_0

    .line 178
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    .line 180
    :goto_0
    return-void
.end method

.method public setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 2051
    if-eqz p1, :cond_a

    .line 2054
    const-string v0, "\'"

    if-eqz p2, :cond_9

    .line 2060
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\' on bean class \'"

    if-nez v1, :cond_8

    .line 2064
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2068
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2075
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const-string v2, "Unknown property \'"

    if-eqz v1, :cond_1

    .line 2076
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    .line 2077
    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    .line 2078
    .local v1, "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    if-eqz v1, :cond_0

    .line 2083
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0, p2, p3}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2084
    return-void

    .line 2079
    :cond_0
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' on dynaclass \'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/beanutils/DynaBean;

    .line 2081
    invoke-interface {v2}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2088
    .end local v1    # "descriptor":Lorg/apache/commons/beanutils/DynaProperty;
    :cond_1
    nop

    .line 2089
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 2090
    .local v1, "descriptor":Ljava/beans/PropertyDescriptor;
    if-eqz v1, :cond_5

    .line 2094
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getWriteMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2095
    .local v2, "writeMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_4

    .line 2101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2102
    .local v0, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p3, v0, v3

    .line 2103
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2104
    if-nez p3, :cond_2

    const-string v3, "<null>"

    goto :goto_0

    .line 2105
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    nop

    .line 2106
    .local v3, "valueClassName":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSimpleProperty: Invoking method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 2109
    .end local v3    # "valueClassName":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v2, p1, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    return-void

    .line 2096
    .end local v0    # "values":[Ljava/lang/Object;
    :cond_4
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' has no setter method in class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2091
    .end local v2    # "writeMethod":Ljava/lang/reflect/Method;
    :cond_5
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' on class \'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2069
    .end local v1    # "descriptor":Ljava/beans/PropertyDescriptor;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mapped property names are not allowed: Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2065
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Indexed property names are not allowed: Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2061
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nested property names are not allowed: Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2055
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No name specified for bean class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2052
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No bean specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
