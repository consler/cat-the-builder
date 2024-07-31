.class public Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;
.super Lcom/thoughtworks/xstream/XStream;
.source "BackwardCompatibleCatrobatLanguageXStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private brickInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;",
            ">;"
        }
    .end annotation
.end field

.field private scriptInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    const-class v0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;)V
    .locals 0
    .param p1, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;

    .line 215
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 216
    return-void
.end method

.method private checkReferences(Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .line 1136
    const-string v0, "reference"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1137
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getValidReference(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1141
    .local v0, "childNodes":Lorg/w3c/dom/NodeList;
    if-eqz v0, :cond_2

    .line 1142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1143
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1144
    .local v2, "childNode":Lorg/w3c/dom/Node;
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_1

    .line 1145
    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-direct {p0, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->checkReferences(Lorg/w3c/dom/Element;)V

    .line 1142
    .end local v2    # "childNode":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1149
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private convertChildNodeToAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "originalDocument"    # Lorg/w3c/dom/Document;
    .param p2, "parentNodeName"    # Ljava/lang/String;
    .param p3, "childNodeName"    # Ljava/lang/String;

    .line 999
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1000
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1001
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1002
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-direct {p0, v2, p3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->findNodeByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 1003
    .local v3, "childNode":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_0

    instance-of v4, v2, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_0

    .line 1004
    move-object v4, v2

    check-cast v4, Lorg/w3c/dom/Element;

    .line 1005
    .local v4, "elem":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p3, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-interface {v2, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1000
    .end local v2    # "node":Lorg/w3c/dom/Node;
    .end local v3    # "childNode":Lorg/w3c/dom/Node;
    .end local v4    # "elem":Lorg/w3c/dom/Element;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1009
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private copyAttributesIfNeeded(Lorg/w3c/dom/Node;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "sourceNode"    # Lorg/w3c/dom/Node;
    .param p2, "destinationNode"    # Lorg/w3c/dom/Element;

    .line 986
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loopEndlessBrick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loopEndBrick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 987
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ifLogicElseBrick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 988
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ifLogicEndBrick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 991
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 992
    .local v0, "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 993
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    .line 994
    .local v2, "node":Lorg/w3c/dom/Attr;
    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v3, v4, v5}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    .end local v2    # "node":Lorg/w3c/dom/Attr;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 989
    .end local v0    # "namedNodeMap":Lorg/w3c/dom/NamedNodeMap;
    :cond_2
    :goto_1
    return-void
.end method

.method private deleteChildNodeByName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "listNodeName"    # Ljava/lang/String;
    .param p3, "childNodeName"    # Ljava/lang/String;

    .line 973
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 974
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 975
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 976
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 977
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 978
    .local v3, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 979
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-direct {p0, v5, p3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->deleteChildNodeByName(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 978
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 974
    .end local v2    # "node":Lorg/w3c/dom/Node;
    .end local v3    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 983
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private deleteChildNodeByName(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1
    .param p1, "parentNode"    # Lorg/w3c/dom/Node;
    .param p2, "childNodeName"    # Ljava/lang/String;

    .line 966
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->findNodeByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 967
    .local v0, "node":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 968
    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 970
    :cond_0
    return-void
.end method

.method private findNodeByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "parentNode"    # Lorg/w3c/dom/Node;
    .param p2, "nodeName"    # Ljava/lang/String;

    .line 954
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 955
    .local v0, "childNodes":Lorg/w3c/dom/NodeList;
    if-eqz v0, :cond_1

    .line 956
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 957
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 958
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    return-object v2

    .line 956
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 962
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private generateReference([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "referenceParts"    # [Ljava/lang/String;

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1206
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1208
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1211
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAttributeOfNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/w3c/dom/Node;

    .line 845
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 846
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_0

    .line 847
    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 849
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBricksOfType(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 827
    const-string v0, "brick"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 828
    .local v0, "bricks":Lorg/w3c/dom/NodeList;
    const-string v1, "type"

    invoke-direct {p0, v0, v1, p2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getElementsFilteredByAttribute(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getDocument(Ljava/io/File;)Lorg/w3c/dom/Document;
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 913
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 914
    .local v0, "serializer":Ljavax/xml/transform/Transformer;
    const-string v1, "indent"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v1, "{http://xml.apache.org/xslt}indent-amount"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 918
    .local v1, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 919
    .local v2, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 920
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-direct {p0, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->normalizeWhiteSpaces(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    return-object v3

    .line 922
    .end local v0    # "serializer":Ljavax/xml/transform/Transformer;
    .end local v1    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v0

    .line 923
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->TAG:Ljava/lang/String;

    const-string v2, "Failed to parse file to a Document"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    .end local v0    # "exception":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getElementsFilteredByAttribute(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "unfiltered"    # Lorg/w3c/dom/NodeList;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "filterAttributeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 835
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 836
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-direct {p0, p2, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getAttributeOfNode(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 837
    .local v3, "attributeValue":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 838
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    .end local v2    # "node":Lorg/w3c/dom/Node;
    .end local v3    # "attributeValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private getScriptsOfType(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 822
    const-string v0, "script"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 823
    .local v0, "scripts":Lorg/w3c/dom/NodeList;
    const-string v1, "type"

    invoke-direct {p0, v0, v1, p2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getElementsFilteredByAttribute(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getValidReference(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "brickNode"    # Lorg/w3c/dom/Node;
    .param p2, "reference"    # Ljava/lang/String;

    .line 1152
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, "parts":[Ljava/lang/String;
    move-object v1, p1

    .line 1154
    .local v1, "node":Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_9

    .line 1155
    aget-object v3, v0, v2

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1156
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    goto/16 :goto_3

    .line 1158
    :cond_0
    const/4 v3, 0x0

    .line 1159
    .local v3, "position":I
    aget-object v4, v0, v2

    .line 1160
    .local v4, "nodeName":Ljava/lang/String;
    aget-object v5, v0, v2

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1161
    aget-object v5, v0, v2

    const/4 v7, 0x0

    aget-object v8, v0, v2

    const/16 v9, 0x5b

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1162
    aget-object v5, v0, v2

    aget-object v7, v0, v2

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget-object v8, v0, v2

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 1165
    :cond_1
    const/4 v5, 0x0

    .line 1166
    .local v5, "occurrence":I
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 1167
    .local v7, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 1168
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 1170
    .local v9, "childNode":Lorg/w3c/dom/Element;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1171
    if-ne v5, v3, :cond_2

    .line 1172
    move-object v1, v9

    .line 1173
    goto/16 :goto_3

    .line 1175
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1177
    :cond_3
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "script"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "type"

    if-eqz v10, :cond_5

    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    .line 1178
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1179
    if-ne v5, v3, :cond_4

    .line 1180
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "script["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 1181
    move-object v1, v9

    .line 1182
    goto :goto_3

    .line 1184
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1186
    :cond_5
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "brick"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    .line 1187
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    invoke-virtual {v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->getBrickClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1188
    if-ne v5, v3, :cond_6

    .line 1189
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "brick["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 1190
    move-object v1, v9

    .line 1191
    goto :goto_3

    .line 1193
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 1167
    .end local v9    # "childNode":Lorg/w3c/dom/Element;
    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1154
    .end local v3    # "position":I
    .end local v4    # "nodeName":Ljava/lang/String;
    .end local v5    # "occurrence":I
    .end local v7    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v8    # "j":I
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1200
    .end local v2    # "i":I
    :cond_9
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->generateReference([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleFormulaNode(Lorg/w3c/dom/Document;Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "brickInfo"    # Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;
    .param p3, "newParentNode"    # Lorg/w3c/dom/Element;
    .param p4, "oldNode"    # Lorg/w3c/dom/Element;

    .line 1096
    const-string v0, "formulaList"

    invoke-direct {p0, p3, v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->findNodeByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1097
    .local v1, "formulaListNode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 1098
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1099
    invoke-interface {p3, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1102
    :cond_0
    const-string v0, "formulaTree"

    invoke-direct {p0, p4, v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->findNodeByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1103
    .local v0, "formulaNode":Lorg/w3c/dom/Element;
    const-string v2, "formula"

    if-nez v0, :cond_1

    .line 1104
    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    .line 1106
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3, v2}, Lorg/w3c/dom/Document;->renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 1108
    :goto_0
    invoke-interface {p4}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->getBrickFieldForOldFieldName(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1109
    .local v2, "category":Ljava/lang/String;
    const-string v3, "category"

    invoke-interface {v0, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v3, "SPEAK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "NOTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1111
    :cond_2
    const-string v3, "type"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 1112
    .local v3, "type":Lorg/w3c/dom/Element;
    const-string v4, "STRING"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1113
    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1115
    const-string v4, "value"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 1116
    .local v4, "value":Lorg/w3c/dom/Element;
    invoke-interface {p4}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 1117
    .local v5, "textContent":Ljava/lang/String;
    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1118
    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1120
    .end local v3    # "type":Lorg/w3c/dom/Element;
    .end local v4    # "value":Lorg/w3c/dom/Element;
    .end local v5    # "textContent":Ljava/lang/String;
    :cond_3
    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1121
    return-void
.end method

.method private handleUserVariableNode(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "parentNode"    # Lorg/w3c/dom/Element;
    .param p2, "userVariableNode"    # Lorg/w3c/dom/Element;

    .line 1124
    const-string v0, "reference"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    const-string v0, "name"

    invoke-direct {p0, p2, v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->findNodeByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1126
    .local v0, "nameNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 1127
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 1128
    .local v1, "userVariable":Ljava/lang/String;
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1129
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 1132
    .end local v0    # "nameNode":Lorg/w3c/dom/Node;
    .end local v1    # "userVariable":Ljava/lang/String;
    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1133
    return-void
.end method

.method private initializeBrickInfoMap()V
    .locals 13

    .line 231
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    .line 237
    new-instance v0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v1, Lorg/catrobat/catroid/content/bricks/AskBrick;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    .line 238
    .local v0, "brickInfo":Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ASK_QUESTION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "askQuestion"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 239
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "askBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/AskSpeechBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 242
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ASK_SPEECH_QUESTION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "askQuestionSpoken"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 243
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "askSpeechBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/StartListeningBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 246
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "startListeningBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetListeningLanguageBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 249
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setSpeechLanguageBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/BroadcastBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 252
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "broadcastBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/BroadcastReceiverBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 255
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "broadcastReceiverBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/BroadcastWaitBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 258
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "broadcastWaitBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/ChangeBrightnessByNBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 261
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BRIGHTNESS_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "changeBrightness"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 262
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "changeBrightnessByNBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/ChangeColorByNBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 265
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->COLOR_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "changeColor"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 266
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "changeColorByNBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/ChangeTransparencyByNBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 269
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TRANSPARENCY_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "changeTransparency"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 270
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "changeTransparencyByNBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/ChangeSizeByNBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 273
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->SIZE_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 274
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v3, "changeSizeByNBrick"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v3, Lorg/catrobat/catroid/content/bricks/ChangeVariableBrick;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 277
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VARIABLE_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v3, "variableFormula"

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 278
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v4, "changeVariableBrick"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v4, Lorg/catrobat/catroid/content/bricks/ChangeVolumeByNBrick;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 281
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VOLUME_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v4, "volume"

    invoke-virtual {v0, v4, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 282
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v5, "changeVolumeByNBrick"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v5, Lorg/catrobat/catroid/content/bricks/ChangeXByNBrick;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 285
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v5, "xMovement"

    invoke-virtual {v0, v5, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 286
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v5, "changeXByNBrick"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v5, Lorg/catrobat/catroid/content/bricks/ChangeYByNBrick;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 289
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION_CHANGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v5, "yMovement"

    invoke-virtual {v0, v5, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 290
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v5, "changeYByNBrick"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v5, Lorg/catrobat/catroid/content/bricks/ResetTimerBrick;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 293
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v5, "resetTimerBrick"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v5, Lorg/catrobat/catroid/content/bricks/OpenUrlBrick;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 296
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v5, "OpenUrlBrick"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v5, Lorg/catrobat/catroid/content/bricks/ClearGraphicEffectBrick;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 299
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v5, "clearGraphicEffectBrick"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v5, Lorg/catrobat/catroid/content/bricks/ComeToFrontBrick;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 302
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v5, "comeToFrontBrick"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v5, Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 305
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v5, "foreverBrick"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v5, Lorg/catrobat/catroid/content/bricks/GlideToBrick;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 308
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v5, "xDestination"

    invoke-virtual {v0, v5, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 309
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v6, "yDestination"

    invoke-virtual {v0, v6, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 310
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v7, "durationInSeconds"

    invoke-virtual {v0, v7, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 311
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v8, "glideToBrick"

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v8, Lorg/catrobat/catroid/content/bricks/GoNStepsBackBrick;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, p0, v8}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 314
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STEPS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v8, "steps"

    invoke-virtual {v0, v8, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 315
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "goNStepsBackBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/HideBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 318
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "hideBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 321
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v9, "ifCondition"

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 322
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v10, "ifLogicBeginBrick"

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v10, Lorg/catrobat/catroid/content/bricks/IfLogicElseBrick;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, p0, v10}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 325
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v10, "ifLogicElseBrick"

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v10, Lorg/catrobat/catroid/content/bricks/IfLogicEndBrick;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, p0, v10}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 328
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v10, "ifLogicEndBrick"

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v10, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, p0, v10}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 331
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 332
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "ifThenLogicBeginBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/IfThenLogicEndBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 335
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "ifThenLogicEndBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/IfOnEdgeBounceBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 338
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "ifOnEdgeBounceBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/FlashBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 341
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "flashBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/LegoNxtMotorMoveBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 344
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->LEGO_NXT_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v9, "speed"

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 345
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v10, "legoNxtMotorMoveBrick"

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v10, Lorg/catrobat/catroid/content/bricks/LegoNxtMotorStopBrick;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, p0, v10}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 348
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v10, "legoNxtMotorStopBrick"

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v10, Lorg/catrobat/catroid/content/bricks/LegoNxtMotorTurnAngleBrick;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, p0, v10}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 351
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->LEGO_NXT_DEGREES:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v10, "degrees"

    invoke-virtual {v0, v10, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 352
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "legoNxtMotorTurnAngleBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/LegoNxtPlayToneBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 355
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->LEGO_NXT_FREQUENCY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v11, "frequency"

    invoke-virtual {v0, v11, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 356
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->LEGO_NXT_DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v7, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 357
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "legoNxtPlayToneBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveForwardBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 360
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 361
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "phiroMotorMoveForwardBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/PhiroMotorMoveBackwardBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 364
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 365
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "phiroMotorMoveBackwardBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/PhiroMotorStopBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 368
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "phiroMotorStopBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/PhiroPlayToneBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 371
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v7, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 372
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "phiroPlayToneBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/PhiroRGBLightBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 375
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v9, "light"

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 376
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 377
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 378
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "phiroRGBLightBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 381
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "phiroSensorBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/IfLogicElseBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 384
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "phiroSensorElseBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/IfLogicEndBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 387
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "phiroSensorEndBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/ArduinoSendDigitalValueBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 390
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_DIGITAL_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v9, "digitalPinNumber"

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 391
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_DIGITAL_PIN_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v11, "digitalPinValue"

    invoke-virtual {v0, v11, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 392
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v12, "arduinoSendDigitalValueBrick"

    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v12, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, p0, v12}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 395
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_ANALOG_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v12, "pwmPinNumber"

    invoke-virtual {v0, v12, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 396
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->ARDUINO_ANALOG_PIN_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v12, "pwmPinValue"

    invoke-virtual {v0, v12, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 397
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v12, "arduinoSendPWMValueBrick"

    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v12, Lorg/catrobat/catroid/content/bricks/RaspiSendDigitalValueBrick;

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, p0, v12}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 400
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 401
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_VALUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v11, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 402
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "raspiSendDigitalValueBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/RaspiPwmBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 405
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_DIGITAL_PIN_NUMBER:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 406
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_PWM_FREQUENCY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v11, "pwmFrequency"

    invoke-virtual {v0, v11, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 407
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->RASPI_PWM_PERCENTAGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v11, "pwmPercentage"

    invoke-virtual {v0, v11, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 408
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "raspiPwmBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/RaspiIfLogicBeginBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 411
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 412
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "raspiIfLogicBeginBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 415
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "userDefinedBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/ReportBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 418
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "reportBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/LoopEndBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 421
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "loopEndBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/LoopEndlessBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 424
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v9, "loopEndlessBrick"

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v9, Lorg/catrobat/catroid/content/bricks/MoveNStepsBrick;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p0, v9}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 427
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STEPS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v8, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 428
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v8, "moveNStepsBrick"

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v8, Lorg/catrobat/catroid/content/bricks/NextLookBrick;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, p0, v8}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 431
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v8, "nextLookBrick"

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v8, Lorg/catrobat/catroid/content/bricks/PreviousLookBrick;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, p0, v8}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 434
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v8, "previousLookBrick"

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v8, Lorg/catrobat/catroid/content/bricks/NoteBrick;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, p0, v8}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 437
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NOTE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v8, "note"

    invoke-virtual {v0, v8, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 438
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v8, "noteBrick"

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v8, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, p0, v8}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 441
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v8, "xPosition"

    invoke-virtual {v0, v8, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 442
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v9, "yPosition"

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 443
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "placeAtBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/GoToBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 446
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "goToBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/PlayDrumForBeatsBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 449
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "playDrumForBeatsBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 452
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "playSoundBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/PlaySoundAndWaitBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 455
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "playSoundAndWaitBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/SetTempoBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 458
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "setTempoBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/ChangeTempoByNBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 461
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "changeTempoByNBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/PlayNoteForBeatsBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 464
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "playNoteForBeatsBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/PointInDirectionBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 467
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DEGREES:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v10, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 468
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "pointInDirectionBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/PointToBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 471
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "pointToBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/RepeatBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 474
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TIMES_TO_REPEAT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v11, "timesToRepeat"

    invoke-virtual {v0, v11, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 475
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "repeatBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/SceneTransitionBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 478
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "sceneTransitionBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 481
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "sceneStartBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/SetBrightnessBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 484
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BRIGHTNESS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v11, "brightness"

    invoke-virtual {v0, v11, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 485
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "setBrightnessBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/SetColorBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 488
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->COLOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v11, "color"

    invoke-virtual {v0, v11, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 489
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "setColorBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/SetTransparencyBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 492
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TRANSPARENCY:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v11, "transparency"

    invoke-virtual {v0, v11, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 493
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "setTransparencyBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/SetBackgroundBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 496
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "setBackgroundBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/SetBackgroundAndWaitBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 499
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "setBackgroundAndWaitBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/SetLookBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 502
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "setLookBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/SetRotationStyleBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 505
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v11, "setRotationStyleBrick"

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v11, Lorg/catrobat/catroid/content/bricks/SetSizeToBrick;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, p0, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 508
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->SIZE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 509
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setSizeToBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 512
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VARIABLE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 513
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setVariableBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetVolumeToBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 516
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->VOLUME:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v4, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 517
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setVolumeToBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetXBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 520
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v8, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 521
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setXBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetYBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 524
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_POSITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v9, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 525
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setYBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/ShowBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 528
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "showBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SpeakBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 531
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->SPEAK:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 532
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v3, "speakBrick"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v3, Lorg/catrobat/catroid/content/bricks/ThinkBubbleBrick;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 535
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 536
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v3, "thinkBubbleBrick"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v3, Lorg/catrobat/catroid/content/bricks/SayBubbleBrick;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 539
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 540
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v3, "sayBubbleBrick"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v3, Lorg/catrobat/catroid/content/bricks/ThinkForBubbleBrick;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 543
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 544
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v7, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 545
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v3, "thinkForBubbleBrick"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v3, Lorg/catrobat/catroid/content/bricks/SayForBubbleBrick;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 548
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 549
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DURATION_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v7, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 550
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v3, "sayForBubbleBrick"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v3, Lorg/catrobat/catroid/content/bricks/SpeakAndWaitBrick;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 553
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->SPEAK:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 554
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "speakAndWaitBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/WhenBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 557
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "whenBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 560
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "emptyEventBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 563
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "whenConditionBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/TurnLeftBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 566
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TURN_LEFT_DEGREES:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v10, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 567
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "turnLeftBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/TurnRightBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 570
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TURN_RIGHT_DEGREES:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v10, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 571
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "turnRightBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/VibrationBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 574
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "vibrationBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/WaitBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 577
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TIME_TO_WAIT_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "timeToWaitInSeconds"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 578
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "waitBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/StopAllSoundsBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 581
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "stopAllSoundsBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/WhenStartedBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 584
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "whenStartedBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/StopScriptBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 587
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "stopScriptBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/WhenNfcBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 590
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "whenNfcBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 593
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setNfcTagBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/WhenClonedBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 596
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "whenClonedBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/CloneBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 599
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "cloneBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/DeleteThisCloneBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 602
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "deleteThisCloneBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/DronePlayLedAnimationBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 605
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "dronePlayLedAnimationBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/DroneEmergencyBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 608
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "droneGoEmergencyBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/DroneTakeOffLandBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 611
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "droneTakeOffBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/DroneMoveForwardBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 614
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_TIME_TO_FLY_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "timeToFlyInSeconds"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 615
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_POWER_IN_PERCENT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v3, "powerInPercent"

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 616
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v4, "droneMoveForwardBrick"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v4, Lorg/catrobat/catroid/content/bricks/DroneMoveBackwardBrick;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 619
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_TIME_TO_FLY_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 620
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_POWER_IN_PERCENT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 621
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v4, "droneMoveBackwardBrick"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v4, Lorg/catrobat/catroid/content/bricks/DroneMoveUpBrick;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 624
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_TIME_TO_FLY_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 625
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_POWER_IN_PERCENT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 626
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v4, "droneMoveUpBrick"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v4, Lorg/catrobat/catroid/content/bricks/DroneMoveDownBrick;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 629
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_TIME_TO_FLY_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 630
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_POWER_IN_PERCENT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 631
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v4, "droneMoveDownBrick"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v4, Lorg/catrobat/catroid/content/bricks/DroneMoveLeftBrick;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 634
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_TIME_TO_FLY_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 635
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_POWER_IN_PERCENT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 636
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v4, "droneMoveLeftBrick"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v4, Lorg/catrobat/catroid/content/bricks/DroneMoveRightBrick;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 639
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_TIME_TO_FLY_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 640
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_POWER_IN_PERCENT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 641
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v4, "droneMoveRightBrick"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v4, Lorg/catrobat/catroid/content/bricks/DroneTurnLeftBrick;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 644
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_TIME_TO_FLY_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 645
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_POWER_IN_PERCENT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 646
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v4, "droneTurnLeftBrick"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v4, Lorg/catrobat/catroid/content/bricks/DroneTurnRightBrick;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 649
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_TIME_TO_FLY_IN_SECONDS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 650
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->DRONE_POWER_IN_PERCENT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v3, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 651
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "droneTurnRightBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/DroneSwitchCameraBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 654
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "droneSwitchCameraBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/DroneEmergencyBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 657
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "droneEmergencyBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/DroneFlipBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 660
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "droneFlipBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetTextBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 663
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->X_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v5, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 664
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->Y_DESTINATION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v6, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 665
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->STRING:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "string"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 666
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setTextBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/ShowTextBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 669
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "showTextBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/HideTextBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 672
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "hideTextBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/CameraBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 675
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "videoBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/ChooseCameraBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 678
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "chooseCameraBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/WhenBounceOffBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 681
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "collisionReceiverBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetBounceBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 684
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_BOUNCE_FACTOR:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "bounceFactor"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 685
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setBounceBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetFrictionBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 688
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_FRICTION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "friction"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 689
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setFrictionBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetGravityBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 692
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_GRAVITY_X:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "gravityX"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 693
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_GRAVITY_Y:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "gravityY"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 694
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setGravityBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetMassBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 697
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_MASS:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "mass"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 698
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setMassBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetPhysicsObjectTypeBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 701
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setPhysicsObjectTypeBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetVelocityBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 704
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_VELOCITY_X:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "velocityX"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 705
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_VELOCITY_Y:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "velocityY"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 706
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setVelocityBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/TurnLeftSpeedBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 709
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_TURN_LEFT_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "turnLeftSpeed"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 710
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "turnLeftSpeedBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/TurnRightSpeedBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 713
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHYSICS_TURN_RIGHT_SPEED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "turnRightSpeed"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 714
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "turnRightSpeedBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/PenDownBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 717
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "penDownBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/PenUpBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 720
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "penUpBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/StampBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 723
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "stampBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/ClearBackgroundBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 726
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "clearBackgroundBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetPenSizeBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 729
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_SIZE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "penSize"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 730
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setPenSizeBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 733
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const-string v2, "penColor"

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 734
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 735
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 736
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setPenColorBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/WhenGamepadButtonBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 739
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "whenGamepadButtonBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SewUpBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 742
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "sewUpBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/SetThreadColorBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 745
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "setThreadColorBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/FadeParticleEffectBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 748
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "fadeParticleEffectBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    const-class v2, Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;-><init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 751
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    const-string v2, "particleEffectAdditiveBrick"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    return-void
.end method

.method private initializeScriptInfoMap()V
    .locals 3

    .line 755
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 756
    return-void

    .line 759
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    .line 760
    const-class v1, Lorg/catrobat/catroid/content/StartScript;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startScript"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    const-class v1, Lorg/catrobat/catroid/content/WhenScript;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "whenScript"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    const-class v1, Lorg/catrobat/catroid/content/WhenConditionScript;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "whenConditionScript"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    const-class v1, Lorg/catrobat/catroid/content/WhenBackgroundChangesScript;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "whenBackgroundChangesScript"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    const-class v1, Lorg/catrobat/catroid/content/BroadcastScript;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "broadcastScript"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    const-class v1, Lorg/catrobat/catroid/content/RaspiInterruptScript;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raspiInterruptScript"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    const-class v1, Lorg/catrobat/catroid/content/WhenNfcScript;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "whenNfcScript"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    const-class v1, Lorg/catrobat/catroid/content/WhenBounceOffScript;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "collisionScript"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    const-class v1, Lorg/catrobat/catroid/content/WhenTouchDownScript;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "whenTouchDownScript"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    const-class v1, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "whenGamepadButtonScript"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    const-class v1, Lorg/catrobat/catroid/content/UserDefinedScript;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userDefinedScript"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    return-void
.end method

.method private modifyBrickLists(Lorg/w3c/dom/Document;)V
    .locals 13
    .param p1, "originalDocument"    # Lorg/w3c/dom/Document;

    .line 1043
    const-string v0, "brickList"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1044
    .local v0, "brickListNodeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 1045
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1046
    .local v2, "brickListNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1047
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1048
    .local v3, "brickListChildNodes":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 1049
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 1050
    .local v5, "brickNode":Lorg/w3c/dom/Node;
    const-string v6, "brick"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 1052
    .local v6, "newBrickNode":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "setGhostEffectBrick"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1053
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    const-string v8, "setTransparencyBrick"

    invoke-interface {p1, v5, v7, v8}, Lorg/w3c/dom/Document;->renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 1055
    :cond_0
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "changeGhostEffectByNBrick"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1056
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    const-string v8, "changeTransparencyByNBrick"

    invoke-interface {p1, v5, v7, v8}, Lorg/w3c/dom/Document;->renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 1059
    :cond_1
    iget-object v7, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->brickInfoMap:Ljava/util/HashMap;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    .line 1060
    .local v7, "brickInfo":Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;
    if-eqz v7, :cond_8

    .line 1061
    invoke-static {v7}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->access$000(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "type"

    invoke-interface {v6, v9, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    invoke-direct {p0, v5, v6}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->copyAttributesIfNeeded(Lorg/w3c/dom/Node;Lorg/w3c/dom/Element;)V

    .line 1064
    invoke-interface {v5}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1065
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 1066
    .local v8, "brickChildNodes":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 1067
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1069
    .local v10, "brickChild":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "changeGhostEffect"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1070
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    const-string v12, "changeTransparency"

    invoke-interface {p1, v10, v11, v12}, Lorg/w3c/dom/Document;->renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 1073
    :cond_2
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->getBrickFieldForOldFieldName(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 1074
    invoke-direct {p0, p1, v7, v6, v10}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->handleFormulaNode(Lorg/w3c/dom/Document;Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    goto :goto_3

    .line 1075
    :cond_3
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "userVariable"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1076
    invoke-direct {p0, v6, v10}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->handleUserVariableNode(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    goto :goto_3

    .line 1077
    :cond_4
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "loopEndBrick"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1078
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ifElseBrick"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1079
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ifEndBrick"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1080
    goto :goto_3

    .line 1082
    :cond_5
    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1066
    .end local v10    # "brickChild":Lorg/w3c/dom/Element;
    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1086
    .end local v8    # "brickChildNodes":Lorg/w3c/dom/NodeList;
    .end local v9    # "k":I
    :cond_7
    invoke-interface {v2, v6, v5}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_4

    .line 1088
    :cond_8
    sget-object v8, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": Found no bricks to convert to new structure."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    .end local v5    # "brickNode":Lorg/w3c/dom/Node;
    .end local v6    # "newBrickNode":Lorg/w3c/dom/Element;
    .end local v7    # "brickInfo":Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1044
    .end local v2    # "brickListNode":Lorg/w3c/dom/Node;
    .end local v3    # "brickListChildNodes":Lorg/w3c/dom/NodeList;
    .end local v4    # "j":I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1093
    .end local v1    # "i":I
    :cond_a
    return-void
.end method

.method private modifyCameraBricks(Lorg/w3c/dom/Document;)V
    .locals 11
    .param p1, "originalDocument"    # Lorg/w3c/dom/Document;

    .line 886
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "CameraBrick"

    const-string v3, "spinnerSelectionON"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ChooseCameraBrick"

    const-string v3, "spinnerSelectionFRONT"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 890
    .local v0, "brickUpdateData":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 891
    .local v2, "brick":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 892
    .local v3, "brickType":Ljava/lang/String;
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 893
    .local v4, "newNodeName":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getBricksOfType(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;

    .line 894
    .local v6, "node":Lorg/w3c/dom/Node;
    const-string v7, "spinnerSelectionID"

    invoke-direct {p0, v6, v7}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->findNodeByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 895
    .local v7, "childNode":Lorg/w3c/dom/Node;
    if-nez v7, :cond_0

    .line 896
    goto :goto_1

    .line 898
    :cond_0
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 899
    .local v8, "value":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 900
    goto :goto_1

    .line 902
    :cond_1
    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "false"

    goto :goto_2

    :cond_2
    const-string v9, "true"

    .line 903
    .local v9, "newValue":Ljava/lang/String;
    :goto_2
    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 904
    .local v10, "newChildNode":Lorg/w3c/dom/Node;
    invoke-interface {v10, v9}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 905
    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 906
    invoke-interface {v6, v10}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 907
    .end local v6    # "node":Lorg/w3c/dom/Node;
    .end local v7    # "childNode":Lorg/w3c/dom/Node;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "newValue":Ljava/lang/String;
    .end local v10    # "newChildNode":Lorg/w3c/dom/Node;
    goto :goto_1

    .line 908
    .end local v2    # "brick":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "brickType":Ljava/lang/String;
    .end local v4    # "newNodeName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 909
    :cond_4
    return-void
.end method

.method private modifyScriptLists(Lorg/w3c/dom/Document;)V
    .locals 11
    .param p1, "originalDocument"    # Lorg/w3c/dom/Document;

    .line 1012
    const-string v0, "scriptList"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1013
    .local v0, "scriptListNodeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1014
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1015
    .local v2, "scriptListNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1016
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1017
    .local v3, "scriptListChildNodes":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1018
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 1019
    .local v5, "scriptNode":Lorg/w3c/dom/Node;
    const-string v6, "script"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 1021
    .local v6, "newScriptNode":Lorg/w3c/dom/Element;
    iget-object v7, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->scriptInfoMap:Ljava/util/HashMap;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1022
    .local v7, "scriptName":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 1023
    const-string v8, "type"

    invoke-interface {v6, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-direct {p0, v5, v6}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->copyAttributesIfNeeded(Lorg/w3c/dom/Node;Lorg/w3c/dom/Element;)V

    .line 1026
    invoke-interface {v5}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1027
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 1028
    .local v8, "scriptNodeChildList":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 1029
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v6, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1028
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1033
    .end local v8    # "scriptNodeChildList":Lorg/w3c/dom/NodeList;
    .end local v9    # "k":I
    :cond_0
    invoke-interface {v2, v6, v5}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    .line 1035
    :cond_1
    sget-object v8, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": Found no scripts to convert to new structure.\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    .end local v5    # "scriptNode":Lorg/w3c/dom/Node;
    .end local v6    # "newScriptNode":Lorg/w3c/dom/Element;
    .end local v7    # "scriptName":Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1013
    .end local v2    # "scriptListNode":Lorg/w3c/dom/Node;
    .end local v3    # "scriptListChildNodes":Lorg/w3c/dom/NodeList;
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1040
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private modifyVariables(Lorg/w3c/dom/Document;)V
    .locals 3
    .param p1, "originalDocument"    # Lorg/w3c/dom/Document;

    .line 876
    const-string v0, "variables"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 877
    .local v0, "variableNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 878
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "variableNodeNamespaceURI":Ljava/lang/String;
    const-string v2, "data"

    invoke-interface {p1, v0, v1, v2}, Lorg/w3c/dom/Document;->renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 880
    .end local v1    # "variableNodeNamespaceURI":Ljava/lang/String;
    goto :goto_0

    .line 881
    :cond_0
    sget-object v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->TAG:Ljava/lang/String;

    const-string v2, "XML-Update: No variables to modify."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :goto_0
    return-void
.end method

.method private modifyXMLToSupportUnknownFields(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 774
    invoke-direct {p0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->initializeScriptInfoMap()V

    .line 775
    invoke-direct {p0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->initializeBrickInfoMap()V

    .line 776
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getDocument(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 777
    .local v0, "originalDocument":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_0

    .line 778
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->updateLegoNXTFields(Lorg/w3c/dom/Document;)V

    .line 780
    const-string v1, "lookList"

    const-string v2, "name"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->convertChildNodeToAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v1, "object"

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->convertChildNodeToAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v2, "scriptList"

    invoke-direct {p0, v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->deleteChildNodeByName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v2, "brickList"

    invoke-direct {p0, v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->deleteChildNodeByName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v1, "header"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v3, "isPhiroProProject"

    invoke-direct {p0, v1, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->deleteChildNodeByName(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 786
    const-string v1, "inUserBrick"

    invoke-direct {p0, v0, v2, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->deleteChildNodeByName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v1, "CollisionScript"

    const-string v2, "receivedMessage"

    const-string v3, "spriteToBounceOffName"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->renameScriptChildNodeByName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v2, "spriteToCollideWithName"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->renameScriptChildNodeByName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-class v2, Lorg/catrobat/catroid/content/WhenBounceOffScript;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->renameScriptType(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->modifyScriptLists(Lorg/w3c/dom/Document;)V

    .line 794
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->modifyBrickLists(Lorg/w3c/dom/Document;)V

    .line 795
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->modifyVariables(Lorg/w3c/dom/Document;)V

    .line 796
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->modifyCameraBricks(Lorg/w3c/dom/Document;)V

    .line 797
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->checkReferences(Lorg/w3c/dom/Element;)V

    .line 799
    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->saveDocument(Lorg/w3c/dom/Document;Ljava/io/File;)V

    .line 801
    :cond_0
    return-void
.end method

.method private normalizeWhiteSpaces(Lorg/w3c/dom/Document;)V
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 943
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    .line 944
    .local v0, "xPath":Ljavax/xml/xpath/XPath;
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    const-string v2, "//text()[normalize-space(.)=\'\']"

    invoke-interface {v0, v2, p1, v1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/NodeList;

    .line 947
    .local v1, "emptyTextNodeList":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 948
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 949
    .local v3, "emptyTextNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 947
    .end local v3    # "emptyTextNode":Lorg/w3c/dom/Node;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 951
    .end local v2    # "index":I
    :cond_0
    return-void
.end method

.method private renameScriptChildNodeByName(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "originalDocument"    # Lorg/w3c/dom/Document;
    .param p2, "scriptName"    # Ljava/lang/String;
    .param p3, "oldChildNodeName"    # Ljava/lang/String;
    .param p4, "newChildNodeName"    # Ljava/lang/String;

    .line 813
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getScriptsOfType(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 814
    .local v1, "script":Lorg/w3c/dom/Node;
    invoke-direct {p0, v1, p3}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->findNodeByName(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 815
    .local v2, "message":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_0

    .line 816
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, p4}, Lorg/w3c/dom/Document;->renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 818
    .end local v1    # "script":Lorg/w3c/dom/Node;
    .end local v2    # "message":Lorg/w3c/dom/Element;
    :cond_0
    goto :goto_0

    .line 819
    :cond_1
    return-void
.end method

.method private renameScriptType(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "oldTypeName"    # Ljava/lang/String;
    .param p3, "newTypeName"    # Ljava/lang/String;

    .line 804
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->getScriptsOfType(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 805
    .local v1, "script":Lorg/w3c/dom/Node;
    instance-of v2, v1, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    .line 806
    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "type"

    invoke-interface {v2, v3, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    .end local v1    # "script":Lorg/w3c/dom/Node;
    :cond_0
    goto :goto_0

    .line 809
    :cond_1
    return-void
.end method

.method private saveDocument(Lorg/w3c/dom/Document;Ljava/io/File;)V
    .locals 4
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "file"    # Ljava/io/File;

    .line 930
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 931
    .local v0, "serializer":Ljavax/xml/transform/Transformer;
    const-string v1, "indent"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v1, "{http://xml.apache.org/xslt}indent-amount"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 935
    .local v1, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/lang/String;)V

    .line 936
    .local v2, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    .end local v0    # "serializer":Ljavax/xml/transform/Transformer;
    .end local v1    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v2    # "result":Ljavax/xml/transform/stream/StreamResult;
    goto :goto_0

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "exception":Ljava/lang/Exception;
    sget-object v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->TAG:Ljava/lang/String;

    const-string v2, "Failed to save document to file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private updateLegoNXTFields(Lorg/w3c/dom/Document;)V
    .locals 10
    .param p1, "originalDocument"    # Lorg/w3c/dom/Document;

    .line 854
    const-string v0, "MOTOR_A_C"

    .line 855
    .local v0, "oldDriveMotors":Ljava/lang/String;
    const-string v1, "MOTOR_B_C"

    .line 857
    .local v1, "newDriveMotors":Ljava/lang/String;
    const-string v2, "legoNxtMotorActionBrick"

    .line 858
    .local v2, "oldMotorMoveBrickName":Ljava/lang/String;
    const-string v3, "legoNxtMotorMoveBrick"

    .line 860
    .local v3, "newMotorMoveBrickName":Ljava/lang/String;
    const-string v4, "motor"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 861
    .local v4, "motors":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 862
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 863
    .local v6, "motor":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MOTOR_A_C"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 864
    const-string v7, "MOTOR_B_C"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 861
    .end local v6    # "motor":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 868
    .end local v5    # "i":I
    :cond_1
    const-string v5, "legoNxtMotorActionBrick"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 869
    .local v5, "motorMoveBricks":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 870
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 871
    .local v7, "motorMoveBrick":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    const-string v9, "legoNxtMotorMoveBrick"

    invoke-interface {p1, v7, v8, v9}, Lorg/w3c/dom/Document;->renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 869
    .end local v7    # "motorMoveBrick":Lorg/w3c/dom/Node;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 873
    .end local v6    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getProjectFromXML(Ljava/io/File;)Ljava/lang/Object;
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 221
    :try_start_0
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/thoughtworks/xstream/converters/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .local v0, "parsedObject":Ljava/lang/Object;
    goto :goto_0

    .line 222
    .end local v0    # "parsedObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    sget-object v1, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conversion error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/ConversionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;->modifyXMLToSupportUnknownFields(Ljava/io/File;)V

    .line 225
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 227
    .local v0, "parsedObject":Ljava/lang/Object;
    :goto_0
    return-object v0
.end method
