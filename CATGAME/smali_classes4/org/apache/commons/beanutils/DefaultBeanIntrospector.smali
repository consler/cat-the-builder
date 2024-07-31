.class public Lorg/apache/commons/beanutils/DefaultBeanIntrospector;
.super Ljava/lang/Object;
.source "DefaultBeanIntrospector.java"

# interfaces
.implements Lorg/apache/commons/beanutils/BeanIntrospector;


# static fields
.field private static final EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lorg/apache/commons/beanutils/BeanIntrospector;

.field private static final LIST_CLASS_PARAMETER:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->INSTANCE:Lorg/apache/commons/beanutils/BeanIntrospector;

    .line 54
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;

    .line 57
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    aput-object v2, v1, v0

    sput-object v1, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->LIST_CLASS_PARAMETER:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    .line 66
    return-void
.end method

.method private handleIndexedPropertyDescriptors(Ljava/lang/Class;[Ljava/beans/PropertyDescriptor;)V
    .locals 18
    .param p2, "descriptors"    # [Ljava/beans/PropertyDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/beans/PropertyDescriptor;",
            ")V"
        }
    .end annotation

    .line 124
    .local p1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_b

    aget-object v7, v3, v6

    .line 125
    .local v7, "pd":Ljava/beans/PropertyDescriptor;
    instance-of v0, v7, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v0, :cond_9

    .line 126
    move-object v8, v7

    check-cast v8, Ljava/beans/IndexedPropertyDescriptor;

    .line 127
    .local v8, "descriptor":Ljava/beans/IndexedPropertyDescriptor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/beans/IndexedPropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 128
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v8}, Ljava/beans/IndexedPropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, "propName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/beans/IndexedPropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    .line 132
    invoke-virtual {v8}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v8}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v11, v0

    .line 135
    .local v11, "methodName":Ljava/lang/String;
    sget-object v0, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;

    .line 136
    invoke-static {v2, v11, v0}, Lorg/apache/commons/beanutils/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 138
    .local v12, "readMethod":Ljava/lang/reflect/Method;
    if-eqz v12, :cond_1

    .line 140
    :try_start_0
    invoke-virtual {v8, v12}, Ljava/beans/IndexedPropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_2

    .line 141
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    iget-object v13, v1, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    const-string v14, "Error setting indexed property read method"

    invoke-interface {v13, v14, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "methodName":Ljava/lang/String;
    .end local v12    # "readMethod":Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    invoke-virtual {v8}, Ljava/beans/IndexedPropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_8

    .line 149
    invoke-virtual {v8}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v8}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v11, v0

    .line 152
    .restart local v11    # "methodName":Ljava/lang/String;
    sget-object v0, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->LIST_CLASS_PARAMETER:[Ljava/lang/Class;

    .line 153
    invoke-static {v2, v11, v0}, Lorg/apache/commons/beanutils/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 155
    .local v0, "writeMethod":Ljava/lang/reflect/Method;
    if-nez v0, :cond_7

    .line 156
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    array-length v13, v12

    move v14, v5

    :goto_4
    if-ge v14, v13, :cond_6

    aget-object v15, v12, v14

    .line 157
    .local v15, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 158
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 159
    .local v5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v17, v0

    .end local v0    # "writeMethod":Ljava/lang/reflect/Method;
    .local v17, "writeMethod":Ljava/lang/reflect/Method;
    array-length v0, v5

    if-ne v0, v10, :cond_3

    const-class v0, Ljava/util/List;

    const/16 v16, 0x0

    aget-object v10, v5, v16

    .line 161
    invoke-virtual {v0, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    move-object v0, v15

    .line 163
    .end local v17    # "writeMethod":Ljava/lang/reflect/Method;
    .restart local v0    # "writeMethod":Ljava/lang/reflect/Method;
    move-object v5, v0

    goto :goto_7

    .line 159
    .end local v0    # "writeMethod":Ljava/lang/reflect/Method;
    .restart local v17    # "writeMethod":Ljava/lang/reflect/Method;
    :cond_3
    const/16 v16, 0x0

    goto :goto_5

    .line 157
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v17    # "writeMethod":Ljava/lang/reflect/Method;
    .restart local v0    # "writeMethod":Ljava/lang/reflect/Method;
    :cond_4
    move-object/from16 v17, v0

    const/16 v16, 0x0

    .line 156
    .end local v0    # "writeMethod":Ljava/lang/reflect/Method;
    .end local v15    # "m":Ljava/lang/reflect/Method;
    .restart local v17    # "writeMethod":Ljava/lang/reflect/Method;
    :cond_5
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    move-object/from16 v0, v17

    const/4 v10, 0x1

    goto :goto_4

    .end local v17    # "writeMethod":Ljava/lang/reflect/Method;
    .restart local v0    # "writeMethod":Ljava/lang/reflect/Method;
    :cond_6
    move-object/from16 v17, v0

    move/from16 v16, v5

    .end local v0    # "writeMethod":Ljava/lang/reflect/Method;
    .restart local v17    # "writeMethod":Ljava/lang/reflect/Method;
    goto :goto_6

    .line 155
    .end local v17    # "writeMethod":Ljava/lang/reflect/Method;
    .restart local v0    # "writeMethod":Ljava/lang/reflect/Method;
    :cond_7
    move-object/from16 v17, v0

    move/from16 v16, v5

    .line 168
    .end local v0    # "writeMethod":Ljava/lang/reflect/Method;
    .restart local v17    # "writeMethod":Ljava/lang/reflect/Method;
    :goto_6
    move-object/from16 v5, v17

    .end local v17    # "writeMethod":Ljava/lang/reflect/Method;
    .local v5, "writeMethod":Ljava/lang/reflect/Method;
    :goto_7
    if-eqz v5, :cond_a

    .line 170
    :try_start_1
    invoke-virtual {v8, v5}, Ljava/beans/IndexedPropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    goto :goto_8

    .line 171
    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    iget-object v10, v1, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    const-string v12, "Error setting indexed property write method"

    invoke-interface {v10, v12, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "writeMethod":Ljava/lang/reflect/Method;
    .end local v11    # "methodName":Ljava/lang/String;
    :cond_8
    move/from16 v16, v5

    goto :goto_8

    .line 125
    .end local v8    # "descriptor":Ljava/beans/IndexedPropertyDescriptor;
    .end local v9    # "propName":Ljava/lang/String;
    :cond_9
    move/from16 v16, v5

    .line 124
    .end local v7    # "pd":Ljava/beans/PropertyDescriptor;
    :cond_a
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    goto/16 :goto_0

    .line 180
    :cond_b
    return-void
.end method


# virtual methods
.method public introspect(Lorg/apache/commons/beanutils/IntrospectionContext;)V
    .locals 5
    .param p1, "icontext"    # Lorg/apache/commons/beanutils/IntrospectionContext;

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "beanInfo":Ljava/beans/BeanInfo;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/commons/beanutils/IntrospectionContext;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 86
    nop

    .line 88
    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 89
    .local v1, "descriptors":[Ljava/beans/PropertyDescriptor;
    if-nez v1, :cond_0

    .line 90
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/beans/PropertyDescriptor;

    .line 93
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/beanutils/IntrospectionContext;->getTargetClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->handleIndexedPropertyDescriptors(Ljava/lang/Class;[Ljava/beans/PropertyDescriptor;)V

    .line 95
    invoke-interface {p1, v1}, Lorg/apache/commons/beanutils/IntrospectionContext;->addPropertyDescriptors([Ljava/beans/PropertyDescriptor;)V

    .line 96
    return-void

    .line 80
    .end local v1    # "descriptors":[Ljava/beans/PropertyDescriptor;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/beans/IntrospectionException;
    iget-object v2, p0, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when inspecting class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-interface {p1}, Lorg/apache/commons/beanutils/IntrospectionContext;->getTargetClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method
