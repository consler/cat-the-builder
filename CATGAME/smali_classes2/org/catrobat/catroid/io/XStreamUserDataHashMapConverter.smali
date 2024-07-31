.class public Lorg/catrobat/catroid/io/XStreamUserDataHashMapConverter;
.super Ljava/lang/Object;
.source "XStreamUserDataHashMapConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final USERDATA:Ljava/lang/String; = "userData"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 44
    const-class v0, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "hierarchicalStreamWriter"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "marshallingContext"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 50
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    .line 51
    .local v0, "userDataHashMap":Lorg/catrobat/catroid/content/bricks/UserDataHashMap;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    .line 52
    .local v2, "brickData":Lorg/catrobat/catroid/content/bricks/Brick$BrickData;
    const-string v3, "userData"

    invoke-interface {p2, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "category"

    invoke-interface {p2, v4, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 57
    :cond_0
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 58
    .end local v2    # "brickData":Lorg/catrobat/catroid/content/bricks/Brick$BrickData;
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "hierarchicalStreamReader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "unmarshallingContext"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 63
    new-instance v0, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;-><init>()V

    .line 64
    .local v0, "userDataHashMap":Lorg/catrobat/catroid/content/bricks/UserDataHashMap;
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 66
    nop

    .line 67
    const-string v1, "category"

    invoke-interface {p1, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/Brick$BrickData;

    move-result-object v1

    .line 69
    .local v1, "brickData":Lorg/catrobat/catroid/content/bricks/Brick$BrickData;
    invoke-static {v1}, Lorg/catrobat/catroid/content/bricks/Brick$BrickData;->isUserList(Lorg/catrobat/catroid/content/bricks/Brick$BrickData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-class v2, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-interface {p2, v0, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserData;

    .local v2, "userData":Lorg/catrobat/catroid/formulaeditor/UserData;
    goto :goto_1

    .line 73
    .end local v2    # "userData":Lorg/catrobat/catroid/formulaeditor/UserData;
    :cond_0
    const-class v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-interface {p2, v0, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 76
    .restart local v2    # "userData":Lorg/catrobat/catroid/formulaeditor/UserData;
    :goto_1
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 78
    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/UserDataHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v1    # "brickData":Lorg/catrobat/catroid/content/bricks/Brick$BrickData;
    .end local v2    # "userData":Lorg/catrobat/catroid/formulaeditor/UserData;
    goto :goto_0

    .line 80
    :cond_1
    return-object v0
.end method
