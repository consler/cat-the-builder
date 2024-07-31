.class Lcom/thoughtworks/xstream/XStream$3;
.super Ljava/lang/Object;
.source "XStream.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/XStream;

.field private final synthetic val$dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

.field private final synthetic val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/XStream;Lcom/thoughtworks/xstream/io/StatefulWriter;Lcom/thoughtworks/xstream/converters/DataHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thoughtworks/xstream/XStream;

    .line 2112
    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream$3;->this$0:Lcom/thoughtworks/xstream/XStream;

    iput-object p2, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    iput-object p3, p0, Lcom/thoughtworks/xstream/XStream$3;->val$dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 2130
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->state()I

    move-result v0

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_CLOSED:I

    if-eq v0, v1, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->endNode()V

    .line 2132
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->close()V

    .line 2134
    :cond_0
    return-void
.end method

.method public defaultWriteObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    .line 2122
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "not in call to writeObject"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1

    .line 2126
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->flush()V

    .line 2127
    return-void
.end method

.method public writeFieldsToStream(Ljava/util/Map;)V
    .locals 2
    .param p1, "fields"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;
        }
    .end annotation

    .line 2118
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "not in call to writeObject"

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToStream(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 2114
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$3;->this$0:Lcom/thoughtworks/xstream/XStream;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream$3;->val$statefulWriter:Lcom/thoughtworks/xstream/io/StatefulWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream$3;->val$dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-virtual {v0, p1, v1, v2}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/DataHolder;)V

    .line 2115
    return-void
.end method
