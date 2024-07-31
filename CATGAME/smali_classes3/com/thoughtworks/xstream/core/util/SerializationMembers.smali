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

    .line 44
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->EMPTY_ARGS:[Ljava/lang/Object;

    .line 45
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->EMPTY_CLASSES:[Ljava/lang/Class;

    .line 46
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sput-object v0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_FIELDS:Ljava/util/Map;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/thoughtworks/xstream/core/util/FastField;

    new-instance v2, Lcom/thoughtworks/xstream/core/util/FastField;

    sget-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    const-string v4, "java.lang.Object"

    if-nez v3, :cond_0

    .line 49
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const-string v5, "readResolve"

    invoke-direct {v2, v3, v5}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/thoughtworks/xstream/core/util/FastField;

    sget-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v3, :cond_1

    .line 50
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    const-string v5, "writeReplace"

    invoke-direct {v2, v3, v5}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/thoughtworks/xstream/core/util/FastField;

    sget-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 51
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    const-string v5, "readObject"

    invoke-direct {v2, v3, v5}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/thoughtworks/xstream/core/util/FastField;

    sget-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v3, :cond_3

    .line 52
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    const-string v4, "writeObject"

    invoke-direct {v2, v3, v4}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->OBJECT_TYPE_FIELDS:[Lcom/thoughtworks/xstream/core/util/FastField;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 4

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

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->OBJECT_TYPE_FIELDS:[Lcom/thoughtworks/xstream/core/util/FastField;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->declaredCache:Ljava/util/Map;

    aget-object v1, v1, v0

    sget-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->resRepCache:Ljava/util/Map;

    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->OBJECT_TYPE_FIELDS:[Lcom/thoughtworks/xstream/core/util/FastField;

    aget-object v2, v2, v0

    sget-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 49
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

.method private getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "parameterTypes"    # [Ljava/lang/Class;

    .line 176
    if-nez p1, :cond_0

    .line 177
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 180
    .local v0, "method":Lcom/thoughtworks/xstream/core/util/FastField;
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->declaredCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 181
    .local v1, "result":Ljava/lang/reflect/Method;
    if-nez v1, :cond_2

    .line 183
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    .line 184
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_1
    goto :goto_0

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 190
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->declaredCache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_2
    return-object v1
.end method

.method private getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "parameterTypes"    # [Ljava/lang/Class;
    .param p4, "includeBaseclasses"    # Z

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 169
    .local v0, "method":Ljava/lang/reflect/Method;
    sget-object v1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    if-eq v0, v1, :cond_1

    if-nez p4, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 169
    :goto_1
    return-object v1
.end method

.method private getRRMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;

    .line 196
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 197
    .local v0, "method":Lcom/thoughtworks/xstream/core/util/FastField;
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->resRepCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 198
    .local v1, "result":Ljava/lang/reflect/Method;
    if-nez v1, :cond_3

    .line 199
    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->EMPTY_CLASSES:[Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 201
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_2

    .line 202
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-gtz v2, :cond_0

    .line 203
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 204
    :cond_0
    sget-object v1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 207
    :cond_1
    if-nez v1, :cond_2

    .line 208
    sget-object v1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    .line 210
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->resRepCache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_3
    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_METHOD:Ljava/lang/reflect/Method;

    if-ne v1, v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    return-object v2
.end method


# virtual methods
.method public callReadObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "stream"    # Ljava/io/ObjectInputStream;

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :try_start_0
    const-string v1, "readObject"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "java.io.ObjectInputStream"

    .line 131
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 130
    invoke-direct {p0, p1, v1, v3, v5}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 132
    .local v1, "readObjectMethod":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    nop

    .end local v1    # "readObjectMethod":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    const-string v4, "Failed calling method"

    invoke-direct {v2, v4, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_1

    .line 133
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v3, "Cannot access method"

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 137
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 138
    :goto_1
    if-nez v0, :cond_1

    .line 142
    return-void

    .line 139
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ".readObject()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    throw v0
.end method

.method public callReadResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 74
    .local v0, "resultType":Ljava/lang/Class;
    const-string v1, "readResolve"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getRRMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 75
    .local v1, "readResolveMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 76
    const/4 v2, 0x0

    .line 78
    .local v2, "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :try_start_0
    sget-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->EMPTY_ARGS:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    const-string v6, "Failed calling method"

    invoke-direct {v4, v6, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v4

    goto :goto_0

    .line 79
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v5, "Cannot access method"

    invoke-direct {v4, v5, v3}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v4

    .line 83
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 84
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ".readResolve()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "method"

    invoke-virtual {v2, v4, v3}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    throw v2

    .line 87
    .end local v2    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :cond_1
    return-object p1
.end method

.method public callWriteObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "instance"    # Ljava/lang/Object;
    .param p3, "stream"    # Ljava/io/ObjectOutputStream;

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :try_start_0
    const-string v1, "writeObject"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectOutputStream:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "java.io.ObjectOutputStream"

    .line 153
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectOutputStream:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectOutputStream:Ljava/lang/Class;

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 152
    invoke-direct {p0, p1, v1, v3, v5}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 154
    .local v1, "readObjectMethod":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    nop

    .end local v1    # "readObjectMethod":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    const-string v4, "Failed calling method"

    invoke-direct {v2, v4, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_1

    .line 155
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v3, "Cannot access method"

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 159
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 160
    :goto_1
    if-nez v0, :cond_1

    .line 164
    return-void

    .line 161
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ".writeObject()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    throw v0
.end method

.method public callWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 93
    if-nez p1, :cond_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "objectType":Ljava/lang/Class;
    const-string v1, "writeReplace"

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getRRMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 98
    .local v1, "writeReplaceMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2

    .line 99
    const/4 v2, 0x0

    .line 101
    .local v2, "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :try_start_0
    sget-object v3, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->EMPTY_ARGS:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 102
    .local v3, "replaced":Ljava/lang/Object;
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    invoke-virtual {p0, v3}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/thoughtworks/xstream/converters/ErrorWritingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 106
    :cond_1
    return-object v3

    .line 111
    .end local v3    # "replaced":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    move-object v2, v3

    goto :goto_1

    .line 109
    .end local v3    # "e":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :catch_1
    move-exception v3

    .line 110
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    const-string v6, "Failed calling method"

    invoke-direct {v4, v6, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v4

    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 107
    :catch_2
    move-exception v3

    .line 108
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v5, "Cannot access method"

    invoke-direct {v4, v5, v3}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v4

    .line 113
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    nop

    .line 114
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ".writeReplace()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "method"

    invoke-virtual {v2, v4, v3}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    throw v2

    .line 117
    .end local v2    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :cond_2
    return-object p1
.end method

.method public flushCache()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->declaredCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->OBJECT_TYPE_FIELDS:[Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 254
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->resRepCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->OBJECT_TYPE_FIELDS:[Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 255
    return-void
.end method

.method public getSerializablePersistentFields(Ljava/lang/Class;)Ljava/util/Map;
    .locals 8
    .param p1, "type"    # Ljava/lang/Class;

    .line 216
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 217
    return-object v0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->fieldCache:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 220
    .local v1, "result":Ljava/util/Map;
    if-nez v1, :cond_4

    .line 221
    const/4 v2, 0x0

    .line 223
    .local v2, "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :try_start_0
    const-string v3, "serialPersistentFields"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 224
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    const/16 v5, 0x1a

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    .line 225
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 226
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/ObjectStreamField;

    check-cast v4, [Ljava/io/ObjectStreamField;

    .line 227
    .local v4, "fields":[Ljava/io/ObjectStreamField;
    if-eqz v4, :cond_1

    .line 228
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v1, v5

    .line 229
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 230
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v4, v5

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fields":[Ljava/io/ObjectStreamField;
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/ClassCastException;
    new-instance v4, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v5, "Incompatible field type"

    invoke-direct {v4, v5, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v4

    goto :goto_2

    .line 235
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v3

    .line 236
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v5, "Cannot get field"

    invoke-direct {v4, v5, v3}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v4

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 234
    :catch_2
    move-exception v3

    .line 239
    :cond_1
    :goto_1
    nop

    .line 240
    :goto_2
    if-nez v2, :cond_3

    .line 244
    if-nez v1, :cond_2

    .line 245
    sget-object v1, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_FIELDS:Ljava/util/Map;

    .line 247
    :cond_2
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->fieldCache:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 241
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ".serialPersistentFields"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "field"

    invoke-virtual {v2, v3, v0}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    throw v2

    .line 249
    .end local v2    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :cond_4
    :goto_3
    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->NO_FIELDS:Ljava/util/Map;

    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_5
    move-object v0, v1

    :goto_4
    return-object v0
.end method

.method public supportsReadObject(Ljava/lang/Class;Z)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "includeBaseClasses"    # Z

    .line 123
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 124
    const-string v2, "java.io.ObjectInputStream"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 123
    const-string v2, "readObject"

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    return v0
.end method

.method public supportsWriteObject(Ljava/lang/Class;Z)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "includeBaseClasses"    # Z

    .line 145
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectOutputStream:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 146
    const-string v2, "java.io.ObjectOutputStream"

    invoke-static {v2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->class$java$io$ObjectOutputStream:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 145
    const-string v2, "writeObject"

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    return v0
.end method
