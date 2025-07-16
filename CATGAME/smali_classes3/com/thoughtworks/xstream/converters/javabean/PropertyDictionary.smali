.class public Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;
.super Ljava/lang/Object;
.source "PropertyDictionary.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/Caching;


# static fields
.field static synthetic class$java$lang$Object:Ljava/lang/Class;


# instance fields
.field private transient propertyNameCache:Ljava/util/Map;

.field private final sorter:Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/NativePropertySorter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/javabean/NativePropertySorter;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;-><init>(Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyNameCache:Ljava/util/Map;

    .line 46
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->sorter:Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;

    return-void
.end method

.method private buildMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyNameCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    .line 121
    :try_start_0
    sget-object v0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->class$java$lang$Object:Ljava/lang/Class;

    :cond_0
    invoke-static {p1, v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    new-instance v1, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>()V

    .line 128
    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    const/4 v2, 0x0

    .line 129
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 130
    aget-object v3, v0, v2

    .line 131
    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->sorter:Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;

    invoke-interface {v0, p1, v1}, Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;->sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyNameCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v2, "Cannot get BeanInfo of type"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "bean-type"

    .line 124
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    throw v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 121
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


# virtual methods
.method public flushCache()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyNameCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public propertiesFor(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->buildMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public property(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;
    .locals 2

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyDescriptorOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 79
    new-instance p2, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;

    .line 80
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p2, p1, v1, v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2

    .line 76
    :cond_1
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public propertyDescriptor(Ljava/lang/Class;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 1

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyDescriptorOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public propertyDescriptorOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->buildMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/beans/PropertyDescriptor;

    return-object p1
.end method

.method public serializablePropertiesFor(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 5

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->buildMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/beans/PropertyDescriptor;

    .line 57
    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 58
    new-instance v3, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;

    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v3, p1, v4, v2}, Lcom/thoughtworks/xstream/converters/javabean/BeanProperty;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 58
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
