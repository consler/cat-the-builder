.class abstract Lcom/google/common/collect/Tables$AbstractCell;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/collect/Table$Cell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractCell"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    .local p0, "this":Lcom/google/common/collect/Tables$AbstractCell;, "Lcom/google/common/collect/Tables$AbstractCell<TR;TC;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 101
    .local p0, "this":Lcom/google/common/collect/Tables$AbstractCell;, "Lcom/google/common/collect/Tables$AbstractCell<TR;TC;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 102
    return v0

    .line 104
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/Table$Cell;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 105
    move-object v1, p1

    check-cast v1, Lcom/google/common/collect/Table$Cell;

    .line 106
    .local v1, "other":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$AbstractCell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$AbstractCell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$AbstractCell;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 106
    :goto_0
    return v0

    .line 110
    .end local v1    # "other":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 115
    .local p0, "this":Lcom/google/common/collect/Tables$AbstractCell;, "Lcom/google/common/collect/Tables$AbstractCell<TR;TC;TV;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$AbstractCell;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$AbstractCell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$AbstractCell;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    .local p0, "this":Lcom/google/common/collect/Tables$AbstractCell;, "Lcom/google/common/collect/Tables$AbstractCell<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$AbstractCell;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$AbstractCell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$AbstractCell;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
