.class public Lcom/thoughtworks/xstream/core/JVM;
.super Ljava/lang/Object;
.source "JVM.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/Caching;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/JVM$Test;
    }
.end annotation


# static fields
.field private static final DEFAULT_JAVA_VERSION:F = 1.4f

.field private static final base64Codec:Lcom/thoughtworks/xstream/core/StringCodec;

.field private static final canAllocateWithUnsafe:Z

.field private static final canCreateDerivedObjectOutputStream:Z

.field private static final canParseISO8601TimeZoneInDateFormat:Z

.field private static final canParseUTCDateFormat:Z

.field private static final canWriteWithUnsafe:Z

.field static synthetic class$com$thoughtworks$xstream$converters$reflection$PureJavaReflectionProvider:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

.field static synthetic class$java$lang$Class:Ljava/lang/Class;

.field static synthetic class$java$text$AttributedString:Ljava/lang/Class;

.field private static final isAWTAvailable:Z

.field private static final isSQLAvailable:Z

.field private static final isSwingAvailable:Z

.field private static final majorJavaVersion:F

.field private static final optimizedTreeMapPutAll:Z

.field private static final optimizedTreeSetAddAll:Z

.field private static final reflectionProviderType:Ljava/lang/Class;

.field private static final reverseFieldOrder:Z

.field private static final vendor:Ljava/lang/String;


# instance fields
.field private reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 52
    const-string v0, "com.thoughtworks.xstream.core.JVM$Test"

    const-string v1, "java.vm.vendor"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/core/JVM;->vendor:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getMajorJavaVersion()F

    move-result v1

    sput v1, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    .line 75
    const/4 v1, 0x1

    .line 76
    .local v1, "test":Z
    const/4 v2, 0x0

    .line 78
    .local v2, "unsafe":Ljava/lang/Object;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    const-string v6, "sun.misc.Unsafe"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 79
    .local v6, "unsafeClass":Ljava/lang/Class;
    const-string v7, "theUnsafe"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 80
    .local v7, "unsafeField":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    .line 82
    const-string v8, "allocateInstance"

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v10, :cond_0

    const-string v10, "java.lang.Class"

    invoke-static {v10}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$java$lang$Class:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$java$lang$Class:Ljava/lang/Class;

    :goto_0
    aput-object v10, v9, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 83
    .local v8, "allocateInstance":Ljava/lang/reflect/Method;
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 84
    new-array v9, v5, [Ljava/lang/Object;

    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v10, :cond_1

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :goto_1
    aput-object v10, v9, v4

    invoke-virtual {v8, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    move v9, v4

    :goto_2
    move v1, v9

    .end local v6    # "unsafeClass":Ljava/lang/Class;
    .end local v7    # "unsafeField":Ljava/lang/reflect/Field;
    .end local v8    # "allocateInstance":Ljava/lang/reflect/Method;
    goto :goto_3

    .line 87
    :catch_0
    move-exception v6

    .line 88
    .local v6, "e":Ljava/lang/Error;
    const/4 v1, 0x0

    goto :goto_4

    .line 85
    .end local v6    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v6

    .line 86
    .local v6, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 89
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 90
    :goto_4
    sput-boolean v1, Lcom/thoughtworks/xstream/core/JVM;->canAllocateWithUnsafe:Z

    .line 91
    const/4 v1, 0x0

    .line 92
    sget-object v6, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$converters$reflection$PureJavaReflectionProvider:Ljava/lang/Class;

    if-nez v6, :cond_3

    const-string v6, "com.thoughtworks.xstream.converters.reflection.PureJavaReflectionProvider"

    invoke-static {v6}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$converters$reflection$PureJavaReflectionProvider:Ljava/lang/Class;

    .line 93
    .local v6, "type":Ljava/lang/Class;
    :cond_3
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canUseSunUnsafeReflectionProvider()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 94
    const-string v7, "com.thoughtworks.xstream.converters.reflection.SunUnsafeReflectionProvider"

    invoke-static {v7}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 95
    .local v7, "cls":Ljava/lang/Class;
    if-eqz v7, :cond_f

    .line 97
    :try_start_1
    invoke-static {v7, v3}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 98
    .local v8, "provider":Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    sget-object v9, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v9, :cond_4

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    goto :goto_5

    :cond_4
    sget-object v9, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :goto_5
    invoke-interface {v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/thoughtworks/xstream/core/JVM$Test;
    :try_end_1
    .catch Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException; {:try_start_1 .. :try_end_1} :catch_4

    .line 100
    .local v9, "t":Lcom/thoughtworks/xstream/core/JVM$Test;
    :try_start_2
    const-string v10, "o"

    const-string v11, "object"

    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v12, :cond_5

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    goto :goto_6

    :cond_5
    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :goto_6
    invoke-interface {v8, v9, v10, v11, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 101
    const-string v10, "c"

    new-instance v11, Ljava/lang/Character;

    const/16 v12, 0x63

    invoke-direct {v11, v12}, Ljava/lang/Character;-><init>(C)V

    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v12, :cond_6

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    goto :goto_7

    :cond_6
    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :goto_7
    invoke-interface {v8, v9, v10, v11, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 102
    const-string v10, "b"

    new-instance v11, Ljava/lang/Byte;

    invoke-direct {v11, v5}, Ljava/lang/Byte;-><init>(B)V

    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v12, :cond_7

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    goto :goto_8

    :cond_7
    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :goto_8
    invoke-interface {v8, v9, v10, v11, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 103
    const-string v10, "s"

    new-instance v11, Ljava/lang/Short;

    invoke-direct {v11, v5}, Ljava/lang/Short;-><init>(S)V

    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v12, :cond_8

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    goto :goto_9

    :cond_8
    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :goto_9
    invoke-interface {v8, v9, v10, v11, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 104
    const-string v10, "i"

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v5}, Ljava/lang/Integer;-><init>(I)V

    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v12, :cond_9

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    goto :goto_a

    :cond_9
    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :goto_a
    invoke-interface {v8, v9, v10, v11, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 105
    const-string v10, "l"

    new-instance v11, Ljava/lang/Long;

    const-wide/16 v12, 0x1

    invoke-direct {v11, v12, v13}, Ljava/lang/Long;-><init>(J)V

    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v12, :cond_a

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    goto :goto_b

    :cond_a
    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :goto_b
    invoke-interface {v8, v9, v10, v11, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 106
    const-string v10, "f"

    new-instance v11, Ljava/lang/Float;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v11, v12}, Ljava/lang/Float;-><init>(F)V

    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v12, :cond_b

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    goto :goto_c

    :cond_b
    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :goto_c
    invoke-interface {v8, v9, v10, v11, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 107
    const-string v10, "d"

    new-instance v11, Ljava/lang/Double;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-direct {v11, v12, v13}, Ljava/lang/Double;-><init>(D)V

    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v12, :cond_c

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    goto :goto_d

    :cond_c
    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :goto_d
    invoke-interface {v8, v9, v10, v11, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 108
    const-string v10, "bool"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v12, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v12, :cond_d

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    goto :goto_e

    :cond_d
    sget-object v0, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :goto_e
    invoke-interface {v8, v9, v10, v11, v0}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    const/4 v0, 0x1

    .line 114
    .end local v1    # "test":Z
    .local v0, "test":Z
    move v1, v0

    goto :goto_f

    .line 112
    .end local v0    # "test":Z
    .restart local v1    # "test":Z
    :catch_2
    move-exception v0

    .line 113
    .local v0, "e":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    const/4 v7, 0x0

    goto :goto_f

    .line 110
    .end local v0    # "e":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    :catch_3
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    const/4 v0, 0x0

    .line 114
    .end local v7    # "cls":Ljava/lang/Class;
    .local v0, "cls":Ljava/lang/Class;
    move-object v7, v0

    .line 115
    .end local v0    # "cls":Ljava/lang/Class;
    .restart local v7    # "cls":Ljava/lang/Class;
    :goto_f
    if-nez v7, :cond_e

    .line 116
    :try_start_3
    const-string v0, "com.thoughtworks.xstream.converters.reflection.SunLimitedUnsafeReflectionProvider"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_3
    .catch Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v7, v0

    .line 119
    :cond_e
    move-object v6, v7

    .line 121
    .end local v8    # "provider":Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .end local v9    # "t":Lcom/thoughtworks/xstream/core/JVM$Test;
    goto :goto_10

    .line 120
    :catch_4
    move-exception v0

    .line 124
    .end local v7    # "cls":Ljava/lang/Class;
    :cond_f
    :goto_10
    sput-object v6, Lcom/thoughtworks/xstream/core/JVM;->reflectionProviderType:Ljava/lang/Class;

    .line 125
    sput-boolean v1, Lcom/thoughtworks/xstream/core/JVM;->canWriteWithUnsafe:Z

    .line 126
    new-instance v0, Lcom/thoughtworks/xstream/core/JVM$1;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/JVM$1;-><init>()V

    .line 131
    .local v0, "comparator":Ljava/util/Comparator;
    new-instance v7, Lcom/thoughtworks/xstream/core/util/PresortedMap;

    invoke-direct {v7, v0}, Lcom/thoughtworks/xstream/core/util/PresortedMap;-><init>(Ljava/util/Comparator;)V

    .line 132
    .local v7, "map":Ljava/util/SortedMap;
    const-string v8, "one"

    invoke-interface {v7, v8, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v8, "two"

    invoke-interface {v7, v8, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :try_start_4
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v8, v7}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 136
    const/4 v1, 0x1

    .line 139
    goto :goto_11

    .line 137
    :catch_5
    move-exception v8

    .line 138
    .local v8, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .line 140
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :goto_11
    sput-boolean v1, Lcom/thoughtworks/xstream/core/JVM;->optimizedTreeMapPutAll:Z

    .line 141
    new-instance v8, Lcom/thoughtworks/xstream/core/util/PresortedSet;

    invoke-direct {v8, v0}, Lcom/thoughtworks/xstream/core/util/PresortedSet;-><init>(Ljava/util/Comparator;)V

    .line 142
    .local v8, "set":Ljava/util/SortedSet;
    invoke-interface {v7}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 144
    :try_start_5
    new-instance v9, Ljava/util/TreeSet;

    invoke-direct {v9, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v9, v8}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    .line 145
    const/4 v1, 0x1

    .line 148
    goto :goto_12

    .line 146
    :catch_6
    move-exception v9

    .line 147
    .local v9, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .line 149
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :goto_12
    sput-boolean v1, Lcom/thoughtworks/xstream/core/JVM;->optimizedTreeSetAddAll:Z

    .line 151
    :try_start_6
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "z"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v10, "UTC"

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_7

    .line 152
    const/4 v1, 0x1

    .line 155
    goto :goto_13

    .line 153
    :catch_7
    move-exception v9

    .line 154
    .local v9, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    .line 156
    .end local v9    # "e":Ljava/text/ParseException;
    :goto_13
    sput-boolean v1, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat:Z

    .line 158
    :try_start_7
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "X"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v10, "Z"

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8

    .line 159
    const/4 v1, 0x1

    goto :goto_14

    .line 162
    :catch_8
    move-exception v9

    .line 163
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_15

    .line 160
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v9

    .line 161
    .local v9, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    .line 164
    .end local v9    # "e":Ljava/text/ParseException;
    :goto_14
    nop

    .line 165
    :goto_15
    sput-boolean v1, Lcom/thoughtworks/xstream/core/JVM;->canParseISO8601TimeZoneInDateFormat:Z

    .line 167
    :try_start_8
    new-instance v9, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;

    invoke-direct {v9, v3}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    move v1, v5

    goto :goto_16

    .line 170
    :catch_a
    move-exception v3

    .line 171
    .local v3, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_17

    .line 168
    .end local v3    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .line 172
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_16
    nop

    .line 173
    :goto_17
    sput-boolean v1, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream:Z

    .line 175
    const-string v3, "java.awt.Color"

    invoke-static {v3, v4}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_10

    move v3, v5

    goto :goto_18

    :cond_10
    move v3, v4

    :goto_18
    sput-boolean v3, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable:Z

    .line 176
    const-string v3, "javax.swing.LookAndFeel"

    invoke-static {v3, v4}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_11

    move v3, v5

    goto :goto_19

    :cond_11
    move v3, v4

    :goto_19
    sput-boolean v3, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable:Z

    .line 177
    const-string v3, "java.sql.Date"

    invoke-static {v3}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_12

    move v4, v5

    :cond_12
    sput-boolean v4, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable:Z

    .line 179
    const/4 v3, 0x0

    .line 180
    .local v3, "base64":Lcom/thoughtworks/xstream/core/StringCodec;
    const-string v4, "com.thoughtworks.xstream.core.util.Base64JavaUtilCodec"

    invoke-static {v4}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 182
    .local v4, "base64Class":Ljava/lang/Class;
    if-nez v4, :cond_13

    .line 183
    const-string v5, "com.thoughtworks.xstream.core.util.Base64JAXBCodec"

    invoke-static {v5}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 185
    :cond_13
    if-eqz v4, :cond_14

    .line 187
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/thoughtworks/xstream/core/StringCodec;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_c

    move-object v3, v5

    .line 190
    :goto_1a
    goto :goto_1b

    .line 189
    :catch_c
    move-exception v5

    goto :goto_1b

    .line 188
    :catch_d
    move-exception v5

    goto :goto_1a

    .line 192
    :cond_14
    :goto_1b
    if-nez v3, :cond_15

    .line 193
    new-instance v5, Lcom/thoughtworks/xstream/core/util/Base64Encoder;

    invoke-direct {v5}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;-><init>()V

    move-object v3, v5

    .line 195
    :cond_15
    sput-object v3, Lcom/thoughtworks/xstream/core/JVM;->base64Codec:Lcom/thoughtworks/xstream/core/StringCodec;

    .line 196
    .end local v0    # "comparator":Ljava/util/Comparator;
    .end local v1    # "test":Z
    .end local v2    # "unsafe":Ljava/lang/Object;
    .end local v3    # "base64":Lcom/thoughtworks/xstream/core/StringCodec;
    .end local v4    # "base64Class":Ljava/lang/Class;
    .end local v6    # "type":Ljava/lang/Class;
    .end local v7    # "map":Ljava/util/SortedMap;
    .end local v8    # "set":Ljava/util/SortedSet;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    return-void
.end method

.method public static canCreateDerivedObjectOutputStream()Z
    .locals 1

    .line 539
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream:Z

    return v0
.end method

.method public static canParseISO8601TimeZoneInDateFormat()Z
    .locals 1

    .line 532
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canParseISO8601TimeZoneInDateFormat:Z

    return v0
.end method

.method public static canParseUTCDateFormat()Z
    .locals 1

    .line 525
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat:Z

    return v0
.end method

.method private static canUseSunLimitedUnsafeReflectionProvider()Z
    .locals 1

    .line 442
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canWriteWithUnsafe:Z

    return v0
.end method

.method private static canUseSunUnsafeReflectionProvider()Z
    .locals 1

    .line 438
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canAllocateWithUnsafe:Z

    return v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 82
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

.method public static getBase64Codec()Lcom/thoughtworks/xstream/core/StringCodec;
    .locals 1

    .line 424
    sget-object v0, Lcom/thoughtworks/xstream/core/JVM;->base64Codec:Lcom/thoughtworks/xstream/core/StringCodec;

    return-object v0
.end method

.method private static final getMajorJavaVersion()F
    .locals 2

    .line 211
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    .line 212
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/NumberFormatException;
    const v1, 0x3fb33333    # 1.4f

    return v1
.end method

.method public static getStaxInputFactory()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 381
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isIBM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "com.ibm.xml.xlxp.api.stax.XMLInputFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 385
    :cond_0
    const-string v0, "com.sun.xml.internal.stream.XMLInputFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 388
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStaxOutputFactory()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 406
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isIBM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "com.ibm.xml.xlxp.api.stax.XMLOutputFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 410
    :cond_0
    const-string v0, "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 413
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasOptimizedTreeMapPutAll()Z
    .locals 1

    .line 521
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->optimizedTreeMapPutAll:Z

    return v0
.end method

.method public static hasOptimizedTreeSetAddAll()Z
    .locals 1

    .line 512
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->optimizedTreeSetAddAll:Z

    return v0
.end method

.method public static is14()Z
    .locals 1

    .line 222
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    return v0
.end method

.method public static is15()Z
    .locals 1

    .line 229
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    return v0
.end method

.method public static is16()Z
    .locals 1

    .line 236
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    return v0
.end method

.method public static is17()Z
    .locals 1

    .line 244
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    return v0
.end method

.method public static is18()Z
    .locals 1

    .line 252
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    return v0
.end method

.method public static is19()Z
    .locals 2

    .line 260
    sget v0, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    const v1, 0x3ff33333    # 1.9f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is9()Z
    .locals 1

    .line 268
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    return v0
.end method

.method public static isAWTAvailable()Z
    .locals 1

    .line 458
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable:Z

    return v0
.end method

.method private static isAndroid()Z
    .locals 2

    .line 294
    sget-object v0, Lcom/thoughtworks/xstream/core/JVM;->vendor:Ljava/lang/String;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isIBM()Z
    .locals 2

    .line 287
    sget-object v0, Lcom/thoughtworks/xstream/core/JVM;->vendor:Ljava/lang/String;

    const-string v1, "IBM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSQLAvailable()Z
    .locals 1

    .line 494
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable:Z

    return v0
.end method

.method public static isSwingAvailable()Z
    .locals 1

    .line 476
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable:Z

    return v0
.end method

.method public static isVersion(I)Z
    .locals 4
    .param p0, "version"    # I

    .line 279
    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    .line 282
    sget v1, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    const/high16 v2, 0x41100000    # 9.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, p0

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    goto :goto_0

    :cond_0
    int-to-float v2, p0

    :goto_0
    move v1, v2

    .line 283
    .local v1, "v":F
    sget v2, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 280
    .end local v1    # "v":F
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Java version range starts with at least 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 307
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "initialize"    # Z

    .line 328
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.thoughtworks.xstream.core.JVM"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, p1, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .local v0, "clazz":Ljava/lang/Class;
    return-object v0

    .line 332
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return-object v0

    .line 330
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/LinkageError;
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;

    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, "reverseJDK":Z
    sget-object v1, Lcom/thoughtworks/xstream/core/JVM;->class$java$text$AttributedString:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.text.AttributedString"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/core/JVM;->class$java$text$AttributedString:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 551
    .local v1, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_3

    .line 552
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "text"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 553
    if-le v2, v4, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    move v0, v3

    .line 554
    goto :goto_2

    .line 551
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    .end local v2    # "i":I
    :cond_3
    :goto_2
    const/4 v2, 0x0

    .line 559
    .local v2, "reverseLocal":Z
    sget-object v3, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v3, :cond_4

    const-string v3, "com.thoughtworks.xstream.core.JVM$Test"

    invoke-static {v3}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 560
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v7, v1

    if-ge v3, v7, :cond_7

    .line 561
    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "o"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 562
    if-le v3, v4, :cond_5

    move v4, v6

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    move v2, v4

    .line 563
    goto :goto_5

    .line 560
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 567
    .end local v3    # "i":I
    :cond_7
    :goto_5
    const/4 v3, 0x0

    .line 569
    .local v3, "staxInputFactory":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxInputFactory()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_6

    .line 572
    :catch_0
    move-exception v4

    goto :goto_7

    .line 570
    :catch_1
    move-exception v4

    .line 571
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 573
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :goto_6
    nop

    .line 575
    :goto_7
    const/4 v4, 0x0

    .line 577
    .local v4, "staxOutputFactory":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxOutputFactory()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v7

    goto :goto_8

    .line 580
    :catch_2
    move-exception v7

    goto :goto_9

    .line 578
    :catch_3
    move-exception v7

    .line 579
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 581
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :goto_8
    nop

    .line 583
    :goto_9
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "XStream JVM diagnostics"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 584
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "java.specification.version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "java.specification.version"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 585
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "java.specification.vendor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "java.specification.vendor"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 586
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "java.specification.name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "java.specification.name"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 587
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "java.vm.vendor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v9, Lcom/thoughtworks/xstream/core/JVM;->vendor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 588
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "java.vendor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "java.vendor"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 589
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "java.vm.name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "java.vm.name"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 590
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v9, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 591
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "XStream support for enhanced Mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canUseSunUnsafeReflectionProvider()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 592
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "XStream support for reduced Mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canUseSunLimitedUnsafeReflectionProvider()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 593
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Supports AWT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 594
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Supports Swing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 595
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Supports SQL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 596
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Java Beans EventHandler present: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "java.beans.EventHandler"

    invoke-static {v9}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    if-eqz v9, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 597
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Standard StAX XMLInputFactory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 598
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Standard StAX XMLOutputFactory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 599
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Standard Base64 Codec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getBase64Codec()Lcom/thoughtworks/xstream/core/StringCodec;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 600
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Optimized TreeSet.addAll: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeSetAddAll()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 601
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Optimized TreeMap.putAll: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeMapPutAll()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 602
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Can parse UTC date format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 603
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Can create derive ObjectOutputStream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Reverse field order detected for JDK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 605
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Reverse field order detected (only if JVM class itself has been compiled): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method public static newReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .locals 2

    .line 352
    sget-object v0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProviderType:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    return-object v0
.end method

.method public static newReflectionProvider(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .locals 3
    .param p0, "dictionary"    # Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;

    .line 363
    sget-object v0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProviderType:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    return-object v0
.end method

.method public static reverseFieldDefinition()Z
    .locals 1

    .line 449
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized bestReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .locals 1

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    if-nez v0, :cond_0

    .line 432
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->newReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 434
    .end local p0    # "this":Lcom/thoughtworks/xstream/core/JVM;
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flushCache()V
    .locals 0

    .line 546
    return-void
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 314
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initialize"    # Z

    .line 342
    invoke-static {p1, p2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public supportsAWT()Z
    .locals 1

    .line 467
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable:Z

    return v0
.end method

.method public supportsSQL()Z
    .locals 1

    .line 503
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable:Z

    return v0
.end method

.method public supportsSwing()Z
    .locals 1

    .line 485
    sget-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable:Z

    return v0
.end method
