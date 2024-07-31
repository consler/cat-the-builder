.class Lcom/google/common/collect/AbstractTable$CellSet;
.super Ljava/util/AbstractSet;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractTable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/AbstractTable;

    .line 125
    .local p0, "this":Lcom/google/common/collect/AbstractTable$CellSet;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 152
    .local p0, "this":Lcom/google/common/collect/AbstractTable$CellSet;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractTable;->clear()V

    .line 153
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 128
    .local p0, "this":Lcom/google/common/collect/AbstractTable$CellSet;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 130
    .local v0, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v2}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 131
    .local v2, "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-eqz v2, :cond_0

    .line 133
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 132
    invoke-static {v3, v4}, Lcom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 131
    :goto_0
    return v1

    .line 135
    .end local v0    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    .end local v2    # "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/google/common/collect/AbstractTable$CellSet;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractTable;->cellIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 140
    .local p0, "this":Lcom/google/common/collect/AbstractTable$CellSet;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 141
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 142
    .local v0, "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v2}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 143
    .local v2, "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 144
    invoke-static {v3, v4}, Lcom/google/common/collect/Collections2;->safeRemove(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 143
    :goto_0
    return v1

    .line 147
    .end local v0    # "cell":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<***>;"
    .end local v2    # "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .line 162
    .local p0, "this":Lcom/google/common/collect/AbstractTable$CellSet;, "Lcom/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractTable;->size()I

    move-result v0

    return v0
.end method
