.class public Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;
.super Ljava/lang/Object;
.source "ExtendedHierarchicalStreamWriterHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 23
    instance-of v0, p0, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;

    if-eqz v0, :cond_0

    .line 24
    check-cast p0, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;

    invoke-interface {p0, p1, p2}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
