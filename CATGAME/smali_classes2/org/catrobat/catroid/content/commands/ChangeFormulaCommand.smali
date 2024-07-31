.class public Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;
.super Ljava/lang/Object;
.source "ChangeFormulaCommand.java"

# interfaces
.implements Lorg/catrobat/catroid/content/commands/Command;


# instance fields
.field private formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

.field private newFormulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

.field private previousFormulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;)V
    .locals 5
    .param p1, "formulaBrick"    # Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    .param p2, "newFormulaMap"    # Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    .line 38
    iput-object p2, p0, Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;->newFormulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    .line 40
    new-instance v0, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;->previousFormulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    .line 41
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 42
    .local v1, "key":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    invoke-virtual {p1, v1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    .line 43
    .local v2, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    iget-object v3, p0, Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;->previousFormulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->clone()Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v1    # "key":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .end local v2    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;->newFormulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 51
    .local v1, "key":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    iget-object v2, p0, Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    iget-object v3, p0, Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;->newFormulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v2, v1, v3}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 52
    .end local v1    # "key":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public undo()V
    .locals 4

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;->previousFormulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    .line 60
    .local v1, "key":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    iget-object v2, p0, Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;->formulaBrick:Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    iget-object v3, p0, Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;->previousFormulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-virtual {v2, v1, v3}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 61
    .end local v1    # "key":Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method
