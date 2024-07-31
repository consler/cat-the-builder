.class public Lorg/apache/commons/beanutils/ResultSetDynaClass;
.super Lorg/apache/commons/beanutils/JDBCDynaClass;
.source "ResultSetDynaClass.java"

# interfaces
.implements Lorg/apache/commons/beanutils/DynaClass;


# instance fields
.field protected resultSet:Ljava/sql/ResultSet;


# direct methods
.method public constructor <init>(Ljava/sql/ResultSet;)V
    .locals 1
    .param p1, "resultSet"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/ResultSetDynaClass;-><init>(Ljava/sql/ResultSet;Z)V

    .line 105
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

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/ResultSetDynaClass;-><init>(Ljava/sql/ResultSet;ZZ)V

    .line 134
    return-void
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

    .line 161
    invoke-direct {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/beanutils/ResultSetDynaClass;->resultSet:Ljava/sql/ResultSet;

    .line 163
    if-eqz p1, :cond_0

    .line 166
    iput-object p1, p0, Lorg/apache/commons/beanutils/ResultSetDynaClass;->resultSet:Ljava/sql/ResultSet;

    .line 167
    iput-boolean p2, p0, Lorg/apache/commons/beanutils/ResultSetDynaClass;->lowerCase:Z

    .line 168
    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->setUseColumnLabel(Z)V

    .line 169
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->introspect(Ljava/sql/ResultSet;)V

    .line 171
    return-void

    .line 164
    :cond_0
    throw v0
.end method


# virtual methods
.method public bridge synthetic getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
    .locals 1

    .line 83
    invoke-super {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-super {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectFromResultSet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getObject(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getResultSet()Ljava/sql/ResultSet;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetDynaClass;->resultSet:Ljava/sql/ResultSet;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/beanutils/DynaBean;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Lorg/apache/commons/beanutils/ResultSetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/beanutils/ResultSetIterator;-><init>(Lorg/apache/commons/beanutils/ResultSetDynaClass;)V

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 242
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load column class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic newInstance()Lorg/apache/commons/beanutils/DynaBean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 83
    invoke-super {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;->newInstance()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUseColumnLabel(Z)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lorg/apache/commons/beanutils/JDBCDynaClass;->setUseColumnLabel(Z)V

    return-void
.end method
