.class public Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;
.super Lcom/thoughtworks/xstream/io/WriterWrapper;
.source "PathTrackingWriter.java"


# instance fields
.field private final isNameEncoding:Z

.field private final pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/io/path/PathTracker;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/WriterWrapper;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 33
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object p1

    instance-of p1, p1, Lcom/thoughtworks/xstream/io/AbstractWriter;

    iput-boolean p1, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->isNameEncoding:Z

    .line 34
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    return-void
.end method


# virtual methods
.method public endNode()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/thoughtworks/xstream/io/WriterWrapper;->endNode()V

    .line 49
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->popElement()V

    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    iget-boolean v1, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->isNameEncoding:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/io/AbstractWriter;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/io/AbstractWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/path/PathTracker;->pushElement(Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/WriterWrapper;->startNode(Ljava/lang/String;)V

    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->pathTracker:Lcom/thoughtworks/xstream/io/path/PathTracker;

    iget-boolean v1, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->isNameEncoding:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTrackingWriter;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/io/AbstractWriter;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/io/AbstractWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/path/PathTracker;->pushElement(Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/io/WriterWrapper;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
