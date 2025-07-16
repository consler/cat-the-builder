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

    const/4 v0, 0x0

    .line 44
    :try_start_0
    sget-object v1, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$sun$misc$Unsafe:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "sun.misc.Unsafe"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$sun$misc$Unsafe:Ljava/lang/Class;

    :cond_0
    const-string v2, "theUnsafe"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    :goto_0
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 56
    :goto_1
    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->exception:Ljava/lang/Exception;

    .line 57
    sput-object v1, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 44
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

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->init()V

    return-object p0
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    .line 75
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->exception:Ljava/lang/Exception;

    const-string v1, "construction-type"

    const-string v2, "Cannot construct type"

    if-nez v0, :cond_2

    .line 81
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$java$lang$Void:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Void"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->class$java$lang$Void:Ljava/lang/Class;

    :cond_0
    if-eq p1, v0, :cond_1

    .line 85
    :try_start_0
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SunLimitedUnsafeReflectionProvider;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 91
    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v3, v2, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 89
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v3, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 87
    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v3, v2, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :cond_1
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v0, "Type void cannot have an instance"

    invoke-direct {v3, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 94
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    throw v3

    .line 76
    :cond_2
    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v3, v2, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    throw v3
.end method

.method protected validateFieldAccess(Ljava/lang/reflect/Field;)V
    .locals 0

    return-void
.end method
