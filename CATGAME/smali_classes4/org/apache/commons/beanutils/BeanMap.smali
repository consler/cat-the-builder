.class public Lorg/apache/commons/beanutils/BeanMap;
.super Ljava/util/AbstractMap;
.source "BeanMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/BeanMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final NULL_ARGUMENTS:[Ljava/lang/Object;

.field public static defaultTransformers:Ljava/util/HashMap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final typeTransformers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/collections/Transformer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient bean:Ljava/lang/Object;

.field private transient readMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private transient types:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient writeMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/commons/beanutils/BeanMap;->NULL_ARGUMENTS:[Ljava/lang/Object;

    .line 68
    invoke-static {}, Lorg/apache/commons/beanutils/BeanMap;->createTypeTransformers()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/beanutils/BeanMap;->typeTransformers:Ljava/util/Map;

    .line 78
    new-instance v0, Lorg/apache/commons/beanutils/BeanMap$1;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/BeanMap$1;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->writeMethods:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->types:Ljava/util/HashMap;

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "bean"    # Ljava/lang/Object;

    .line 216
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->writeMethods:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->types:Ljava/util/HashMap;

    .line 217
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanMap;->bean:Ljava/lang/Object;

    .line 218
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BeanMap;->initialise()V

    .line 219
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/commons/beanutils/BeanMap;->typeTransformers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/beanutils/BeanMap;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/beanutils/BeanMap;

    .line 48
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    return-object v0
.end method

.method private static createTypeTransformers()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/collections/Transformer;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v0, "defaultTransformers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/Object;>;Lorg/apache/commons/collections/Transformer;>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/BeanMap$2;

    invoke-direct {v2}, Lorg/apache/commons/beanutils/BeanMap$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/BeanMap$3;

    invoke-direct {v2}, Lorg/apache/commons/beanutils/BeanMap$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/BeanMap$4;

    invoke-direct {v2}, Lorg/apache/commons/beanutils/BeanMap$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/BeanMap$5;

    invoke-direct {v2}, Lorg/apache/commons/beanutils/BeanMap$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/BeanMap$6;

    invoke-direct {v2}, Lorg/apache/commons/beanutils/BeanMap$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/BeanMap$7;

    invoke-direct {v2}, Lorg/apache/commons/beanutils/BeanMap$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/BeanMap$8;

    invoke-direct {v2}, Lorg/apache/commons/beanutils/BeanMap$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lorg/apache/commons/beanutils/BeanMap$9;

    invoke-direct {v2}, Lorg/apache/commons/beanutils/BeanMap$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-object v0
.end method

.method private initialise()V
    .locals 11

    .line 705
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanMap;->getBean()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 706
    return-void

    .line 709
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanMap;->getBean()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 712
    .local v0, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v1

    .line 713
    .local v1, "beanInfo":Ljava/beans/BeanInfo;
    invoke-interface {v1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v2

    .line 714
    .local v2, "propertyDescriptors":[Ljava/beans/PropertyDescriptor;
    if-eqz v2, :cond_4

    .line 715
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 716
    .local v5, "propertyDescriptor":Ljava/beans/PropertyDescriptor;
    if-eqz v5, :cond_3

    .line 717
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    .line 718
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    .line 719
    .local v7, "readMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    .line 720
    .local v8, "writeMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v9

    .line 722
    .local v9, "aType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-eqz v7, :cond_1

    .line 723
    iget-object v10, p0, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v10, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_1
    if-eqz v8, :cond_2

    .line 726
    iget-object v10, p0, Lorg/apache/commons/beanutils/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v10, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    :cond_2
    iget-object v10, p0, Lorg/apache/commons/beanutils/BeanMap;->types:Ljava/util/HashMap;

    invoke-virtual {v10, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v5    # "propertyDescriptor":Ljava/beans/PropertyDescriptor;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "readMethod":Ljava/lang/reflect/Method;
    .end local v8    # "writeMethod":Ljava/lang/reflect/Method;
    .end local v9    # "aType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 735
    .end local v1    # "beanInfo":Ljava/beans/BeanInfo;
    .end local v2    # "propertyDescriptors":[Ljava/beans/PropertyDescriptor;
    :cond_4
    goto :goto_1

    .line 733
    :catch_0
    move-exception v1

    .line 734
    .local v1, "e":Ljava/beans/IntrospectionException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/BeanMap;->logWarn(Ljava/lang/Exception;)V

    .line 736
    .end local v1    # "e":Ljava/beans/IntrospectionException;
    :goto_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 342
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->bean:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 343
    return-void

    .line 346
    :cond_0
    const/4 v1, 0x0

    .line 348
    .local v1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 349
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->bean:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    nop

    .line 357
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create new instance of class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 354
    .local v2, "uoe":Ljava/lang/UnsupportedOperationException;
    invoke-static {v2, v0}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    .line 355
    throw v2
.end method

.method public clone()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 262
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/BeanMap;

    .line 264
    .local v0, "newMap":Lorg/apache/commons/beanutils/BeanMap;
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanMap;->bean:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 267
    return-object v0

    .line 270
    :cond_0
    const/4 v2, 0x0

    .line 271
    .local v2, "newBean":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 273
    .local v1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    .line 281
    nop

    .line 284
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/beanutils/BeanMap;->setBean(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    nop

    .line 297
    :try_start_2
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 298
    .local v3, "readableKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 300
    .local v4, "key":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lorg/apache/commons/beanutils/BeanMap;->getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 301
    invoke-virtual {p0, v4}, Lorg/apache/commons/beanutils/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/beanutils/BeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 303
    .end local v4    # "key":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 310
    .end local v3    # "readableKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    nop

    .line 312
    return-object v0

    .line 304
    :catch_0
    move-exception v3

    .line 305
    .local v3, "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/CloneNotSupportedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to copy bean values to cloned bean map: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 308
    .local v4, "cnse":Ljava/lang/CloneNotSupportedException;
    invoke-static {v4, v3}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    .line 309
    throw v4

    .line 285
    .end local v3    # "exception":Ljava/lang/Exception;
    .end local v4    # "cnse":Ljava/lang/CloneNotSupportedException;
    :catch_1
    move-exception v3

    .line 286
    .restart local v3    # "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/CloneNotSupportedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to set bean in the cloned bean map: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 289
    .restart local v4    # "cnse":Ljava/lang/CloneNotSupportedException;
    invoke-static {v4, v3}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    .line 290
    throw v4

    .line 274
    .end local v3    # "exception":Ljava/lang/Exception;
    .end local v4    # "cnse":Ljava/lang/CloneNotSupportedException;
    :catch_2
    move-exception v3

    .line 276
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/CloneNotSupportedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate the underlying bean \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 279
    .restart local v4    # "cnse":Ljava/lang/CloneNotSupportedException;
    invoke-static {v4, v3}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    .line 280
    throw v4
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/Object;

    .line 376
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/BeanMap;->getReadMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 377
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

    .line 391
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected convertType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 871
    .local p1, "newType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 873
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 874
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 875
    .local v0, "arguments":[Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 877
    .end local v0    # "arguments":[Ljava/lang/Object;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/BeanMap;->getTypeTransformer(Ljava/lang/Class;)Lorg/apache/commons/collections/Transformer;

    move-result-object v2

    .line 880
    .local v2, "transformer":Lorg/apache/commons/collections/Transformer;
    if-eqz v2, :cond_0

    .line 881
    invoke-interface {v2, p2}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 883
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

    .line 807
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 808
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 809
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 810
    aget-object v2, v1, v0

    .line 811
    .local v2, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 812
    invoke-virtual {p0, v2, p2}, Lorg/apache/commons/beanutils/BeanMap;->convertType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object p2, v3

    .line 816
    .end local v1    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v2    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 817
    .local v0, "answer":[Ljava/lang/Object;
    return-object v0

    .line 826
    .end local v0    # "answer":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 828
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 829
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 831
    :cond_1
    invoke-static {v1, v0}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    .line 832
    throw v1

    .line 819
    .end local v0    # "e":Ljava/lang/InstantiationException;
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 821
    .restart local v1    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 822
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 824
    :cond_2
    throw v1
.end method

.method public entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 600
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Lorg/apache/commons/beanutils/BeanMap$12;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/beanutils/BeanMap$12;-><init>(Lorg/apache/commons/beanutils/BeanMap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 519
    new-instance v0, Lorg/apache/commons/beanutils/BeanMap$10;

    invoke-direct {v0, p0}, Lorg/apache/commons/beanutils/BeanMap$10;-><init>(Lorg/apache/commons/beanutils/BeanMap;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected firePropertyChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 748
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->bean:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/BeanMap;->getReadMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 413
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 415
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanMap;->bean:Ljava/lang/Object;

    sget-object v2, Lorg/apache/commons/beanutils/BeanMap;->NULL_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/BeanMap;->logWarn(Ljava/lang/Exception;)V

    goto :goto_0

    .line 423
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/BeanMap;->logWarn(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 420
    :catch_2
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/BeanMap;->logWarn(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 417
    :catch_3
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/BeanMap;->logWarn(Ljava/lang/Exception;)V

    .line 431
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 1

    .line 631
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->bean:Ljava/lang/Object;

    return-object v0
.end method

.method protected getReadMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    .line 678
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->types:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method protected getTypeTransformer(Ljava/lang/Class;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/collections/Transformer;"
        }
    .end annotation

    .line 895
    .local p1, "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/apache/commons/beanutils/BeanMap;->typeTransformers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method protected getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    .line 690
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getWriteMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 662
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected logInfo(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 906
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INFO: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 907
    return-void
.end method

.method protected logWarn(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 917
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARN: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 919
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

    .line 448
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->bean:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 449
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 450
    .local v0, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/BeanMap;->getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 451
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2

    .line 456
    :try_start_0
    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/beanutils/BeanMap;->createWriteMethodArguments(Ljava/lang/reflect/Method;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 457
    .local v2, "arguments":[Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanMap;->bean:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 460
    .local v3, "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, v3}, Lorg/apache/commons/beanutils/BeanMap;->firePropertyChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v2    # "arguments":[Ljava/lang/Object;
    .end local v3    # "newValue":Ljava/lang/Object;
    nop

    .line 476
    return-object v0

    .line 469
    :catch_0
    move-exception v2

    .line 470
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 471
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v2}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 472
    invoke-virtual {p0, v2}, Lorg/apache/commons/beanutils/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 474
    :cond_0
    throw v3

    .line 462
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 463
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 464
    .restart local v3    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v2}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 465
    invoke-virtual {p0, v2}, Lorg/apache/commons/beanutils/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 467
    :cond_1
    throw v3

    .line 452
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The bean of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/commons/beanutils/BeanMap;->bean:Ljava/lang/Object;

    .line 453
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has no property called: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 478
    .end local v0    # "oldValue":Ljava/lang/Object;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public putAllWriteable(Lorg/apache/commons/beanutils/BeanMap;)V
    .locals 3
    .param p1, "map"    # Lorg/apache/commons/beanutils/BeanMap;

    .line 322
    iget-object v0, p1, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 323
    .local v0, "readableKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 325
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/BeanMap;->getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {p1, v1}, Lorg/apache/commons/beanutils/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/beanutils/BeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 329
    :cond_1
    return-void
.end method

.method protected reinitialise()V
    .locals 1

    .line 698
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 699
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 700
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->types:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 701
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BeanMap;->initialise()V

    .line 702
    return-void
.end method

.method public setBean(Ljava/lang/Object;)V
    .locals 0
    .param p1, "newBean"    # Ljava/lang/Object;

    .line 641
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanMap;->bean:Ljava/lang/Object;

    .line 642
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanMap;->reinitialise()V

    .line 643
    return-void
.end method

.method public size()I
    .locals 1

    .line 488
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeanMap<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanMap;->bean:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 578
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 579
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    new-instance v1, Lorg/apache/commons/beanutils/BeanMap$11;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/beanutils/BeanMap$11;-><init>(Lorg/apache/commons/beanutils/BeanMap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 540
    .local v0, "answer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 543
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
