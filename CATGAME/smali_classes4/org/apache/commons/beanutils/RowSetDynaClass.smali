.class public Lorg/apache/commons/beanutils/RowSetDynaClass;
.super Lorg/apache/commons/beanutils/JDBCDynaClass;
.source "RowSetDynaClass.java"

# interfaces
.implements Lorg/apache/commons/beanutils/DynaClass;
.implements Ljava/io/Serializable;


# instance fields
.field protected limit:I

.field protected rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/beanutils/DynaBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/sql/ResultSet;)V
    .locals 2
    .param p1, "resultSet"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/RowSetDynaClass;-><init>(Ljava/sql/ResultSet;ZI)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/sql/ResultSet;I)V
    .locals 1
    .param p1, "resultSet"    # Ljava/sql/ResultSet;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/RowSetDynaClass;-><init>(Ljava/sql/ResultSet;ZI)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/sql/ResultSet;Z)V
    .locals 1
    .param p1, "resultSet"    # Ljava/sql/ResultSet;
    .param p2, "lowerCase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 151
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/RowSetDynaClass;-><init>(Ljava/sql/ResultSet;ZI)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/sql/ResultSet;ZI)V
    .locals 1
    .param p1, "resultSet"    # Ljava/sql/ResultSet;
    .param p2, "lowerCase"    # Z
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/RowSetDynaClass;-><init>(Ljava/sql/ResultSet;ZIZ)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/sql/ResultSet;ZIZ)V
    .locals 1
    .param p1, "resultSet"    # Ljava/sql/ResultSet;
    .param p2, "lowerCase"    # Z
    .param p3, "limit"    # I
    .param p4, "useColumnLabel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->limit:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->rows:Ljava/util/List;

    .line 240
    if-eqz p1, :cond_0

    .line 243
    iput-boolean p2, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->lowerCase:Z

    .line 244
    iput p3, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->limit:I

    .line 245
    invoke-virtual {p0, p4}, Lorg/apache/commons/beanutils/RowSetDynaClass;->setUseColumnLabel(Z)V

    .line 246
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/RowSetDynaClass;->introspect(Ljava/sql/ResultSet;)V

    .line 247
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/RowSetDynaClass;->copy(Ljava/sql/ResultSet;)V

    .line 249
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Ljava/sql/ResultSet;ZZ)V
    .locals 1
    .param p1, "resultSet"    # Ljava/sql/ResultSet;
    .param p2, "lowerCase"    # Z
    .param p3, "useColumnLabel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 209
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/beanutils/RowSetDynaClass;-><init>(Ljava/sql/ResultSet;ZIZ)V

    .line 211
    return-void
.end method


# virtual methods
.method protected copy(Ljava/sql/ResultSet;)V
    .locals 8
    .param p1, "resultSet"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "cnt":I
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->limit:I

    if-ltz v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "cnt":I
    .local v2, "cnt":I
    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_3

    .line 289
    .end local v2    # "cnt":I
    .restart local v0    # "cnt":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/RowSetDynaClass;->createDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v1

    .line 290
    .local v1, "bean":Lorg/apache/commons/beanutils/DynaBean;
    iget-object v2, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 291
    .local v5, "propertie":Lorg/apache/commons/beanutils/DynaProperty;
    invoke-virtual {v5}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/beanutils/RowSetDynaClass;->getObject(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 293
    .local v7, "value":Ljava/lang/Object;
    invoke-interface {v1, v6, v7}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    .end local v5    # "propertie":Lorg/apache/commons/beanutils/DynaProperty;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 295
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->rows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v1    # "bean":Lorg/apache/commons/beanutils/DynaBean;
    goto :goto_0

    .line 298
    :cond_3
    :goto_3
    return-void
.end method

.method protected createDynaBean()Lorg/apache/commons/beanutils/DynaBean;
    .locals 1

    .line 309
    new-instance v0, Lorg/apache/commons/beanutils/BasicDynaBean;

    invoke-direct {v0, p0}, Lorg/apache/commons/beanutils/BasicDynaBean;-><init>(Lorg/apache/commons/beanutils/DynaClass;)V

    return-object v0
.end method

.method public bridge synthetic getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
    .locals 1

    .line 68
    invoke-super {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-super {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/beanutils/DynaBean;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->rows:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic newInstance()Lorg/apache/commons/beanutils/DynaBean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 68
    invoke-super {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;->newInstance()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUseColumnLabel(Z)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lorg/apache/commons/beanutils/JDBCDynaClass;->setUseColumnLabel(Z)V

    return-void
.end method
