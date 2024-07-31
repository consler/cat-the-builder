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
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->name:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public static build(Lorg/xmlpull/v1/XmlPullParser;)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
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
    .local v0, "elements":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, "values":Ljava/util/List;
    const/4 v2, 0x0

    .line 189
    .local v2, "node":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 190
    .local v3, "eventType":I
    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    .line 191
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 192
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "rawName":Ljava/lang/String;
    new-instance v5, Lcom/thoughtworks/xstream/io/xml/xppdom/Xpp3Dom;

    invoke-direct {v5, v4}, Lcom/thoughtworks/xstream/io/xml/xppdom/Xpp3Dom;-><init>(Ljava/lang/String;)V

    .line 197
    .local v5, "child":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 198
    .local v6, "depth":I
    if-lez v6, :cond_0

    .line 199
    add-int/lit8 v7, v6, -0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 200
    .local v7, "parent":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    invoke-virtual {v7, v5}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->addChild(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V

    .line 203
    .end local v7    # "parent":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    .line 207
    .local v7, "attributesSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_1

    .line 208
    invoke-interface {p0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, "name":Ljava/lang/String;
    invoke-interface {p0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v5, v9, v10}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 212
    .end local v4    # "rawName":Ljava/lang/String;
    .end local v5    # "child":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .end local v6    # "depth":I
    .end local v7    # "attributesSize":I
    .end local v8    # "i":I
    :cond_1
    goto :goto_4

    :cond_2
    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    .line 213
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .line 214
    .local v5, "depth":I
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    .line 215
    .local v4, "valueBuffer":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v4    # "valueBuffer":Ljava/lang/StringBuffer;
    .end local v5    # "depth":I
    goto :goto_3

    .line 216
    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .line 218
    .restart local v5    # "depth":I
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 219
    .local v4, "finalNode":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "accumulatedValue":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 223
    const/4 v7, 0x0

    .local v7, "finishedValue":Ljava/lang/String;
    goto :goto_2

    .line 225
    .end local v7    # "finishedValue":Ljava/lang/String;
    :cond_4
    move-object v7, v6

    .line 228
    .restart local v7    # "finishedValue":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, v7}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->setValue(Ljava/lang/String;)V

    .line 229
    if-nez v5, :cond_6

    .line 230
    move-object v2, v4

    goto :goto_4

    .line 216
    .end local v4    # "finalNode":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .end local v5    # "depth":I
    .end local v6    # "accumulatedValue":Ljava/lang/String;
    .end local v7    # "finishedValue":Ljava/lang/String;
    :cond_5
    :goto_3
    nop

    .line 234
    :cond_6
    :goto_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_0

    .line 237
    :cond_7
    return-object v2
.end method


# virtual methods
.method public addChild(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V
    .locals 2
    .param p1, "xpp3Dom"    # Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

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

    .line 109
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->attributes:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
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
    .param p1, "i"    # I

    .line 98
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 139
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

    .line 113
    new-array v0, v1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0

    .line 115
    :cond_0
    new-array v1, v1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    check-cast v0, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;)[Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 121
    new-array v0, v1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "children":Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 126
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 127
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 128
    .local v4, "configuration":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    invoke-virtual {v4}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v4    # "configuration":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v3    # "i":I
    :cond_2
    new-array v1, v1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    check-cast v1, [Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    return-object v1
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

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 165
    .local v1, "element":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->childMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v1    # "element":Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    goto :goto_0

    .line 167
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_0
    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

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

    .line 91
    return-void
.end method

.method public setParent(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V
    .locals 0
    .param p1, "parent"    # Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 154
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->parent:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 155
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->value:Ljava/lang/String;

    .line 67
    return-void
.end method
