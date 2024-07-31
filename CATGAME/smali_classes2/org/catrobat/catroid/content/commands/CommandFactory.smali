.class public final Lorg/catrobat/catroid/content/commands/CommandFactory;
.super Ljava/lang/Object;
.source "CommandFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static makeChangeFormulaCommand(Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;Lorg/catrobat/catroid/formulaeditor/Formula;)Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;
    .locals 2
    .param p0, "formulaBrick"    # Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    .param p1, "brickField"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .param p2, "newFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 37
    new-instance v0, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;-><init>()V

    .line 38
    .local v0, "newFormulaMap":Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;
    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p0, v0}, Lorg/catrobat/catroid/content/commands/CommandFactory;->makeChangeFormulaCommand(Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;)Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;

    move-result-object v1

    return-object v1
.end method

.method public static makeChangeFormulaCommand(Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;)Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;
    .locals 1
    .param p0, "formulaBrick"    # Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    .param p1, "newFormulaMap"    # Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    .line 44
    new-instance v0, Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/content/commands/ChangeFormulaCommand;-><init>(Lorg/catrobat/catroid/content/bricks/FormulaBrick;Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;)V

    return-object v0
.end method
