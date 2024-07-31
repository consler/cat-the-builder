.class public Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;
.super Ljava/lang/Object;
.source "FluentPropertyBeanIntrospector.java"

# interfaces
.implements Lorg/apache/commons/beanutils/BeanIntrospector;


# static fields
.field public static final DEFAULT_WRITE_METHOD_PREFIX:Ljava/lang/String; = "set"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final writeMethodPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    const-string v0, "set"

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;-><init>(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "writePrefix"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    .line 99
    if-eqz p1, :cond_0

    .line 103
    iput-object p1, p0, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->writeMethodPrefix:Ljava/lang/String;

    .line 104
    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Prefix for write methods must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createFluentPropertyDescritor(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/beans/PropertyDescriptor;

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method private propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .line 162
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->getWriteMethodPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "methodName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-static {v0}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1
.end method


# virtual methods
.method public getWriteMethodPrefix()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->writeMethodPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public introspect(Lorg/apache/commons/beanutils/IntrospectionContext;)V
    .locals 10
    .param p1, "icontext"    # Lorg/apache/commons/beanutils/IntrospectionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 134
    invoke-interface {p1}, Lorg/apache/commons/beanutils/IntrospectionContext;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 135
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->getWriteMethodPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    invoke-direct {p0, v3}, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->propertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "propertyName":Ljava/lang/String;
    nop

    .line 138
    invoke-interface {p1, v4}, Lorg/apache/commons/beanutils/IntrospectionContext;->getPropertyDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v5

    .line 140
    .local v5, "pd":Ljava/beans/PropertyDescriptor;
    if-nez v5, :cond_0

    .line 141
    :try_start_0
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->createFluentPropertyDescritor(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/apache/commons/beanutils/IntrospectionContext;->addPropertyDescriptor(Ljava/beans/PropertyDescriptor;)V

    goto :goto_1

    .line 143
    :cond_0
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    if-nez v6, :cond_1

    .line 144
    invoke-virtual {v5, v3}, Ljava/beans/PropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_1
    :goto_1
    goto :goto_2

    .line 146
    :catch_0
    move-exception v6

    .line 147
    .local v6, "e":Ljava/beans/IntrospectionException;
    iget-object v7, p0, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when creating PropertyDescriptor for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "! Ignoring this property."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 149
    iget-object v7, p0, Lorg/apache/commons/beanutils/FluentPropertyBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Exception is:"

    invoke-interface {v7, v8, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 134
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "propertyName":Ljava/lang/String;
    .end local v5    # "pd":Ljava/beans/PropertyDescriptor;
    .end local v6    # "e":Ljava/beans/IntrospectionException;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_3
    return-void
.end method
