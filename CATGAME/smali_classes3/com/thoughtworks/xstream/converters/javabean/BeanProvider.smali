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

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

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

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;)V
    .locals 0
    .param p1, "propertyDictionary"    # Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .param p1, "propertyNameComparator"    # Ljava/util/Comparator;

    .line 51
    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    new-instance v1, Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;-><init>(Ljava/util/Comparator;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;-><init>(Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;-><init>(Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;)V

    .line 52
    return-void
.end method


# virtual methods
.method public canInstantiate(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .line 139
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/thoughtworks/xstream/converters/ErrorWritingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    return v0

    .line 139
    .end local v1    # "e":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :cond_0
    :goto_0
    return v0
.end method

.method protected canStreamProperty(Ljava/beans/PropertyDescriptor;)Z
    .locals 1
    .param p1, "descriptor"    # Ljava/beans/PropertyDescriptor;

    .line 174
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getDefaultConstrutor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;

    .line 153
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 154
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 155
    aget-object v2, v0, v1

    .line 156
    .local v2, "c":Ljava/lang/reflect/Constructor;
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    return-object v2

    .line 154
    .end local v2    # "c":Ljava/lang/reflect/Constructor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/beans/PropertyDescriptor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 183
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyDescriptor(Ljava/lang/Class;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected getSerializableProperties(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "result":Ljava/util/List;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertiesFor(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/beans/PropertyDescriptor;

    .line 166
    .local v2, "descriptor":Ljava/beans/PropertyDescriptor;
    invoke-virtual {p0, v2}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->canStreamProperty(Ljava/beans/PropertyDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v2    # "descriptor":Ljava/beans/PropertyDescriptor;
    :cond_0
    goto :goto_0

    .line 170
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/beans/PropertyDescriptor;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/beans/PropertyDescriptor;

    check-cast v1, [Ljava/beans/PropertyDescriptor;

    return-object v1
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;

    .line 65
    const-string v0, "Cannot construct type"

    const/4 v1, 0x0

    .line 67
    .local v1, "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/ExceptionInInitializerError;
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v3, v0, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .end local v1    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    .local v0, "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    goto :goto_1

    .line 72
    .end local v0    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    .end local v2    # "e":Ljava/lang/ExceptionInInitializerError;
    .restart local v1    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :catch_1
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v3, v0, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .end local v1    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    .end local v2    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    goto :goto_0

    .line 70
    .end local v0    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    .restart local v1    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :catch_2
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v3, v0, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .end local v1    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    goto :goto_0

    .line 68
    .end local v0    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    .restart local v1    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :catch_3
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v3, v0, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 76
    .end local v1    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    .end local v2    # "e":Ljava/lang/InstantiationException;
    .restart local v0    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :goto_0
    nop

    .line 77
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "construction-type"

    invoke-virtual {v0, v2, v1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    throw v0
.end method

.method public propertyDefinedInClass(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 131
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyDescriptorOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public propertyWriteable(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .line 179
    .local v0, "property":Ljava/beans/PropertyDescriptor;
    invoke-virtual {v0}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public visitSerializableProperties(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;)V
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "visitor"    # Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;

    .line 82
    const-string v0, "Cannot get property"

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->getSerializableProperties(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 83
    .local v1, "propertyDescriptors":[Ljava/beans/PropertyDescriptor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 84
    const/4 v3, 0x0

    .line 85
    .local v3, "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    aget-object v4, v1, v2

    .line 87
    .local v4, "property":Ljava/beans/PropertyDescriptor;
    :try_start_0
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    .line 88
    .local v5, "readMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    .line 90
    .local v7, "definedIn":Ljava/lang/Class;
    invoke-interface {p2, v6, v7}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;->shouldVisit(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 91
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 92
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {p2, v6, v9, v7, v8}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;->visit(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    .end local v5    # "readMethod":Ljava/lang/reflect/Method;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "definedIn":Ljava/lang/Class;
    .end local v8    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 99
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v6

    goto :goto_2

    .line 96
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v5

    .line 97
    .local v5, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v7, "Cannot access property"

    invoke-direct {v6, v7, v5}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v6

    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 94
    :catch_2
    move-exception v5

    .line 95
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v6, v0, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v6

    .line 100
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    nop

    .line 101
    :goto_2
    if-nez v3, :cond_1

    .line 83
    .end local v3    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    .end local v4    # "property":Ljava/beans/PropertyDescriptor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .restart local v3    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    .restart local v4    # "property":Ljava/beans/PropertyDescriptor;
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "property"

    invoke-virtual {v3, v5, v0}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    throw v3

    .line 106
    .end local v2    # "i":I
    .end local v3    # "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    .end local v4    # "property":Ljava/beans/PropertyDescriptor;
    :cond_2
    return-void
.end method

.method public writeProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 109
    const-string v0, "Cannot set property"

    const/4 v1, 0x0

    .line 110
    .local v1, "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/beans/PropertyDescriptor;

    move-result-object v2

    .line 112
    .local v2, "property":Ljava/beans/PropertyDescriptor;
    :try_start_0
    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v3

    .line 118
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    goto :goto_1

    .line 115
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v4, "Cannot access property"

    invoke-direct {v3, v4, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 113
    :catch_2
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v4, v0, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    .line 119
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 120
    :goto_1
    if-nez v1, :cond_0

    .line 124
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "property"

    invoke-virtual {v1, v3, v0}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    throw v1
.end method
