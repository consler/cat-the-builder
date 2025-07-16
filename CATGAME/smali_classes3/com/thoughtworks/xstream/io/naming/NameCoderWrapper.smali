.class public Lcom/thoughtworks/xstream/io/naming/NameCoderWrapper;
.super Ljava/lang/Object;
.source "NameCoderWrapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/naming/NameCoder;


# instance fields
.field private final wrapped:Lcom/thoughtworks/xstream/io/naming/NameCoder;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/naming/NameCoderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    return-void
.end method


# virtual methods
.method public decodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/NameCoderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/naming/NameCoder;->decodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/NameCoderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/naming/NameCoder;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/NameCoderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/naming/NameCoder;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/naming/NameCoderWrapper;->wrapped:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/naming/NameCoder;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
