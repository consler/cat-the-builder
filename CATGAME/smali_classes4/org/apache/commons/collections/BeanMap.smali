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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
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

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

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

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/BeanMap;)Ljava/util/HashMap;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    return-object p0
.end method

.method private initialise()V
    .locals 7

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
    :try_start_0
    invoke-static {v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0

    .line 606
    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 608
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 609
    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    .line 611
    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 612
    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 613
    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    .line 614
    invoke-virtual {v2}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v2

    if-eqz v4, :cond_1

    .line 617
    iget-object v6, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v5, :cond_2

    .line 620
    iget-object v4, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/collections/BeanMap;->types:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 628
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 268
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 276
    :catch_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Could not create new instance of class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
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
    iget-object v1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    if-nez v1, :cond_0

    return-object v0

    .line 205
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 206
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 215
    :try_start_2
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/BeanMap;->setBean(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 226
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 227
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 229
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/BeanMap;->getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 230
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/collections/BeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 234
    new-instance v1, Ljava/lang/CloneNotSupportedException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unable to copy bean values to cloned bean map: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/CloneNotSupportedException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unable to set bean in the cloned bean map: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    const/4 v1, 0x0

    .line 209
    :goto_1
    new-instance v2, Ljava/lang/CloneNotSupportedException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Unable to instantiate the underlying bean \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->getReadMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 310
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected convertType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 755
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 757
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 759
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 763
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->getTypeTransformer(Ljava/lang/Class;)Lorg/apache/commons/collections/Transformer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 765
    invoke-interface {p1, p2}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method protected createWriteMethodArguments(Ljava/lang/reflect/Method;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 699
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 700
    array-length v1, p1

    if-lez v1, :cond_0

    .line 701
    aget-object p1, p1, v0

    .line 702
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/BeanMap;->convertType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 715
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 716
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    .line 711
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 712
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public entryIterator()Ljava/util/Iterator;
    .locals 2

    .line 499
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 500
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

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 329
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->getReadMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 333
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    sget-object v1, Lorg/apache/commons/collections/BeanMap;->NULL_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 345
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 342
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 339
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 336
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->logWarn(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBean()Ljava/lang/Object;
    .locals 1

    .line 526
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    return-object v0
.end method

.method protected getReadMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    return-object p1
.end method

.method public getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    .line 547
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    return-object p1
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->types:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method protected getTypeTransformer(Ljava/lang/Class;)Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 779
    sget-object v0, Lorg/apache/commons/collections/BeanMap;->defaultTransformers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/Transformer;

    return-object p1
.end method

.method protected getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1

    .line 585
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    return-object p1
.end method

.method public getWriteMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    .line 557
    iget-object v0, p0, Lorg/apache/commons/collections/BeanMap;->writeMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    return-object p1
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

    .line 790
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "INFO: Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected logWarn(Ljava/lang/Exception;)V
    .locals 3

    .line 801
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "WARN: Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    :try_start_0
    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/collections/BeanMap;->createWriteMethodArguments(Ljava/lang/reflect/Method;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 372
    iget-object v2, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 375
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/collections/BeanMap;->firePropertyChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 382
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 383
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    .line 378
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BeanMap;->logInfo(Ljava/lang/Exception;)V

    .line 379
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 368
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "The bean of type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " has no property called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public putAllWriteable(Lorg/apache/commons/collections/BeanMap;)V
    .locals 3

    .line 249
    iget-object v0, p1, Lorg/apache/commons/collections/BeanMap;->readMethods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 250
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 252
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BeanMap;->getWriteMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/BeanMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/BeanMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

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

    return-void
.end method

.method public setBean(Ljava/lang/Object;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    .line 537
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->reinitialise()V

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

    const-string v1, "BeanMap<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/collections/BeanMap;->bean:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

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
    invoke-virtual {p0}, Lorg/apache/commons/collections/BeanMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v1

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
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
