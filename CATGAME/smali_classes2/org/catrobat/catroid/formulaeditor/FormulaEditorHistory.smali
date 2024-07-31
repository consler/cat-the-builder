.class public Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;
.super Ljava/lang/Object;
.source "FormulaEditorHistory.java"


# static fields
.field private static final MAXIMUM_HISTORY_LENGTH:I = 0x20


# instance fields
.field private current:Lorg/catrobat/catroid/formulaeditor/UndoState;

.field private hasUnsavedChanges:Z

.field initialStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;",
            "Lorg/catrobat/catroid/formulaeditor/InternFormulaState;",
            ">;"
        }
    .end annotation
.end field

.field private redoStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/catrobat/catroid/formulaeditor/UndoState;",
            ">;"
        }
    .end annotation
.end field

.field private undoStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/catrobat/catroid/formulaeditor/UndoState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/UndoState;)V
    .locals 2
    .param p1, "state"    # Lorg/catrobat/catroid/formulaeditor/UndoState;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->undoStack:Ljava/util/Stack;

    .line 35
    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->redoStack:Ljava/util/Stack;

    .line 36
    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->hasUnsavedChanges:Z

    .line 38
    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->initialStates:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    .line 42
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->undoStack:Ljava/util/Stack;

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->redoStack:Ljava/util/Stack;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->initialStates:Ljava/util/Map;

    .line 45
    return-void
.end method


# virtual methods
.method public backward()Lorg/catrobat/catroid/formulaeditor/UndoState;
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->redoStack:Ljava/util/Stack;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->hasUnsavedChanges:Z

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->undoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->undoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UndoState;

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    return-object v0
.end method

.method public changesSaved()V
    .locals 1

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->hasUnsavedChanges:Z

    .line 121
    return-void
.end method

.method public clear()V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->undoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 94
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->redoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->hasUnsavedChanges:Z

    .line 97
    return-void
.end method

.method public forward()Lorg/catrobat/catroid/formulaeditor/UndoState;
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->undoStack:Ljava/util/Stack;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->hasUnsavedChanges:Z

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->redoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->redoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UndoState;

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    return-object v0
.end method

.method public getInitialStates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;",
            "Lorg/catrobat/catroid/formulaeditor/InternFormulaState;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->initialStates:Ljava/util/Map;

    return-object v0
.end method

.method public hasUnsavedChanges()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->hasUnsavedChanges:Z

    return v0
.end method

.method public push(Lorg/catrobat/catroid/formulaeditor/UndoState;)V
    .locals 3
    .param p1, "state"    # Lorg/catrobat/catroid/formulaeditor/UndoState;

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/UndoState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    if-eqz v0, :cond_1

    .line 53
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->undoStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->initialStates:Ljava/util/Map;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    iget-object v1, v1, Lorg/catrobat/catroid/formulaeditor/UndoState;->formulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->initialStates:Ljava/util/Map;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    iget-object v1, v1, Lorg/catrobat/catroid/formulaeditor/UndoState;->formulaField:Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    iget-object v2, v2, Lorg/catrobat/catroid/formulaeditor/UndoState;->internFormulaState:Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_1
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->redoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->hasUnsavedChanges:Z

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->undoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    .line 62
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->undoStack:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->removeElementAt(I)V

    .line 64
    :cond_2
    return-void
.end method

.method public redoIsPossible()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->redoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public undoIsPossible()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->undoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updateCurrentCursor(I)V
    .locals 1
    .param p1, "cursorPosition"    # I

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/UndoState;->internFormulaState:Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->setExternCursorPosition(I)V

    .line 101
    return-void
.end method

.method public updateCurrentSelection(Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;)V
    .locals 1
    .param p1, "internFormulaTokenSelection"    # Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    .line 85
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/UndoState;->internFormulaState:Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->setSelection(Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;)V

    .line 86
    return-void
.end method

.method public updateCurrentState(Lorg/catrobat/catroid/formulaeditor/UndoState;)V
    .locals 0
    .param p1, "state"    # Lorg/catrobat/catroid/formulaeditor/UndoState;

    .line 89
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->current:Lorg/catrobat/catroid/formulaeditor/UndoState;

    .line 90
    return-void
.end method
