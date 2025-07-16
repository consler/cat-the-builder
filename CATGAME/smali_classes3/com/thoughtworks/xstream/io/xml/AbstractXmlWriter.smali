.class public abstract Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;
.super Lcom/thoughtworks/xstream/io/AbstractWriter;
.source "AbstractXmlWriter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/xml/XmlFriendlyWriter;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method protected constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/AbstractWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method protected constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method public escapeXmlName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/AbstractWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
