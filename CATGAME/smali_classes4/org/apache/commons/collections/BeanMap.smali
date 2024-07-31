.class public Lorg/apache/commons/collections/BeanMap;
.super Ljava/util/AbstractMap;
.source "BeanMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/BeanMap$MyMapEntry;
    }
.end annotation


# static fields
.field public static final NULL_ARGUMENTS:[Ljava/lang/Object;

.field public static defaultTransformers:Ljava/util/HashMap;


# instance fields
.field private transient bean:Ljava/lang/Object;

.field private transient readMethods:Ljava/util/HashMap;

.field private transient types:Ljava/util/HashMap;

.field private transient writeMethods:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/commons/collections/BeanMap;->NULL_ARGUMENTS:[Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    .line 75
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$1;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$2;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$3;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$4;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$5;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$6;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$7;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/collections/BeanMap$8;

    invoke-direct {v2}, Lorg/apache/commons/collections/BeanMap$8;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->types:Ljava/util/HashMap;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;

    .line 158
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->types:Ljava/util/HashMap;

    .line 159
    iput-object p1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    .line 160
    invoke-direct {p0}, Lorg/apache/commons/collections/BeanMap;->initialise()V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/BeanMap;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/BeanMap;

    .line 55
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    return-object v0
.end method

.method private initialise()V
    .locals 10

    .line 600
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->getBean()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 602
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->getBean()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 605
    .local v0, "beanClass":Ljava/lang/Class;
    :try_start_0
    invoke-static {v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v1

    .line 606
    .local v1, "beanInfo":Ljava/beans/BeanInfo;
    invoke-interface {v1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v2

    .line 607
    .local v2, "propertyDescriptors":[Ljava/beans/PropertyDescriptor;
    if-eqz v2, :cond_4

    .line 608
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 609
    aget-object v4, v2, v3

    .line 610
    .local v4, "propertyDescriptor":Ljava/beans/PropertyDescriptor;
    if-eqz v4, :cond_3

    .line 611
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 612
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    .line 613
    .local v6, "readMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    .line 614
    .local v7, "writeMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v8

    .line 616
    .local v8, "aType":Ljava/lang/Class;
    if-eqz v6, :cond_1

    .line 617
    iget-object v9, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_1
    if-eqz v7, :cond_2

    .line 620
    iget-object v9, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_2
    iget-object v9, p0, Lorg/apache/commons/collections/BeanMap;->types:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .end local v4    # "propertyDescriptor":Ljava/beans/PropertyDescriptor;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "readMethod":Ljava/lang/reflect/Method;
    .end local v7    # "writeMethod":Ljava/lang/reflect/Method;
    .end local v8    # "aType":Ljava/lang/Class;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 629
    .end local v1    # "beanInfo":Ljava/beans/BeanInfo;
    .end local v2    # "propertyDescriptors":[Ljava/beans/PropertyDescriptor;
    .end local v3    # "i":I
    :cond_4
    goto :goto_1

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Ljava/beans/IntrospectionException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    .line 630
    .end local v1    # "e":Ljava/beans/IntrospectionException;
    :goto_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 268
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    const/4 v1, 0x0

    .line 272
    .local v1, "beanClass":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 273
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    nop

    .line 278
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not create new instance of class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clone()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 194
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/BeanMap;

    .line 196
    .local v0, "newMap":Lorg/apache/commons/collections/BeanMap;
    iget-object v1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 199
    return-object v0

    .line 202
    :cond_0
    const/4 v2, 0x0

    .line 203
    .local v2, "newBean":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 205
    .local v3, "beanClass":Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v3, v1

    .line 206
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 212
    .end local v2    # "newBean":Ljava/lang/Object;
    .local v1, "newBean":Ljava/lang/Object;
    nop

    .line 215
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/BeanMap;->setBean(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    nop

    .line 226
    :try_start_2
    iget-object v2, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 227
    .local v2, "readableKeys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 229
    .local v4, "key":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/BeanMap;->getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 230
    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/collections/BeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    .end local v4    # "key":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 237
    .end local v2    # "readableKeys":Ljava/util/Iterator;
    :cond_2
    nop

    .line 239
    return-object v0

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/CloneNotSupportedException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to copy bean values to cloned bean map: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    .end local v2    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 217
    .restart local v2    # "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/CloneNotSupportedException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to set bean in the cloned bean map: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 207
    .end local v1    # "newBean":Ljava/lang/Object;
    .local v2, "newBean":Ljava/lang/Object;
    :catch_2
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/CloneNotSupportedException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to instantiate the underlying bean \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/Object;

    .line 296
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->getReadMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 297
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 310
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected convertType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "newType"    # Ljava/lang/Class;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 755
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 757
    .local v1, "types":[Ljava/lang/Class;
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 758
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 759
    .local v0, "arguments":[Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 761
    .end local v0    # "arguments":[Ljava/lang/Object;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->getTypeTransformer(Ljava/lang/Class;)Lorg/apache/commons/collections/Transformer;

    move-result-object v2

    .line 764
    .local v2, "transformer":Lorg/apache/commons/collections/Transformer;
    if-eqz v2, :cond_0

    .line 765
    invoke-interface {v2, p2}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 767
    :cond_0
    return-object p2
.end method

.method protected createWriteMethodArguments(Ljava/lang/reflect/Method;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 698
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 699
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 700
    .local v1, "types":[Ljava/lang/Class;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 701
    aget-object v2, v1, v0

    .line 702
    .local v2, "paramType":Ljava/lang/Class;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 703
    invoke-virtual {p0, v2, p2}, Lorg/apache/commons/collections/BeanMap;->convertType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object p2, v3

    .line 707
    .end local v1    # "types":[Ljava/lang/Class;
    .end local v2    # "paramType":Ljava/lang/Class;
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 708
    .local v0, "answer":[Ljava/lang/Object;
    return-object v0

    .line 714
    .end local v0    # "answer":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 716
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 710
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 712
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public entryIterator()Ljava/util/Iterator;
    .locals 2

    .line 499
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 500
    .local v0, "iter":Ljava/util/Iterator;
    new-instance v1, Lorg/apache/commons/collections/BeanMap$11;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections/BeanMap$11;-><init>(Lorg/apache/commons/collections/BeanMap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 422
    new-instance v0, Lorg/apache/commons/collections/BeanMap$9;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/BeanMap$9;-><init>(Lorg/apache/commons/collections/BeanMap;)V

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected firePropertyChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 642
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->getReadMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 331
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    sget-object v2, Lorg/apache/commons/collections/BeanMap;->NULL_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    goto :goto_0

    .line 341
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 338
    :catch_2
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 335
    :catch_3
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    .line 349
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 1

    .line 526
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    return-object v0
.end method

.method protected getReadMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    .line 573
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 547
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->types:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method protected getTypeTransformer(Ljava/lang/Class;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p1, "aType"    # Ljava/lang/Class;

    .line 779
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method protected getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    .line 585
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getWriteMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .locals 1

    .line 469
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected logInfo(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 790
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "INFO: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method protected logWarn(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 801
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "WARN: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 803
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 366
    .local v0, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 367
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 371
    :try_start_0
    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/collections/BeanMap;->createWriteMethodArguments(Ljava/lang/reflect/Method;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 372
    .local v2, "arguments":[Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 375
    .local v3, "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, v3}, Lorg/apache/commons/collections/BeanMap;->firePropertyChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v2    # "arguments":[Ljava/lang/Object;
    .end local v3    # "newValue":Ljava/lang/Object;
    nop

    .line 385
    return-object v0

    .line 381
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 383
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 377
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 378
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 379
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 368
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The bean of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " has no property called: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    .end local v0    # "oldValue":Ljava/lang/Object;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public putAllWriteable(Lorg/apache/commons/collections/BeanMap;)V
    .locals 3
    .param p1, "map"    # Lorg/apache/commons/collections/BeanMap;

    .line 249
    iget-object v0, p1, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 250
    .local v0, "readableKeys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 252
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BeanMap;->getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/BeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 256
    :cond_1
    return-void
.end method

.method protected reinitialise()V
    .locals 1

    .line 593
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 594
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 595
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->types:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 596
    invoke-direct {p0}, Lorg/apache/commons/collections/BeanMap;->initialise()V

    .line 597
    return-void
.end method

.method public setBean(Ljava/lang/Object;)V
    .locals 0
    .param p1, "newBean"    # Ljava/lang/Object;

    .line 536
    iput-object p1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    .line 537
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->reinitialise()V

    .line 538
    return-void
.end method

.method public size()I
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BeanMap<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueIterator()Ljava/util/Iterator;
    .locals 2

    .line 478
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 479
    .local v0, "iter":Ljava/util/Iterator;
    new-instance v1, Lorg/apache/commons/collections/BeanMap$10;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections/BeanMap$10;-><init>(Lorg/apache/commons/collections/BeanMap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 440
    .local v0, "answer":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
