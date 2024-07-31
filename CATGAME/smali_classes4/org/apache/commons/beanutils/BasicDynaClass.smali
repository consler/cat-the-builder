.class public Lorg/apache/commons/beanutils/BasicDynaClass;
.super Ljava/lang/Object;
.source "BasicDynaClass.java"

# interfaces
.implements Lorg/apache/commons/beanutils/DynaClass;
.implements Ljava/io/Serializable;


# static fields
.field protected static constructorTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected transient constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field protected constructorValues:[Ljava/lang/Object;

.field protected dynaBeanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;

.field protected properties:[Lorg/apache/commons/beanutils/DynaProperty;

.field protected propertiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/beanutils/DynaProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/apache/commons/beanutils/DynaClass;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/beanutils/BasicDynaClass;->constructorTypes:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/commons/beanutils/BasicDynaClass;-><init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 63
    .local p2, "dynaBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/BasicDynaClass;-><init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "properties"    # [Lorg/apache/commons/beanutils/DynaProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Lorg/apache/commons/beanutils/DynaProperty;",
            ")V"
        }
    .end annotation

    .line 78
    .local p2, "dynaBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->constructor:Ljava/lang/reflect/Constructor;

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    iput-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->constructorValues:[Ljava/lang/Object;

    .line 121
    const-class v0, Lorg/apache/commons/beanutils/BasicDynaBean;

    iput-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->dynaBeanClass:Ljava/lang/Class;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->name:Ljava/lang/String;

    .line 133
    new-array v0, v1, [Lorg/apache/commons/beanutils/DynaProperty;

    iput-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->propertiesMap:Ljava/util/HashMap;

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->name:Ljava/lang/String;

    .line 82
    :cond_0
    if-nez p2, :cond_1

    .line 83
    const-class p2, Lorg/apache/commons/beanutils/BasicDynaBean;

    .line 85
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/BasicDynaClass;->setDynaBeanClass(Ljava/lang/Class;)V

    .line 86
    if-eqz p3, :cond_2

    .line 87
    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/BasicDynaClass;->setProperties([Lorg/apache/commons/beanutils/DynaProperty;)V

    .line 90
    :cond_2
    return-void
.end method


# virtual methods
.method public getDynaBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->dynaBeanClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    return-object v0
.end method

.method public getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 174
    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/DynaProperty;

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No property name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->name:Ljava/lang/String;

    return-object v0
.end method

.method public newInstance()Lorg/apache/commons/beanutils/DynaBean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->constructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->dynaBeanClass:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/BasicDynaClass;->setDynaBeanClass(Ljava/lang/Class;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->constructor:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->constructorValues:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/InstantiationException;

    .line 224
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected setDynaBeanClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 263
    .local p1, "dynaBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const-string v1, "Class "

    if-nez v0, :cond_1

    .line 268
    const-class v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    :try_start_0
    sget-object v0, Lorg/apache/commons/beanutils/BasicDynaClass;->constructorTypes:[Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    nop

    .line 282
    iput-object p1, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->dynaBeanClass:Ljava/lang/Class;

    .line 284
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not have an appropriate constructor"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not implement DynaBean"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is an interface, not a class"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setProperties([Lorg/apache/commons/beanutils/DynaProperty;)V
    .locals 5
    .param p1, "properties"    # [Lorg/apache/commons/beanutils/DynaProperty;

    .line 294
    iput-object p1, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    .line 295
    iget-object v0, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 296
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 297
    .local v2, "propertie":Lorg/apache/commons/beanutils/DynaProperty;
    iget-object v3, p0, Lorg/apache/commons/beanutils/BasicDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .end local v2    # "propertie":Lorg/apache/commons/beanutils/DynaProperty;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method
