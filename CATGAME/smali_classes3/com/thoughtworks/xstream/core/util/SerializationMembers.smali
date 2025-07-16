.class public Lcom/thoughtworks/xstream/core/util/SerializationMembers;
.super Ljava/lang/Object;
.source "SerializationMembers.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/Caching;


# static fields
.field private static final EMPTY_ARGS:[Ljava/lang/Object;

.field private static final EMPTY_CLASSES:[Ljava/lang/Class;

.field private static final NO_FIELDS:Ljava/util/Map;

.field private static final NO_METHOD:Ljava/lang/reflect/Method;

.field private static final OBJECT_TYPE_FIELDS:[Lcom/thoughtworks/xstream/core/util/FastField;

.field private static final PERSISTENT_FIELDS_MODIFIER:I = 0x1a

.field static synthetic class$java$io$ObjectInputStream:Ljava/lang/Class;

.field static synthetic class$java$io$ObjectOutputStream:Ljava/lang/Class;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;


# instance fields
.field private declaredCache:Ljava/util/Map;

.field private final fieldCache:Ljava/util/Map;

.field private resRepCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lcom/thoughtworks/xstream/core/util/SerializationMembers$1;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/SerializationMembers$1;-><init>()V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Object;

    .line 44
    sput-object v0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->EMPTY_ARGS:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Class;

    .line 45
    sput-object v0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->EMPTY_CLASSES:[Ljava/lang/Class;

    .line 46
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sput-object v0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_FIELDS:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/thoughtworks/xstream/core/util/FastField;

    .line 48
    new-instance v2, Lcom/thoughtworks/xstream/core/util/FastField;

    sget-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    const-string v4, "java.lang.Object"

    if-nez v3, :cond_0

    .line 49
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    :cond_0
    const-string v5, "readResolve"

    invoke-direct {v2, v3, v5}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/thoughtworks/xstream/core/util/FastField;

    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 50
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    :cond_1
    const-string v3, "writeReplace"

    invoke-direct {v1, v2, v3}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/thoughtworks/xstream/core/util/FastField;

    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 51
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    :cond_2
    const-string v3, "readObject"

    invoke-direct {v1, v2, v3}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/thoughtworks/xstream/core/util/FastField;

    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v2, :cond_3

    .line 52
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    :cond_3
    const-string v3, "writeObject"

    invoke-direct {v1, v2, v3}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->OBJECT_TYPE_FIELDS:[Lcom/thoughtworks/xstream/core/util/FastField;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->declaredCache:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->resRepCache:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->fieldCache:Ljava/util/Map;

    const/4 v0, 0x0

    move v1, v0

    .line 58
    :goto_0
    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->OBJECT_TYPE_FIELDS:[Lcom/thoughtworks/xstream/core/util/FastField;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->declaredCache:Ljava/util/Map;

    aget-object v2, v2, v1

    sget-object v4, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->resRepCache:Ljava/util/Map;

    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->OBJECT_TYPE_FIELDS:[Lcom/thoughtworks/xstream/core/util/FastField;

    aget-object v2, v2, v0

    sget-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 49
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

.method private getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->declaredCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 183
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    move-object v1, p1

    .line 190
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->declaredCache:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method private getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 169
    sget-object p3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    if-eq p2, p3, :cond_0

    if-nez p4, :cond_1

    .line 170
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    return-object p2
.end method

.method private getRRMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    .line 196
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->resRepCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    .line 199
    sget-object v1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->EMPTY_CLASSES:[Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 200
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 201
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x5

    if-nez v1, :cond_2

    .line 202
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-gtz v1, :cond_0

    .line 203
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 204
    :cond_0
    sget-object p1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 208
    sget-object p1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_2
    move-object v1, p2

    .line 210
    :goto_1
    iget-object p1, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->resRepCache:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_3
    sget-object p1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    if-ne v1, p1, :cond_4

    const/4 v1, 0x0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public callReadObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    .locals 5

    :try_start_0
    const-string v0, "readObject"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 130
    sget-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "java.io.ObjectInputStream"

    .line 131
    invoke-static {v3}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    :cond_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 130
    invoke-direct {p0, p1, v0, v2, v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p3, v0, v4

    .line 132
    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 136
    new-instance p3, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v0, "Failed calling method"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 134
    new-instance p3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v0, "Cannot access method"

    invoke-direct {p3, v0, p1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object p1, p3

    :goto_1
    if-nez p1, :cond_1

    return-void

    .line 139
    :cond_1
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, ".readObject()"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "method"

    invoke-virtual {p1, p3, p2}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    throw p1
.end method

.method public callReadResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "readResolve"

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getRRMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    :try_start_0
    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->EMPTY_ARGS:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 82
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Failed calling method"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 80
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v2, "Cannot access method"

    invoke-direct {v1, v2, p1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :goto_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ".readResolve()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "method"

    invoke-virtual {v1, v0, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    throw v1

    :cond_1
    return-object p1
.end method

.method public callWriteObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V
    .locals 5

    :try_start_0
    const-string v0, "writeObject"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 152
    sget-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectOutputStream:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "java.io.ObjectOutputStream"

    .line 153
    invoke-static {v3}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectOutputStream:Ljava/lang/Class;

    :cond_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 152
    invoke-direct {p0, p1, v0, v2, v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p3, v0, v4

    .line 154
    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 158
    new-instance p3, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v0, "Failed calling method"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 156
    new-instance p3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v0, "Cannot access method"

    invoke-direct {p3, v0, p1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object p1, p3

    :goto_1
    if-nez p1, :cond_1

    return-void

    .line 161
    :cond_1
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string p3, ".writeObject()"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "method"

    invoke-virtual {p1, p3, p2}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    throw p1
.end method

.method public callWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "writeReplace"

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getRRMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 101
    :try_start_0
    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->EMPTY_ARGS:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 104
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/thoughtworks/xstream/converters/ErrorWritingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 110
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Failed calling method"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 108
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v2, "Cannot access method"

    invoke-direct {v1, v2, p1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object p1, v1

    .line 114
    :goto_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".writeReplace()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {p1, v1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    throw p1

    :cond_2
    return-object p1
.end method

.method public flushCache()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->declaredCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->OBJECT_TYPE_FIELDS:[Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 254
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->resRepCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getSerializablePersistentFields(Ljava/lang/Class;)Ljava/util/Map;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->fieldCache:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_5

    :try_start_0
    const-string v2, "serialPersistentFields"

    .line 223
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    const/16 v4, 0x1a

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 226
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/ObjectStreamField;

    check-cast v2, [Ljava/io/ObjectStreamField;

    if-eqz v2, :cond_2

    .line 228
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, 0x0

    .line 229
    :goto_0
    :try_start_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 230
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    :cond_1
    move-object v1, v3

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 238
    :goto_1
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v4, "Incompatible field type"

    invoke-direct {v2, v4, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 236
    :goto_2
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v4, "Cannot get field"

    invoke-direct {v2, v4, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move-object v1, v3

    goto :goto_5

    :catch_5
    :cond_2
    :goto_4
    move-object v2, v0

    :goto_5
    if-nez v2, :cond_4

    if-nez v1, :cond_3

    .line 245
    sget-object v1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_FIELDS:Ljava/util/Map;

    .line 247
    :cond_3
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->fieldCache:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 241
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ".serialPersistentFields"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "field"

    invoke-virtual {v2, v0, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    throw v2

    .line 249
    :cond_5
    :goto_6
    sget-object p1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_FIELDS:Ljava/util/Map;

    if-ne v1, p1, :cond_6

    goto :goto_7

    :cond_6
    move-object v0, v1

    :goto_7
    return-object v0
.end method

.method public supportsReadObject(Ljava/lang/Class;Z)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 123
    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.io.ObjectInputStream"

    .line 124
    invoke-static {v2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    :cond_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "readObject"

    .line 123
    invoke-direct {p0, p1, v2, v1, p2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    return v0
.end method

.method public supportsWriteObject(Ljava/lang/Class;Z)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 145
    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectOutputStream:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.io.ObjectOutputStream"

    .line 146
    invoke-static {v2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectOutputStream:Ljava/lang/Class;

    :cond_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "writeObject"

    .line 145
    invoke-direct {p0, p1, v2, v1, p2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    return v0
.end method
