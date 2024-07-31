.class Lcom/thoughtworks/xstream/XStream$4;
.super Ljava/lang/Object;
.source "XStream.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/XStream;

.field private final synthetic val$dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

.field private final synthetic val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/XStream;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/DataHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thoughtworks/xstream/XStream;

    .line 2195
    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream$4;->this$0:Lcom/thoughtworks/xstream/XStream;

    iput-object p2, p0, Lcom/thoughtworks/xstream/XStream$4;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iput-object p3, p0, Lcom/thoughtworks/xstream/XStream$4;->val$dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 2220
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$4;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->close()V

    .line 2221
    return-void
.end method

.method public defaultReadObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    .line 2211
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "not in call to readObject"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFieldsFromStream()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2207
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "not in call to readObject"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFromStream()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 2197
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$4;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$4;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 2201
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$4;->this$0:Lcom/thoughtworks/xstream/XStream;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream$4;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream$4;->val$dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2202
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream$4;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 2203
    return-object v0

    .line 2198
    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 2
    .param p1, "validation"    # Ljava/io/ObjectInputValidation;
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    .line 2216
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "stream inactive"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
