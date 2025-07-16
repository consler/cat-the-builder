.class public abstract Lcom/thoughtworks/xstream/io/ReaderWrapper;
.super Ljava/lang/Object;
.source "ReaderWrapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamReader;


# instance fields
.field protected wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;


# direct methods
.method protected constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    return-void
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->close()V

    return-void
.end method

.method public getAttribute(I)Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNames()Ljava/util/Iterator;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreChildren()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v0

    return v0
.end method

.method public moveDown()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    return-void
.end method

.method public moveUp()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    return-void
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    instance-of v1, v0, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamReader;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamReader;->peekNextChild()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "peekNextChild"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public underlyingReader()Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/ReaderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->underlyingReader()Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method
