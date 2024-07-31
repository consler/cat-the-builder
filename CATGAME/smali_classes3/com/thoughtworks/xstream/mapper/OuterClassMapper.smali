.class public Lcom/thoughtworks/xstream/mapper/OuterClassMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "OuterClassMapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/Caching;


# static fields
.field private static final EMPTY_NAMES:[Ljava/lang/String;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;


# instance fields
.field private final alias:Ljava/lang/String;

.field private final innerFields:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->EMPTY_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 34
    const-string v0, "outer-class"

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;)V
    .locals 3
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "alias"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 39
    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->alias:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->innerFields:Ljava/util/Map;

    .line 41
    sget-object v1, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->class$java$lang$Object:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->EMPTY_NAMES:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 41
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

.method private getInnerFieldNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 7
    .param p1, "type"    # Ljava/lang/Class;

    .line 76
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->innerFields:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 77
    .local v0, "innerFieldNames":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 78
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->getInnerFieldNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 80
    .local v1, "declaredFields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 81
    aget-object v3, v1, v2

    .line 82
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "this$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 84
    .local v4, "temp":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    move-object v0, v4

    .line 86
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 80
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "temp":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->innerFields:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .end local v1    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public flushCache()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->innerFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->class$java$lang$Object:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 96
    return-void
.end method

.method public realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "serialized"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->alias:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const/4 v0, -0x1

    .line 59
    .local v0, "idx":I
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->alias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 60
    .local v1, "len":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 61
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    .line 63
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 65
    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    .line 66
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->getInnerFieldNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "innerFieldNames":[Ljava/lang/String;
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 68
    aget-object v3, v2, v0

    return-object v3

    .line 72
    .end local v0    # "idx":I
    .end local v1    # "len":I
    .end local v2    # "innerFieldNames":[Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "memberName"    # Ljava/lang/String;

    .line 45
    const-string v0, "this$"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->getInnerFieldNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "innerFieldNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 48
    aget-object v2, v0, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->alias:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;->alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 47
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "innerFieldNames":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
