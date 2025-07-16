.class public Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;
.super Ljava/lang/Object;
.source "BeanProvider.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/javabean/BeanProvider$Visitor;
    }
.end annotation


# static fields
.field protected static final NO_PARAMS:[Ljava/lang/Object;


# instance fields
.field protected propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    sput-object v0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->NO_PARAMS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    new-instance v1, Lcom/thoughtworks/xstream/converters/javabean/NativePropertySorter;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/converters/javabean/NativePropertySorter;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;-><init>(Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;-><init>(Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2

    .line 51
    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    new-instance v1, Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;-><init>(Ljava/util/Comparator;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;-><init>(Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;-><init>(Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;)V

    return-void
.end method


# virtual methods
.method public canInstantiate(Ljava/lang/Class;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 139
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/thoughtworks/xstream/converters/ErrorWritingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    nop

    :catch_0
    :cond_0
    return v0
.end method

.method protected canStreamProperty(Ljava/beans/PropertyDescriptor;)Z
    .locals 1

    .line 174
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected getDefaultConstrutor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    .line 153
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x0

    .line 154
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 155
    aget-object v1, p1, v0

    .line 156
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/beans/PropertyDescriptor;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyDescriptor(Ljava/lang/Class;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected getSerializableProperties(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;
    .locals 3

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertiesFor(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyDescriptor;

    .line 166
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->canStreamProperty(Ljava/beans/PropertyDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/beans/PropertyDescriptor;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/beans/PropertyDescriptor;

    check-cast p1, [Ljava/beans/PropertyDescriptor;

    return-object p1
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const-string v0, "Cannot construct type"

    .line 67
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 75
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 73
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 71
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 69
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v0, "construction-type"

    .line 77
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    throw v2
.end method

.method public propertyDefinedInClass(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyDescriptorOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public propertyWriteable(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public visitSerializableProperties(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;)V
    .locals 9

    const-string v0, "Cannot get property"

    .line 82
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->getSerializableProperties(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 83
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 85
    aget-object v4, v1, v3

    .line 87
    :try_start_0
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    .line 88
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    .line 90
    invoke-interface {p2, v6, v7}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;->shouldVisit(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-array v8, v2, [Ljava/lang/Object;

    .line 91
    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 92
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {p2, v6, v8, v7, v5}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;->visit(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 99
    new-instance v6, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v6, v0, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v5

    .line 97
    new-instance v6, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v7, "Cannot access property"

    invoke-direct {v6, v7, v5}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v5

    .line 95
    new-instance v6, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v6, v0, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v5, v6

    :goto_2
    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "property"

    invoke-virtual {v5, p2, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    throw v5

    :cond_2
    return-void
.end method

.method public writeProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "Cannot set property"

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/beans/PropertyDescriptor;

    move-result-object p2

    .line 112
    :try_start_0
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 118
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-virtual {p3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p3

    invoke-direct {v1, v0, p3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p3

    .line 116
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v1, "Cannot access property"

    invoke-direct {v0, v1, p3}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p3, v0

    goto :goto_1

    :catch_2
    move-exception p3

    .line 114
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v1, v0, p3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object p3, v1

    :goto_1
    if-nez p3, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "property"

    invoke-virtual {p3, p2, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    throw p3
.end method
