.class public Lcom/thoughtworks/xstream/io/xml/XomWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;
.source "XomWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XomWriter;-><init>(Lnu/xom/Element;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Element;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/XomWriter;-><init>(Lnu/xom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lnu/xom/Element;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/XomWriter;-><init>(Lnu/xom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method private top()Lnu/xom/Element;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomWriter;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu/xom/Element;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XomWriter;->top()Lnu/xom/Element;

    move-result-object v0

    new-instance v1, Lnu/xom/Attribute;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XomWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lnu/xom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnu/xom/Element;->addAttribute(Lnu/xom/Attribute;)V

    return-void
.end method

.method protected createNode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 49
    new-instance v0, Lnu/xom/Element;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XomWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnu/xom/Element;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XomWriter;->top()Lnu/xom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XomWriter;->top()Lnu/xom/Element;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnu/xom/Element;->appendChild(Lnu/xom/Node;)V

    :cond_0
    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XomWriter;->top()Lnu/xom/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnu/xom/Element;->appendChild(Ljava/lang/String;)V

    return-void
.end method
