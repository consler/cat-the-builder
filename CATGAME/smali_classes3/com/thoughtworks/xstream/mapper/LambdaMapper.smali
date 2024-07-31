.class public Lcom/thoughtworks/xstream/mapper/LambdaMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "LambdaMapper.java"


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 32
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 33
    return-void
.end method


# virtual methods
.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 10
    .param p1, "type"    # Ljava/lang/Class;

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "replacement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/util/Types;->isLambdaType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 41
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 42
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-nez v0, :cond_3

    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 43
    aget-object v4, v1, v2

    .line 44
    .local v4, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 45
    .local v8, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->isDefault()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 46
    move-object v0, v4

    .line 47
    goto :goto_2

    .line 44
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 42
    .end local v4    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "i":I
    :cond_2
    aget-object v0, v1, v3

    .line 54
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    goto :goto_3

    .line 55
    :cond_4
    const-class v0, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    .line 58
    :cond_5
    :goto_3
    if-nez v0, :cond_6

    move-object v1, p1

    goto :goto_4

    :cond_6
    move-object v1, v0

    :goto_4
    invoke-super {p0, v1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
