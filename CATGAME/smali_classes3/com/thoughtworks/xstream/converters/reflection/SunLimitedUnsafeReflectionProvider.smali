.class public Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;
.super Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;
.source "SunLimitedUnsafeReflectionProvider.java"


# static fields
.field static synthetic class$java$lang$Void:Ljava/lang/Class;

.field static synthetic class$sun$misc$Unsafe:Ljava/lang/Class;

.field protected static final exception:Ljava/lang/Exception;

.field protected static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "u":Lsun/misc/Unsafe;
    const/4 v1, 0x0

    .line 44
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_0
    sget-object v2, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$sun$misc$Unsafe:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "sun.misc.Unsafe"

    invoke-static {v2}, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$sun$misc$Unsafe:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$sun$misc$Unsafe:Ljava/lang/Class;

    :goto_0
    const-string v3, "theUnsafe"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 45
    .local v2, "unsafeField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .end local v2    # "unsafeField":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/IllegalAccessException;
    move-object v1, v2

    goto :goto_2

    .line 51
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    move-object v1, v2

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 49
    :catch_2
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    move-object v1, v2

    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_1

    .line 47
    :catch_3
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/SecurityException;
    move-object v1, v2

    .line 55
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_1
    nop

    .line 56
    :goto_2
    sput-object v1, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->exception:Ljava/lang/Exception;

    .line 57
    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    .line 58
    .end local v0    # "u":Lsun/misc/Unsafe;
    .end local v1    # "ex":Ljava/lang/Exception;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V
    .locals 0
    .param p1, "fieldDictionary"    # Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;

    .line 71
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V

    .line 72
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 44
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

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->init()V

    .line 104
    return-object p0
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "type"    # Ljava/lang/Class;

    .line 75
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->exception:Ljava/lang/Exception;

    const-string v1, "construction-type"

    const-string v2, "Cannot construct type"

    if-nez v0, :cond_2

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v3, :cond_1

    sget-object v3, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$java$lang$Void:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "java.lang.Void"

    invoke-static {v3}, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$java$lang$Void:Ljava/lang/Class;

    :cond_0
    if-eq p1, v3, :cond_1

    .line 85
    :try_start_0
    sget-object v3, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v4, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    goto :goto_1

    .line 88
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v4, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v4, v2, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    .end local v3    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 86
    :catch_2
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/SecurityException;
    new-instance v4, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v4, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    .line 92
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_0
    goto :goto_1

    .line 82
    :cond_1
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v3, "Type void cannot have an instance"

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 94
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    throw v0

    .line 76
    .end local v0    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :cond_2
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    sget-object v3, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .local v0, "ex":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    throw v0
.end method

.method protected validateFieldAccess(Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 100
    return-void
.end method
