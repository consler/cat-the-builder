.class public Lorg/apache/commons/beanutils/BeanComparator;
.super Ljava/lang/Object;
.source "BeanComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "*>;"
        }
    .end annotation
.end field

.field private property:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    .local p0, "this":Lorg/apache/commons/beanutils/BeanComparator;, "Lorg/apache/commons/beanutils/BeanComparator<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/BeanComparator;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 87
    .local p0, "this":Lorg/apache/commons/beanutils/BeanComparator;, "Lorg/apache/commons/beanutils/BeanComparator<TT;>;"
    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/BeanComparator;-><init>(Ljava/lang/String;Ljava/util/Comparator;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Comparator;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "*>;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/commons/beanutils/BeanComparator;, "Lorg/apache/commons/beanutils/BeanComparator<TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/BeanComparator;->setProperty(Ljava/lang/String;)V

    .line 108
    if-eqz p2, :cond_0

    .line 109
    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    .line 113
    :goto_0
    return-void
.end method

.method private internalCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "val1"    # Ljava/lang/Object;
    .param p2, "val2"    # Ljava/lang/Object;

    .line 237
    .local p0, "this":Lorg/apache/commons/beanutils/BeanComparator;, "Lorg/apache/commons/beanutils/BeanComparator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    .line 238
    .local v0, "c":Ljava/util/Comparator;
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 157
    .local p0, "this":Lorg/apache/commons/beanutils/BeanComparator;, "Lorg/apache/commons/beanutils/BeanComparator<TT;>;"
    .local p1, "o1":Ljava/lang/Object;, "TT;"
    .local p2, "o2":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/BeanComparator;->internalCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 163
    :cond_0
    :try_start_0
    invoke-static {p1, v0}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    .local v0, "value1":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    invoke-static {p2, v1}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 165
    .local v1, "value2":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/BeanComparator;->internalCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 173
    .end local v0    # "value1":Ljava/lang/Object;
    .end local v1    # "value2":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchMethodException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    .end local v0    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InvocationTargetException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    .end local v0    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 168
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 187
    .local p0, "this":Lorg/apache/commons/beanutils/BeanComparator;, "Lorg/apache/commons/beanutils/BeanComparator<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 188
    return v0

    .line 190
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/beanutils/BeanComparator;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 191
    return v2

    .line 194
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/BeanComparator;

    .line 196
    .local v1, "beanComparator":Lorg/apache/commons/beanutils/BeanComparator;, "Lorg/apache/commons/beanutils/BeanComparator<*>;"
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    iget-object v4, v1, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v3, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 197
    return v2

    .line 199
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 201
    iget-object v4, v1, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 202
    return v2

    .line 210
    :cond_3
    return v0

    .line 207
    :cond_4
    iget-object v3, v1, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    return v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "*>;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lorg/apache/commons/beanutils/BeanComparator;, "Lorg/apache/commons/beanutils/BeanComparator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .line 133
    .local p0, "this":Lorg/apache/commons/beanutils/BeanComparator;, "Lorg/apache/commons/beanutils/BeanComparator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 220
    .local p0, "this":Lorg/apache/commons/beanutils/BeanComparator;, "Lorg/apache/commons/beanutils/BeanComparator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanComparator;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 221
    .local v0, "result":I
    return v0
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;

    .line 122
    .local p0, "this":Lorg/apache/commons/beanutils/BeanComparator;, "Lorg/apache/commons/beanutils/BeanComparator<TT;>;"
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanComparator;->property:Ljava/lang/String;

    .line 123
    return-void
.end method
