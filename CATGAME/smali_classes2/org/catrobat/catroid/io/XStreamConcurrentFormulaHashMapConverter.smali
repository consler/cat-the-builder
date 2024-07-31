.class public Lorg/catrobat/catroid/io/XStreamConcurrentFormulaHashMapConverter;
.super Ljava/lang/Object;
.source "XStreamConcurrentFormulaHashMapConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final FORMULA:Ljava/lang/String; = "formula"

.field private static final USER_DEFINED_INPUT:Ljava/lang/String; = "input"


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

    .line 45
    const-class v0, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "hierarchicalStreamWriter"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "marshallingContext"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 51
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    .line 52
    .local v0, "concurrentFormulaHashMap":Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 53
    .local v2, "formulaField":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    const-string v3, "formula"

    invoke-interface {p2, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 56
    instance-of v3, v2, Lorg/catrobat/catroid/userbrick/InputFormulaField;

    if-eqz v3, :cond_0

    .line 57
    const-string v3, "input"

    .local v3, "attributeString":Ljava/lang/String;
    goto :goto_1

    .line 59
    .end local v3    # "attributeString":Ljava/lang/String;
    :cond_0
    const-string v3, "category"

    .line 62
    .restart local v3    # "attributeString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->getRoot()Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 64
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 65
    .end local v2    # "formulaField":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .end local v3    # "attributeString":Ljava/lang/String;
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "hierarchicalStreamReader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "unmarshallingContext"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 70
    new-instance v0, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;-><init>()V

    .line 71
    .local v0, "concurrentFormulaHashMap":Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 75
    const-string v1, "category"

    invoke-interface {p1, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {p1, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v1

    .local v1, "formulaField":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    goto :goto_1

    .line 78
    .end local v1    # "formulaField":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/userbrick/InputFormulaField;

    const-string v2, "input"

    invoke-interface {p1, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/userbrick/InputFormulaField;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v1    # "formulaField":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    :goto_1
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "formula"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const-class v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-interface {p2, v0, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 85
    .local v2, "rootFormula":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v3, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    move-object v2, v3

    .line 86
    .local v2, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    goto :goto_2

    .line 87
    .end local v2    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    :cond_1
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    .line 89
    .restart local v2    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    :goto_2
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v1    # "formulaField":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .end local v2    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    goto :goto_0

    .line 93
    :cond_2
    return-object v0
.end method
