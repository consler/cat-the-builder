.class public Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;
.super Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;
.source "CGLIBEnhancedConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeredCallbackFilter;,
        Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeringInvocationHandler;,
        Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider;
    }
.end annotation


# static fields
.field private static CALLBACK_MARKER:Ljava/lang/String;

.field private static DEFAULT_NAMING_MARKER:Ljava/lang/String;

.field static synthetic class$com$thoughtworks$xstream$converters$reflection$CGLIBEnhancedConverter:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$CGLIBMapper$Marker:Ljava/lang/Class;

.field static synthetic class$java$lang$Class:Ljava/lang/Class;

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$java$util$HashMap:Ljava/lang/Class;

.field static synthetic class$net$sf$cglib$proxy$Callback:Ljava/lang/Class;

.field static synthetic class$net$sf$cglib$proxy$Factory:Ljava/lang/Class;

.field static synthetic class$net$sf$cglib$proxy$MethodInterceptor:Ljava/lang/Class;

.field static synthetic class$net$sf$cglib$proxy$NoOp:Ljava/lang/Class;


# instance fields
.field private transient fieldCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-string v0, "$$EnhancerByCGLIB$$"

    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->DEFAULT_NAMING_MARKER:Ljava/lang/String;

    .line 61
    const-string v0, "CGLIB$CALLBACK_"

    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->CALLBACK_MARKER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 2
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 88
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    sget-object v1, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$com$thoughtworks$xstream$converters$reflection$CGLIBEnhancedConverter:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.thoughtworks.xstream.converters.reflection.CGLIBEnhancedConverter"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$com$thoughtworks$xstream$converters$reflection$CGLIBEnhancedConverter:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Ljava/lang/ClassLoader;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p3, "classLoaderReference"    # Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 72
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->fieldCache:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .line 80
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$CGLIBFilteringReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Ljava/lang/ClassLoader;)V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->fieldCache:Ljava/util/Map;

    .line 82
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 88
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private create(Lnet/sf/cglib/proxy/Enhancer;Ljava/util/List;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "enhancer"    # Lnet/sf/cglib/proxy/Enhancer;
    .param p2, "callbacks"    # Ljava/util/List;
    .param p3, "useFactory"    # Z

    .line 423
    invoke-virtual {p1}, Lnet/sf/cglib/proxy/Enhancer;->create()Ljava/lang/Object;

    move-result-object v0

    .line 424
    .local v0, "result":Ljava/lang/Object;
    if-eqz p3, :cond_0

    .line 425
    move-object v1, v0

    check-cast v1, Lnet/sf/cglib/proxy/Factory;

    .line 426
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lnet/sf/cglib/proxy/Callback;

    .line 425
    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lnet/sf/cglib/proxy/Callback;

    check-cast v2, [Lnet/sf/cglib/proxy/Callback;

    invoke-interface {v1, v2}, Lnet/sf/cglib/proxy/Factory;->setCallbacks([Lnet/sf/cglib/proxy/Callback;)V

    .line 428
    :cond_0
    return-object v0
.end method

.method private createCallbackIndexMap(Lnet/sf/cglib/proxy/Factory;)Ljava/util/Map;
    .locals 20
    .param p1, "source"    # Lnet/sf/cglib/proxy/Factory;

    .line 214
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "method"

    invoke-interface/range {p1 .. p1}, Lnet/sf/cglib/proxy/Factory;->getCallbacks()[Lnet/sf/cglib/proxy/Callback;

    move-result-object v4

    .line 215
    .local v4, "originalCallbacks":[Lnet/sf/cglib/proxy/Callback;
    array-length v0, v4

    new-array v5, v0, [Lnet/sf/cglib/proxy/Callback;

    .line 216
    .local v5, "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    .line 217
    .local v6, "callbackIndexMap":Ljava/util/Map;
    const/4 v0, -0x1

    .line 218
    .local v0, "idxNoOp":I
    const/4 v7, 0x0

    move/from16 v19, v7

    move v7, v0

    move/from16 v0, v19

    .local v0, "i":I
    .local v7, "idxNoOp":I
    :goto_0
    array-length v8, v4

    const/4 v9, 0x0

    if-ge v0, v8, :cond_3

    .line 219
    aget-object v8, v4, v0

    .line 220
    .local v8, "callback":Lnet/sf/cglib/proxy/Callback;
    if-nez v8, :cond_0

    .line 221
    aput-object v9, v5, v0

    goto :goto_1

    .line 222
    :cond_0
    sget-object v9, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$NoOp:Ljava/lang/Class;

    if-nez v9, :cond_1

    const-string v9, "net.sf.cglib.proxy.NoOp"

    invoke-static {v9}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$NoOp:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 223
    sget-object v9, Lnet/sf/cglib/proxy/NoOp;->INSTANCE:Lnet/sf/cglib/proxy/NoOp;

    aput-object v9, v5, v0

    .line 224
    move v7, v0

    goto :goto_1

    .line 226
    :cond_2
    invoke-direct {v1, v8, v0, v6}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->createReverseEngineeredCallbackOfProperType(Lnet/sf/cglib/proxy/Callback;ILjava/util/Map;)Lnet/sf/cglib/proxy/Callback;

    move-result-object v9

    aput-object v9, v5, v0

    .line 218
    .end local v8    # "callback":Lnet/sf/cglib/proxy/Callback;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "i":I
    :cond_3
    :try_start_0
    invoke-interface {v2, v5}, Lnet/sf/cglib/proxy/Factory;->setCallbacks([Lnet/sf/cglib/proxy/Callback;)V

    .line 233
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v8, v0

    .line 234
    .local v8, "interfaces":Ljava/util/Set;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v10, v0

    .line 235
    .local v10, "methods":Ljava/util/Set;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 237
    .local v0, "type":Ljava/lang/Class;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 238
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v11

    .line 240
    .local v11, "implementedInterfaces":[Ljava/lang/Class;
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 241
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    move-object v0, v12

    .line 242
    .end local v11    # "implementedInterfaces":[Ljava/lang/Class;
    if-nez v0, :cond_e

    .line 243
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v12, v0

    .end local v0    # "type":Ljava/lang/Class;
    .local v11, "iterator":Ljava/util/Iterator;
    .local v12, "type":Ljava/lang/Class;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_4

    .line 244
    :try_start_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    move-object v12, v0

    .line 245
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 292
    .end local v8    # "interfaces":Ljava/util/Set;
    .end local v10    # "methods":Ljava/util/Set;
    .end local v11    # "iterator":Ljava/util/Iterator;
    .end local v12    # "type":Ljava/lang/Class;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_d

    .line 247
    .restart local v8    # "interfaces":Ljava/util/Set;
    .restart local v10    # "methods":Ljava/util/Set;
    .restart local v12    # "type":Ljava/lang/Class;
    :cond_4
    :try_start_2
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v11, v0

    .local v11, "iter":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 248
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v13, v0

    .line 249
    .local v13, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_5

    .line 250
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v13, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    :cond_5
    :try_start_4
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Factory:Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v0, :cond_6

    :try_start_5
    const-string v0, "net.sf.cglib.proxy.Factory"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Factory:Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :cond_6
    :try_start_6
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Factory:Ljava/lang/Class;

    :goto_5
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 253
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x18

    if-lez v0, :cond_7

    move-object/from16 v17, v5

    goto/16 :goto_b

    .line 257
    :cond_7
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v14, v0

    .line 258
    .local v14, "parameterTypes":[Ljava/lang/Class;
    move-object v15, v13

    .line 260
    .local v15, "calledMethod":Ljava/lang/reflect/Method;
    :try_start_7
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-lez v0, :cond_8

    .line 261
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 262
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v17, v5

    .end local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .local v17, "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    :try_start_8
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 261
    invoke-virtual {v0, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v15, v0

    .end local v15    # "calledMethod":Ljava/lang/reflect/Method;
    .local v0, "calledMethod":Ljava/lang/reflect/Method;
    goto :goto_6

    .line 260
    .end local v0    # "calledMethod":Ljava/lang/reflect/Method;
    .end local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v15    # "calledMethod":Ljava/lang/reflect/Method;
    :cond_8
    move-object/from16 v17, v5

    .line 264
    .end local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    :goto_6
    const/4 v5, 0x0

    invoke-interface {v6, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    if-nez v14, :cond_9

    move-object v9, v5

    check-cast v9, [Ljava/lang/Object;

    goto :goto_7

    .line 267
    :cond_9
    invoke-direct {v1, v14}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->createNullArguments([Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 265
    :goto_7
    invoke-virtual {v15, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_9

    .line 274
    :catch_0
    move-exception v0

    goto :goto_8

    .line 272
    :catch_1
    move-exception v0

    goto :goto_9

    .line 268
    :catch_2
    move-exception v0

    goto :goto_a

    .line 274
    .end local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    :catch_3
    move-exception v0

    move-object/from16 v17, v5

    .line 275
    .end local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    .restart local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    :goto_8
    :try_start_9
    new-instance v5, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v9, "CGLIB enhanced proxies wit abstract nethod that has not been implemented"

    invoke-direct {v5, v9}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 277
    .local v5, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    const-string v9, "proxy-superclass"

    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v16

    move-object/from16 v18, v0

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .local v18, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    nop

    .end local v4    # "originalCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .end local v6    # "callbackIndexMap":Ljava/util/Map;
    .end local v7    # "idxNoOp":I
    .end local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .end local p1    # "source":Lnet/sf/cglib/proxy/Factory;
    throw v5

    .line 272
    .end local v18    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v4    # "originalCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .local v5, "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v6    # "callbackIndexMap":Ljava/util/Map;
    .restart local v7    # "idxNoOp":I
    .restart local p1    # "source":Lnet/sf/cglib/proxy/Factory;
    :catch_4
    move-exception v0

    move-object/from16 v17, v5

    .line 280
    .end local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    :goto_9
    nop

    .line 281
    invoke-interface {v6, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 282
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 284
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "parameterTypes":[Ljava/lang/Class;
    .end local v15    # "calledMethod":Ljava/lang/reflect/Method;
    :cond_a
    move-object/from16 v5, v17

    const/4 v9, 0x0

    goto/16 :goto_4

    .line 268
    .end local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v13    # "method":Ljava/lang/reflect/Method;
    .restart local v14    # "parameterTypes":[Ljava/lang/Class;
    .restart local v15    # "calledMethod":Ljava/lang/reflect/Method;
    :catch_5
    move-exception v0

    move-object/from16 v17, v5

    .line 269
    .end local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .local v0, "e":Ljava/lang/IllegalAccessException;
    .restart local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    :goto_a
    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v9, "Cannot access method"

    invoke-direct {v5, v9, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    .local v5, "exception":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v3, v9}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    nop

    .end local v4    # "originalCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .end local v6    # "callbackIndexMap":Ljava/util/Map;
    .end local v7    # "idxNoOp":I
    .end local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .end local p1    # "source":Lnet/sf/cglib/proxy/Factory;
    throw v5

    .line 252
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v14    # "parameterTypes":[Ljava/lang/Class;
    .end local v15    # "calledMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "originalCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .local v5, "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v6    # "callbackIndexMap":Ljava/util/Map;
    .restart local v7    # "idxNoOp":I
    .restart local p1    # "source":Lnet/sf/cglib/proxy/Factory;
    :cond_b
    move-object/from16 v17, v5

    .line 254
    .end local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 255
    move-object/from16 v5, v17

    const/4 v9, 0x0

    goto/16 :goto_4

    .line 247
    .end local v13    # "method":Ljava/lang/reflect/Method;
    .end local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    :cond_c
    move-object/from16 v17, v5

    .line 285
    .end local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .end local v11    # "iter":Ljava/util/Iterator;
    .restart local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    if-ltz v7, :cond_d

    .line 286
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 287
    .local v0, "idx":Ljava/lang/Integer;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 288
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_c

    .line 292
    .end local v0    # "idx":Ljava/lang/Integer;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v8    # "interfaces":Ljava/util/Set;
    .end local v10    # "methods":Ljava/util/Set;
    .end local v12    # "type":Ljava/lang/Class;
    :catchall_1
    move-exception v0

    goto :goto_d

    :cond_d
    invoke-interface {v2, v4}, Lnet/sf/cglib/proxy/Factory;->setCallbacks([Lnet/sf/cglib/proxy/Callback;)V

    .line 293
    nop

    .line 295
    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-object v6

    .line 242
    .end local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .local v0, "type":Ljava/lang/Class;
    .restart local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v8    # "interfaces":Ljava/util/Set;
    .restart local v10    # "methods":Ljava/util/Set;
    :cond_e
    move-object/from16 v17, v5

    move-object v5, v9

    .end local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    move-object/from16 v5, v17

    goto/16 :goto_2

    .line 292
    .end local v0    # "type":Ljava/lang/Class;
    .end local v8    # "interfaces":Ljava/util/Set;
    .end local v10    # "methods":Ljava/util/Set;
    .end local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v5

    .end local v5    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    .restart local v17    # "reverseEngineeringCallbacks":[Lnet/sf/cglib/proxy/Callback;
    :goto_d
    invoke-interface {v2, v4}, Lnet/sf/cglib/proxy/Factory;->setCallbacks([Lnet/sf/cglib/proxy/Callback;)V

    .line 293
    throw v0
.end method

.method private createNullArguments([Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 6
    .param p1, "parameterTypes"    # [Ljava/lang/Class;

    .line 300
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 301
    .local v0, "arguments":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_8

    .line 302
    aget-object v2, p1, v1

    .line 303
    .local v2, "type":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 304
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 305
    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    aput-object v3, v0, v1

    goto :goto_1

    .line 306
    :cond_0
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    .line 307
    new-instance v3, Ljava/lang/Short;

    invoke-direct {v3, v4}, Ljava/lang/Short;-><init>(S)V

    aput-object v3, v0, v1

    goto :goto_1

    .line 308
    :cond_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_2

    .line 309
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v1

    goto :goto_1

    .line 310
    :cond_2
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    .line 311
    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v0, v1

    goto :goto_1

    .line 312
    :cond_3
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    .line 313
    new-instance v3, Ljava/lang/Float;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v0, v1

    goto :goto_1

    .line 314
    :cond_4
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_5

    .line 315
    new-instance v3, Ljava/lang/Double;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v0, v1

    goto :goto_1

    .line 316
    :cond_5
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_6

    .line 317
    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, v4}, Ljava/lang/Character;-><init>(C)V

    aput-object v3, v0, v1

    goto :goto_1

    .line 319
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v0, v1

    .line 301
    .end local v2    # "type":Ljava/lang/Class;
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "i":I
    :cond_8
    return-object v0
.end method

.method private createReverseEngineeredCallbackOfProperType(Lnet/sf/cglib/proxy/Callback;ILjava/util/Map;)Lnet/sf/cglib/proxy/Callback;
    .locals 7
    .param p1, "callback"    # Lnet/sf/cglib/proxy/Callback;
    .param p2, "index"    # I
    .param p3, "callbackIndexMap"    # Ljava/util/Map;

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "iface":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 330
    .local v1, "interfaces":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_6

    .line 331
    sget-object v3, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Callback:Ljava/lang/Class;

    const-string v5, "net.sf.cglib.proxy.Callback"

    if-nez v3, :cond_0

    invoke-static {v5}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Callback:Ljava/lang/Class;

    :cond_0
    aget-object v6, v1, v2

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 332
    aget-object v0, v1, v2

    .line 333
    sget-object v3, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Callback:Ljava/lang/Class;

    if-nez v3, :cond_1

    invoke-static {v5}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Callback:Ljava/lang/Class;

    :cond_1
    if-eq v0, v3, :cond_4

    .line 339
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 340
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v6, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Callback:Ljava/lang/Class;

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Callback:Ljava/lang/Class;

    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 341
    goto :goto_2

    .line 343
    :cond_3
    const/4 v2, -0x1

    goto :goto_1

    .line 334
    :cond_4
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v4, "Cannot handle CGLIB callback"

    invoke-direct {v3, v4}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 336
    .local v3, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CGLIB-callback-type"

    invoke-virtual {v3, v5, v4}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    throw v3

    .line 330
    .end local v3    # "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    :cond_5
    :goto_1
    add-int/2addr v2, v4

    goto :goto_0

    .line 346
    .end local v2    # "i":I
    :cond_6
    :goto_2
    nop

    .line 347
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v4, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeringInvocationHandler;

    invoke-direct {v4, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeringInvocationHandler;-><init>(ILjava/util/Map;)V

    .line 346
    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/cglib/proxy/Callback;

    return-object v2
.end method

.method private getCallbacks(Ljava/lang/Object;)[Lnet/sf/cglib/proxy/Callback;
    .locals 8
    .param p1, "source"    # Ljava/lang/Object;

    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 182
    .local v0, "type":Ljava/lang/Class;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->fieldCache:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 183
    .local v1, "fields":Ljava/util/List;
    if-nez v1, :cond_1

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 185
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->fieldCache:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const/4 v2, 0x0

    .line 188
    .local v2, "i":I
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->CALLBACK_MARKER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 189
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 190
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 192
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    nop

    .line 186
    .end local v3    # "field":Ljava/lang/reflect/Field;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v3

    .line 198
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v2, "list":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 201
    :try_start_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 202
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 203
    .local v5, "callback":Ljava/lang/Object;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    nop

    .line 199
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "callback":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    :catch_1
    move-exception v4

    .line 205
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v6, "Cannot access field"

    invoke-direct {v5, v6, v4}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .local v5, "exception":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->CALLBACK_MARKER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "field"

    invoke-virtual {v5, v7, v6}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    throw v5

    .line 210
    .end local v3    # "i":I
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    .end local v5    # "exception":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lnet/sf/cglib/proxy/Callback;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lnet/sf/cglib/proxy/Callback;

    check-cast v3, [Lnet/sf/cglib/proxy/Callback;

    return-object v3
.end method

.method private readCallback(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p3, "callbacksToEnhance"    # Ljava/util/List;
    .param p4, "callbacks"    # Ljava/util/List;

    .line 412
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 413
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/cglib/proxy/Callback;

    .line 414
    .local v0, "callback":Lnet/sf/cglib/proxy/Callback;
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    if-nez v0, :cond_0

    .line 416
    sget-object v1, Lnet/sf/cglib/proxy/NoOp;->INSTANCE:Lnet/sf/cglib/proxy/NoOp;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 418
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :goto_0
    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .line 92
    if-eqz p1, :cond_0

    invoke-static {p1}, Lnet/sf/cglib/proxy/Enhancer;->isEnhanced(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->DEFAULT_NAMING_MARKER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$com$thoughtworks$xstream$mapper$CGLIBMapper$Marker:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 93
    const-string v0, "com.thoughtworks.xstream.mapper.CGLIBMapper$Marker"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$com$thoughtworks$xstream$mapper$CGLIBMapper$Marker:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    nop

    :goto_0
    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 92
    :goto_1
    return v0
.end method

.method protected hierarchyFor(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .line 432
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->hierarchyFor(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 434
    .local v0, "typeHierarchy":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 435
    return-object v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 12
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 98
    const-string v0, "serialVersionUID"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 99
    .local v1, "type":Ljava/lang/Class;
    sget-object v2, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Factory:Ljava/lang/Class;

    const-string v3, "net.sf.cglib.proxy.Factory"

    if-nez v2, :cond_0

    invoke-static {v3}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Factory:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 100
    .local v2, "hasFactory":Z
    const-string v4, "type"

    invoke-static {p2, v4, v1}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 101
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 102
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 103
    const-string v4, "interfaces"

    invoke-interface {p2, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 105
    .local v4, "interfaces":[Ljava/lang/Class;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_3

    .line 106
    aget-object v6, v4, v5

    sget-object v7, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Factory:Ljava/lang/Class;

    if-nez v7, :cond_1

    invoke-static {v3}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$Factory:Ljava/lang/Class;

    :cond_1
    if-ne v6, v7, :cond_2

    .line 107
    goto :goto_1

    .line 109
    :cond_2
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aget-object v7, v4, v5

    .line 110
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 109
    invoke-static {p2, v6, v7}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 111
    aget-object v6, v4, v5

    invoke-interface {p3, v6}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 112
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 105
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 114
    .end local v5    # "i":I
    :cond_3
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 115
    const-string v3, "hasFactory"

    invoke-interface {p2, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 116
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 117
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, "callbackIndexMap":Ljava/util/Map;
    if-eqz v2, :cond_4

    move-object v5, p1

    check-cast v5, Lnet/sf/cglib/proxy/Factory;

    .line 120
    invoke-interface {v5}, Lnet/sf/cglib/proxy/Factory;->getCallbacks()[Lnet/sf/cglib/proxy/Callback;

    move-result-object v5

    goto :goto_2

    .line 121
    :cond_4
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->getCallbacks(Ljava/lang/Object;)[Lnet/sf/cglib/proxy/Callback;

    move-result-object v5

    :goto_2
    nop

    .line 122
    .local v5, "callbacks":[Lnet/sf/cglib/proxy/Callback;
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_6

    .line 123
    if-eqz v2, :cond_5

    .line 124
    move-object v6, p1

    check-cast v6, Lnet/sf/cglib/proxy/Factory;

    invoke-direct {p0, v6}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->createCallbackIndexMap(Lnet/sf/cglib/proxy/Factory;)Ljava/util/Map;

    move-result-object v3

    .line 132
    const-string v6, "callbacks"

    invoke-interface {p2, v6}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 133
    const-string v6, "mapping"

    invoke-interface {p2, v6}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 134
    invoke-interface {p3, v3}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 135
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_3

    .line 126
    :cond_5
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v6, "Cannot handle CGLIB enhanced proxies without factory that have multiple callbacks"

    invoke-direct {v0, v6}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy-superclass"

    invoke-virtual {v0, v7, v6}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    array-length v6, v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "number-of-callbacks"

    invoke-virtual {v0, v7, v6}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    throw v0

    .line 137
    .end local v0    # "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    :cond_6
    :goto_3
    const/4 v6, 0x0

    .line 138
    .local v6, "hasInterceptor":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    array-length v9, v5

    const/4 v10, 0x0

    if-ge v8, v9, :cond_b

    .line 139
    aget-object v9, v5, v8

    .line 140
    .local v9, "callback":Lnet/sf/cglib/proxy/Callback;
    if-nez v9, :cond_7

    .line 141
    iget-object v11, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v11, v10}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "name":Ljava/lang/String;
    invoke-interface {p2, v10}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 143
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 144
    .end local v10    # "name":Ljava/lang/String;
    goto :goto_8

    .line 145
    :cond_7
    if-nez v6, :cond_a

    sget-object v10, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$MethodInterceptor:Ljava/lang/Class;

    if-nez v10, :cond_8

    .line 146
    const-string v10, "net.sf.cglib.proxy.MethodInterceptor"

    invoke-static {v10}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$net$sf$cglib$proxy$MethodInterceptor:Ljava/lang/Class;

    goto :goto_5

    :cond_8
    nop

    :goto_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    move v10, v7

    :goto_7
    move v6, v10

    .line 147
    iget-object v10, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 148
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 147
    invoke-static {p2, v10, v11}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 149
    invoke-interface {p3, v9}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 150
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 138
    .end local v9    # "callback":Lnet/sf/cglib/proxy/Callback;
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 153
    .end local v8    # "i":I
    :cond_b
    array-length v8, v5

    if-le v8, v7, :cond_c

    .line 154
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 157
    :cond_c
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 158
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v9

    if-nez v9, :cond_d

    .line 159
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 161
    :cond_d
    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v9

    .line 162
    .local v9, "serialVersionUID":J
    sget-object v7, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v7, :cond_e

    const-string v7, "java.lang.String"

    .line 163
    invoke-static {v7}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_9

    :cond_e
    sget-object v7, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$java$lang$String:Ljava/lang/Class;

    .line 162
    :goto_9
    invoke-static {p2, v0, v7}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 164
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 165
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "serialVersionUID":J
    goto :goto_b

    .line 168
    :catch_0
    move-exception v0

    goto :goto_a

    .line 166
    :catch_1
    move-exception v0

    goto :goto_b

    .line 169
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :goto_a
    new-instance v7, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v8, "Cannot access field"

    invoke-direct {v7, v8, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .local v7, "exception":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ".serialVersionUID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "field"

    invoke-virtual {v7, v9, v8}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    throw v7

    .line 172
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v7    # "exception":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    :goto_b
    nop

    .line 173
    if-eqz v6, :cond_f

    .line 174
    const-string v0, "instance"

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->doMarshalConditionally(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 176
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 178
    :cond_f
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .line 439
    invoke-super {p0}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->readResolve()Ljava/lang/Object;

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->fieldCache:Ljava/util/Map;

    .line 441
    return-object p0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 9
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 352
    new-instance v0, Lnet/sf/cglib/proxy/Enhancer;

    invoke-direct {v0}, Lnet/sf/cglib/proxy/Enhancer;-><init>()V

    .line 353
    .local v0, "enhancer":Lnet/sf/cglib/proxy/Enhancer;
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 354
    sget-object v1, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Class"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$java$lang$Class:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lnet/sf/cglib/proxy/Enhancer;->setSuperclass(Ljava/lang/Class;)V

    .line 355
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 356
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v1, "interfaces":Ljava/util/List;
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 360
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 361
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    .line 364
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lnet/sf/cglib/proxy/Enhancer;->setInterfaces([Ljava/lang/Class;)V

    .line 365
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 366
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 367
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 368
    .local v3, "useFactory":Z
    invoke-virtual {v0, v3}, Lnet/sf/cglib/proxy/Enhancer;->setUseFactory(Z)V

    .line 369
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 371
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v4, "callbacksToEnhance":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v5, "callbacks":Ljava/util/List;
    const/4 v6, 0x0

    .line 374
    .local v6, "callbackIndexMap":Ljava/util/Map;
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 375
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "callbacks"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 376
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 377
    sget-object v7, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$java$util$HashMap:Ljava/lang/Class;

    if-nez v7, :cond_2

    const-string v7, "java.util.HashMap"

    invoke-static {v7}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->class$java$util$HashMap:Ljava/lang/Class;

    :cond_2
    invoke-interface {p2, v2, v7}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/Map;

    .line 378
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 379
    :goto_1
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 380
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 381
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->readCallback(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/List;Ljava/util/List;)V

    .line 382
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_1

    .line 385
    :cond_3
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->readCallback(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/List;Ljava/util/List;)V

    .line 387
    :cond_4
    nop

    .line 388
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lnet/sf/cglib/proxy/Callback;

    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lnet/sf/cglib/proxy/Callback;

    check-cast v2, [Lnet/sf/cglib/proxy/Callback;

    .line 387
    invoke-virtual {v0, v2}, Lnet/sf/cglib/proxy/Enhancer;->setCallbacks([Lnet/sf/cglib/proxy/Callback;)V

    .line 389
    if-eqz v6, :cond_5

    .line 390
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeredCallbackFilter;

    invoke-direct {v2, v6}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter$ReverseEngineeredCallbackFilter;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lnet/sf/cglib/proxy/Enhancer;->setCallbackFilter(Lnet/sf/cglib/proxy/CallbackFilter;)V

    .line 392
    :cond_5
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 393
    const/4 v2, 0x0

    .line 394
    .local v2, "result":Ljava/lang/Object;
    :goto_2
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 395
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 396
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "serialVersionUID"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 397
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Lnet/sf/cglib/proxy/Enhancer;->setSerialVersionUID(Ljava/lang/Long;)V

    goto :goto_3

    .line 398
    :cond_6
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "instance"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 399
    invoke-direct {p0, v0, v5, v3}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->create(Lnet/sf/cglib/proxy/Enhancer;Ljava/util/List;Z)Ljava/lang/Object;

    move-result-object v2

    .line 400
    invoke-super {p0, v2, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->doUnmarshalConditionally(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    .line 402
    :cond_7
    :goto_3
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_2

    .line 404
    :cond_8
    if-nez v2, :cond_9

    .line 405
    invoke-direct {p0, v0, v5, v3}, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->create(Lnet/sf/cglib/proxy/Enhancer;Ljava/util/List;Z)Ljava/lang/Object;

    move-result-object v2

    .line 407
    :cond_9
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/CGLIBEnhancedConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    invoke-virtual {v7, v2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callReadResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method
