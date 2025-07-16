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

.field static synthetic class$com$thoughtworks$xstream$converters$reflection$PureJavaReflectionProvider:Ljava/lang/Class; = null

.field static synthetic class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class; = null

.field static synthetic class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class; = null

.field static synthetic class$java$lang$Class:Ljava/lang/Class; = null

.field static synthetic class$java$text$AttributedString:Ljava/lang/Class; = null

.field private static final isAWTAvailable:Z

.field private static final isSQLAvailable:Z

.field private static final isSwingAvailable:Z

.field private static final majorJavaVersion:F

.field private static final optimizedTreeMapPutAll:Z

.field private static final optimizedTreeSetAddAll:Z

.field private static final reflectionProviderType:Ljava/lang/Class;

.field private static final reverseFieldOrder:Z = false

.field private static final vendor:Ljava/lang/String;


# instance fields
.field private reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "com.thoughtworks.xstream.core.JVM$Test"

    const-string v1, "java.vm.vendor"

    .line 52
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/core/JVM;->vendor:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getMajorJavaVersion()F

    move-result v1

    sput v1, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "sun.misc.Unsafe"

    .line 78
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "theUnsafe"

    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 80
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "allocateInstance"

    new-array v7, v2, [Ljava/lang/Class;

    .line 82
    sget-object v8, Lcom/thoughtworks/xstream/core/JVM;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v8, :cond_0

    const-string v8, "java.lang.Class"

    invoke-static {v8}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lcom/thoughtworks/xstream/core/JVM;->class$java$lang$Class:Ljava/lang/Class;

    :cond_0
    aput-object v8, v7, v3

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 83
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v2, [Ljava/lang/Object;

    .line 84
    sget-object v7, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v7, :cond_1

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_1
    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :catch_0
    :cond_2
    move v4, v3

    .line 90
    :goto_0
    sput-boolean v4, Lcom/thoughtworks/xstream/core/JVM;->canAllocateWithUnsafe:Z

    .line 92
    sget-object v4, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$converters$reflection$PureJavaReflectionProvider:Ljava/lang/Class;

    if-nez v4, :cond_3

    const-string v4, "com.thoughtworks.xstream.converters.reflection.PureJavaReflectionProvider"

    invoke-static {v4}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$converters$reflection$PureJavaReflectionProvider:Ljava/lang/Class;

    .line 93
    :cond_3
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canUseSunUnsafeReflectionProvider()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "com.thoughtworks.xstream.converters.reflection.SunUnsafeReflectionProvider"

    .line 94
    invoke-static {v5}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 97
    :try_start_1
    invoke-static {v5, v1}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 98
    sget-object v7, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v7, :cond_4

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_4
    invoke-interface {v6, v7}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/thoughtworks/xstream/core/JVM$Test;
    :try_end_1
    .catch Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v8, "o"

    const-string v9, "object"

    .line 100
    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v10, :cond_5

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_5
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v8, "c"

    .line 101
    new-instance v9, Ljava/lang/Character;

    const/16 v10, 0x63

    invoke-direct {v9, v10}, Ljava/lang/Character;-><init>(C)V

    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v10, :cond_6

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_6
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v8, "b"

    .line 102
    new-instance v9, Ljava/lang/Byte;

    invoke-direct {v9, v2}, Ljava/lang/Byte;-><init>(B)V

    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v10, :cond_7

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_7
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v8, "s"

    .line 103
    new-instance v9, Ljava/lang/Short;

    invoke-direct {v9, v2}, Ljava/lang/Short;-><init>(S)V

    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v10, :cond_8

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_8
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v8, "i"

    .line 104
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v10, :cond_9

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_9
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v8, "l"

    .line 105
    new-instance v9, Ljava/lang/Long;

    const-wide/16 v10, 0x1

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v10, :cond_a

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_a
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v8, "f"

    .line 106
    new-instance v9, Ljava/lang/Float;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v10}, Ljava/lang/Float;-><init>(F)V

    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v10, :cond_b

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_b
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v8, "d"

    .line 107
    new-instance v9, Ljava/lang/Double;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-direct {v9, v10, v11}, Ljava/lang/Double;-><init>(D)V

    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v10, :cond_c

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_c
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v8, "bool"

    .line 108
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v10, :cond_d

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_d
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    goto :goto_1

    :catch_1
    move-object v5, v1

    move v0, v3

    :goto_1
    if-nez v5, :cond_e

    :try_start_3
    const-string v5, "com.thoughtworks.xstream.converters.reflection.SunLimitedUnsafeReflectionProvider"

    .line 116
    invoke-static {v5}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_3
    .catch Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :cond_e
    move-object v4, v5

    goto :goto_2

    :catch_2
    :cond_f
    move v0, v3

    .line 124
    :catch_3
    :goto_2
    sput-object v4, Lcom/thoughtworks/xstream/core/JVM;->reflectionProviderType:Ljava/lang/Class;

    .line 125
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canWriteWithUnsafe:Z

    .line 126
    new-instance v0, Lcom/thoughtworks/xstream/core/JVM$1;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/JVM$1;-><init>()V

    .line 131
    new-instance v4, Lcom/thoughtworks/xstream/core/util/PresortedMap;

    invoke-direct {v4, v0}, Lcom/thoughtworks/xstream/core/util/PresortedMap;-><init>(Ljava/util/Comparator;)V

    const-string v5, "one"

    .line 132
    invoke-interface {v4, v5, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "two"

    .line 133
    invoke-interface {v4, v5, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :try_start_4
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v5, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    move v5, v2

    goto :goto_3

    :catch_4
    move v5, v3

    .line 140
    :goto_3
    sput-boolean v5, Lcom/thoughtworks/xstream/core/JVM;->optimizedTreeMapPutAll:Z

    .line 141
    new-instance v5, Lcom/thoughtworks/xstream/core/util/PresortedSet;

    invoke-direct {v5, v0}, Lcom/thoughtworks/xstream/core/util/PresortedSet;-><init>(Ljava/util/Comparator;)V

    .line 142
    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 144
    :try_start_5
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    move v0, v2

    goto :goto_4

    :catch_5
    move v0, v3

    .line 149
    :goto_4
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->optimizedTreeSetAddAll:Z

    .line 151
    :try_start_6
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "z"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "UTC"

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_6

    move v0, v2

    goto :goto_5

    :catch_6
    move v0, v3

    .line 156
    :goto_5
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat:Z

    .line 158
    :try_start_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "X"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "Z"

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    move v0, v2

    goto :goto_6

    :catch_7
    move v0, v3

    .line 165
    :goto_6
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canParseISO8601TimeZoneInDateFormat:Z

    .line 167
    :try_start_8
    new-instance v0, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    move v0, v2

    goto :goto_7

    :catch_8
    move v0, v3

    .line 173
    :goto_7
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream:Z

    const-string v0, "java.awt.Color"

    .line 175
    invoke-static {v0, v3}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_8

    :cond_10
    move v0, v3

    :goto_8
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable:Z

    const-string v0, "javax.swing.LookAndFeel"

    .line 176
    invoke-static {v0, v3}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_9

    :cond_11
    move v0, v3

    :goto_9
    sput-boolean v0, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable:Z

    const-string v0, "java.sql.Date"

    .line 177
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_12

    goto :goto_a

    :cond_12
    move v2, v3

    :goto_a
    sput-boolean v2, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable:Z

    const-string v0, "com.thoughtworks.xstream.core.util.Base64JavaUtilCodec"

    .line 180
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "com.thoughtworks.xstream.core.util.Base64JAXBCodec"

    .line 183
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_13
    if-eqz v0, :cond_14

    .line 187
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/core/StringCodec;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_9

    move-object v1, v0

    :catch_9
    :cond_14
    if-nez v1, :cond_15

    .line 193
    new-instance v1, Lcom/thoughtworks/xstream/core/util/Base64Encoder;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/core/util/Base64Encoder;-><init>()V

    .line 195
    :cond_15
    sput-object v1, Lcom/thoughtworks/xstream/core/JVM;->base64Codec:Lcom/thoughtworks/xstream/core/StringCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 1

    .line 82
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static getBase64Codec()Lcom/thoughtworks/xstream/core/StringCodec;
    .locals 1

    .line 424
    sget-object v0, Lcom/thoughtworks/xstream/core/JVM;->base64Codec:Lcom/thoughtworks/xstream/core/StringCodec;

    return-object v0
.end method

.method private static final getMajorJavaVersion()F
    .locals 1

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

    :catch_0
    const v0, 0x3fb33333    # 1.4f

    return v0
.end method

.method public static getStaxInputFactory()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 381
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isIBM()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.ibm.xml.xlxp.api.stax.XMLInputFactoryImpl"

    .line 383
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "com.sun.xml.internal.stream.XMLInputFactoryImpl"

    .line 385
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

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

    const/4 v0, 0x6

    .line 406
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isIBM()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.ibm.xml.xlxp.api.stax.XMLOutputFactoryImpl"

    .line 408
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "com.sun.xml.internal.stream.XMLOutputFactoryImpl"

    .line 410
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

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

    const/4 v0, 0x4

    .line 222
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    return v0
.end method

.method public static is15()Z
    .locals 1

    const/4 v0, 0x5

    .line 229
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    return v0
.end method

.method public static is16()Z
    .locals 1

    const/4 v0, 0x6

    .line 236
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    return v0
.end method

.method public static is17()Z
    .locals 1

    const/4 v0, 0x7

    .line 244
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    return v0
.end method

.method public static is18()Z
    .locals 1

    const/16 v0, 0x8

    .line 252
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

    const/16 v0, 0x9

    .line 268
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
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    .line 282
    sget v1, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    const/high16 v2, 0x41100000    # 9.0f

    cmpg-float v2, v1, v2

    int-to-float p0, p0

    if-gez v2, :cond_0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr p0, v2

    :cond_0
    cmpl-float p0, v1, p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 280
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Java version range starts with at least 1."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loadClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x1

    .line 307
    invoke-static {p0, v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2

    const/4 v0, 0x0

    .line 328
    :try_start_0
    sget-object v1, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.thoughtworks.xstream.core.JVM"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, p1, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    .line 550
    sget-object p0, Lcom/thoughtworks/xstream/core/JVM;->class$java$text$AttributedString:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "java.text.AttributedString"

    invoke-static {p0}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lcom/thoughtworks/xstream/core/JVM;->class$java$text$AttributedString:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 551
    :goto_0
    array-length v2, p0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v1, v2, :cond_2

    .line 552
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "text"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-le v1, v3, :cond_2

    move p0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move p0, v0

    .line 559
    :goto_1
    sget-object v1, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "com.thoughtworks.xstream.core.JVM$Test"

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/core/JVM;->class$com$thoughtworks$xstream$core$JVM$Test:Ljava/lang/Class;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    move v2, v0

    .line 560
    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 561
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "o"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-le v2, v3, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :goto_3
    const/4 v2, 0x0

    .line 569
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxInputFactory()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-object v3, v2

    goto :goto_4

    :catch_1
    move-exception v3

    .line 571
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 577
    :goto_4
    :try_start_1
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxOutputFactory()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_5

    :catch_2
    move-exception v2

    .line 579
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 583
    :catch_3
    :goto_5
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "XStream JVM diagnostics"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 584
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "java.specification.version: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "java.specification.version"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 585
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "java.specification.vendor: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "java.specification.vendor"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 586
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "java.specification.name: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "java.specification.name"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 587
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "java.vm.vendor: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/thoughtworks/xstream/core/JVM;->vendor:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 588
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "java.vendor: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "java.vendor"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 589
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "java.vm.name: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "java.vm.name"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 590
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Version: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/thoughtworks/xstream/core/JVM;->majorJavaVersion:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 591
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "XStream support for enhanced Mode: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canUseSunUnsafeReflectionProvider()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 592
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "XStream support for reduced Mode: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canUseSunLimitedUnsafeReflectionProvider()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 593
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Supports AWT: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 594
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Supports Swing: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 595
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Supports SQL: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 596
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Java Beans EventHandler present: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "java.beans.EventHandler"

    invoke-static {v7}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_6

    move v0, v4

    :cond_6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 597
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Standard StAX XMLInputFactory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 598
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Standard StAX XMLOutputFactory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 599
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Standard Base64 Codec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getBase64Codec()Lcom/thoughtworks/xstream/core/StringCodec;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 600
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Optimized TreeSet.addAll: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeSetAddAll()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 601
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Optimized TreeMap.putAll: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeMapPutAll()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 602
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Can parse UTC date format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canParseUTCDateFormat()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 603
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Can create derive ObjectOutputStream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Reverse field order detected for JDK: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 605
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "Reverse field order detected (only if JVM class itself has been compiled): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

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

    .line 363
    sget-object v0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProviderType:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    return-object p0
.end method

.method public static reverseFieldDefinition()Z
    .locals 1

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
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/JVM;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flushCache()V
    .locals 0

    return-void
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x1

    .line 314
    invoke-static {p1, v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 0

    .line 342
    invoke-static {p1, p2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
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
