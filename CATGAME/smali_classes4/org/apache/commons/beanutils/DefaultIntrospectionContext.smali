.class Lorg/apache/commons/beanutils/DefaultIntrospectionContext;
.super Ljava/lang/Object;
.source "DefaultIntrospectionContext.java"

# interfaces
.implements Lorg/apache/commons/beanutils/IntrospectionContext;


# static fields
.field private static final EMPTY_DESCRIPTORS:[Ljava/beans/PropertyDescriptor;


# instance fields
.field private final currentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final descriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/beans/PropertyDescriptor;

    sput-object v0, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->EMPTY_DESCRIPTORS:[Ljava/beans/PropertyDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 55
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->currentClass:Ljava/lang/Class;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->descriptors:Ljava/util/Map;

    .line 58
    return-void
.end method


# virtual methods
.method public addPropertyDescriptor(Ljava/beans/PropertyDescriptor;)V
    .locals 2
    .param p1, "desc"    # Ljava/beans/PropertyDescriptor;

    .line 65
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->descriptors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property descriptor must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPropertyDescriptors([Ljava/beans/PropertyDescriptor;)V
    .locals 3
    .param p1, "descs"    # [Ljava/beans/PropertyDescriptor;

    .line 73
    if-eqz p1, :cond_1

    .line 78
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 79
    .local v2, "desc":Ljava/beans/PropertyDescriptor;
    invoke-virtual {p0, v2}, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->addPropertyDescriptor(Ljava/beans/PropertyDescriptor;)V

    .line 78
    .end local v2    # "desc":Ljava/beans/PropertyDescriptor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-void

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array with descriptors must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPropertyDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->descriptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyDescriptor;

    return-object v0
.end method

.method public getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->descriptors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->EMPTY_DESCRIPTORS:[Ljava/beans/PropertyDescriptor;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/beans/PropertyDescriptor;

    return-object v0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->currentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->descriptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public propertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->descriptors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removePropertyDescriptor(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->descriptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method
