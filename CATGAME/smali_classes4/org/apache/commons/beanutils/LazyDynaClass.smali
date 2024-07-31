.class public Lorg/apache/commons/beanutils/LazyDynaClass;
.super Lorg/apache/commons/beanutils/BasicDynaClass;
.source "LazyDynaClass.java"

# interfaces
.implements Lorg/apache/commons/beanutils/MutableDynaClass;


# instance fields
.field protected restricted:Z

.field protected returnNull:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    check-cast v0, [Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V

    .line 74
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

    .line 83
    .local p2, "dynaBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V
    .locals 1
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

    .line 104
    .local p2, "dynaBeanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/BasicDynaClass;-><init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->returnNull:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # [Lorg/apache/commons/beanutils/DynaProperty;

    .line 93
    const-class v0, Lorg/apache/commons/beanutils/LazyDynaBean;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;Ljava/lang/Class;[Lorg/apache/commons/beanutils/DynaProperty;)V

    .line 94
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 165
    new-instance v0, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaClass;->add(Lorg/apache/commons/beanutils/DynaProperty;)V

    .line 166
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Class;)V
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

    .line 181
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaClass;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaClass;->add(Lorg/apache/commons/beanutils/DynaProperty;)V

    .line 186
    :goto_0
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Class;ZZ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "readable"    # Z
    .param p4, "writeable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    .line 210
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "readable/writable properties not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected add(Lorg/apache/commons/beanutils/DynaProperty;)V
    .locals 4
    .param p1, "property"    # Lorg/apache/commons/beanutils/DynaProperty;

    .line 224
    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 239
    .local v0, "oldProperties":[Lorg/apache/commons/beanutils/DynaProperty;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/beanutils/DynaProperty;

    .line 240
    .local v1, "newProperties":[Lorg/apache/commons/beanutils/DynaProperty;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    array-length v2, v0

    aput-object p1, v1, v2

    .line 244
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaClass;->setProperties([Lorg/apache/commons/beanutils/DynaProperty;)V

    .line 246
    return-void

    .line 229
    .end local v0    # "oldProperties":[Lorg/apache/commons/beanutils/DynaProperty;
    .end local v1    # "newProperties":[Lorg/apache/commons/beanutils/DynaProperty;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DynaClass is currently restricted. No new properties can be added."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property name is missing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 319
    if-eqz p1, :cond_1

    .line 323
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/DynaProperty;

    .line 327
    .local v0, "dynaProperty":Lorg/apache/commons/beanutils/DynaProperty;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->isReturnNull()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    new-instance v1, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {v1, p1}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 331
    :cond_0
    return-object v0

    .line 320
    .end local v0    # "dynaProperty":Lorg/apache/commons/beanutils/DynaProperty;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property name is missing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDynaProperty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 350
    if-eqz p1, :cond_1

    .line 354
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 351
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property name is missing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRestricted()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->restricted:Z

    return v0
.end method

.method public isReturnNull()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->returnNull:Z

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 263
    if-eqz p1, :cond_4

    .line 267
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->propertiesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 279
    .local v0, "oldProperties":[Lorg/apache/commons/beanutils/DynaProperty;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lorg/apache/commons/beanutils/DynaProperty;

    .line 280
    .local v1, "newProperties":[Lorg/apache/commons/beanutils/DynaProperty;
    const/4 v2, 0x0

    .line 281
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 282
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 283
    aget-object v4, v0, v3

    aput-object v4, v1, v2

    .line 284
    add-int/lit8 v2, v2, 0x1

    .line 281
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 289
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaClass;->setProperties([Lorg/apache/commons/beanutils/DynaProperty;)V

    .line 291
    return-void

    .line 268
    .end local v0    # "oldProperties":[Lorg/apache/commons/beanutils/DynaProperty;
    .end local v1    # "newProperties":[Lorg/apache/commons/beanutils/DynaProperty;
    .end local v2    # "j":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DynaClass is currently restricted. No properties can be removed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property name is missing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRestricted(Z)V
    .locals 0
    .param p1, "restricted"    # Z

    .line 126
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->restricted:Z

    .line 127
    return-void
.end method

.method public setReturnNull(Z)V
    .locals 0
    .param p1, "returnNull"    # Z

    .line 151
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/LazyDynaClass;->returnNull:Z

    .line 152
    return-void
.end method
