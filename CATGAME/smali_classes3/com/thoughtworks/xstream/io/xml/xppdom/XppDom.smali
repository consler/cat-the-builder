.class public Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
.super Ljava/lang/Object;
.source "XppDom.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private attributes:Ljava/util/Map;

.field private childList:Ljava/util/List;

.field private transient childMap:Ljava/util/Map;

.field private name:Ljava/lang/String;

.field private parent:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->name:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    return-void
.end method

.method public static build(Lorg/xmlpull/v1/XmlPullParser;)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    .line 192
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 195
    new-instance v5, Lcom/thoughtworks/xstream/io/xml/xppdom/Xpp3Dom;

    invoke-direct {v5, v2}, Lcom/thoughtworks/xstream/io/xml/xppdom/Xpp3Dom;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 199
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 200
    invoke-virtual {v2, v5}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->addChild(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V

    .line 203
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_4

    .line 208
    invoke-interface {p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-interface {p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 210
    invoke-virtual {v5, v7, v8}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x4

    if-ne v2, v6, :cond_2

    .line 213
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .line 214
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuffer;

    .line 215
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    const/4 v6, 0x3

    if-ne v2, v6, :cond_4

    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .line 218
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 219
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    move-object v6, v3

    .line 228
    :cond_3
    invoke-virtual {v5, v6}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->setValue(Ljava/lang/String;)V

    if-nez v2, :cond_4

    move-object v4, v5

    .line 234
    :cond_4
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :cond_5
    return-object v4
.end method


# virtual methods
.method public addChild(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V
    .locals 2

    .line 106
    invoke-virtual {p1, p0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->setParent(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V

    .line 107
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 77
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object p1
.end method

.method public getChild(Ljava/lang/String;)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 142
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChildren()[Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0

    :cond_0
    new-array v1, v1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    check-cast v0, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;)[Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object p1

    .line 123
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 127
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 128
    invoke-virtual {v4}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 133
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    check-cast p1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->parent:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->value:Ljava/lang/String;

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 4

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    .line 163
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 165
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setParent(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->parent:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->value:Ljava/lang/String;

    return-void
.end method
