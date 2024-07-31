.class public Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "SetNfcTagBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/FormulaBrick;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private nfcTagNdefType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;->nfcTagNdefType:I

    .line 49
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NFC_NDEF_MESSAGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a021c

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "messageString"    # Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "messageFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 57
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;-><init>()V

    .line 58
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NFC_NDEF_MESSAGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 59
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 113
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->NFC_NDEF_MESSAGE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 115
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    iget v2, p0, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;->nfcTagNdefType:I

    .line 114
    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/catrobat/catroid/content/ActionFactory;->createSetNfcTagAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;I)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 113
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 116
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 107
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 108
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 109
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;

    const v2, 0x7f12078e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;-><init>(Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;

    const v2, 0x7f12078f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;-><init>(Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;

    const v2, 0x7f120790

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;-><init>(Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;

    const v2, 0x7f120792

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, p0, v2, v3}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;-><init>(Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;

    const v2, 0x7f120793

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, p0, v2, v3}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;-><init>(Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;

    const v2, 0x7f120791

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, p0, v2, v3}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;-><init>(Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;

    const v2, 0x7f12078d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, p0, v2, v3}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;-><init>(Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;

    const v2, 0x7f12078c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v1, p0, v2, v3}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;-><init>(Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    const v2, 0x7f0a021f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;->view:Landroid/view/View;

    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    .line 82
    .local v1, "spinner":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;, "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;>;"
    invoke-virtual {v1, p0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 83
    iget v2, p0, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;->nfcTagNdefType:I

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(I)V

    .line 85
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 63
    const v0, 0x7f0d00d8

    return v0
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 94
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;)V
    .locals 1
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;

    .line 102
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick$NfcTypeOption;->getNfcTagNdefType()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/content/bricks/SetNfcTagBrick;->nfcTagNdefType:I

    .line 103
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 90
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 98
    return-void
.end method
