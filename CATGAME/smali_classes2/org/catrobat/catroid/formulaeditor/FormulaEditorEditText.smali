.class public Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;
.super Landroid/widget/EditText;
.source "FormulaEditorEditText.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final COLOR_ERROR:Landroid/text/style/BackgroundColorSpan;

.field private static final COLOR_HIGHLIGHT:Landroid/text/style/BackgroundColorSpan;


# instance fields
.field private absoluteCursorPosition:I

.field private context:Landroid/content/Context;

.field private cursorAnimation:Ljava/lang/Runnable;

.field private doNotMoveCursorOnTab:Z

.field formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

.field final gestureDetector:Landroid/view/GestureDetector;

.field private history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

.field private internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

.field private locationOnScreen:[I

.field private paint:Landroid/graphics/Paint;

.field private popupMenu:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

.field private popupMenuBottom:I

.field private popupMenuShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const/high16 v1, -0x100000

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->COLOR_ERROR:Landroid/text/style/BackgroundColorSpan;

    .line 51
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0xcc4a1b

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->COLOR_HIGHLIGHT:Landroid/text/style/BackgroundColorSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    .line 53
    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->paint:Landroid/graphics/Paint;

    .line 60
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->locationOnScreen:[I

    .line 62
    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->popupMenuShown:Z

    .line 64
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    new-instance v3, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->gestureDetector:Landroid/view/GestureDetector;

    .line 150
    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->doNotMoveCursorOnTab:Z

    .line 262
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$2;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$2;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->cursorAnimation:Ljava/lang/Runnable;

    .line 154
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 158
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    .line 53
    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->paint:Landroid/graphics/Paint;

    .line 60
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->locationOnScreen:[I

    .line 62
    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->popupMenuShown:Z

    .line 64
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    new-instance v3, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$1;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->gestureDetector:Landroid/view/GestureDetector;

    .line 150
    iput-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->doNotMoveCursorOnTab:Z

    .line 262
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$2;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText$2;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->cursorAnimation:Ljava/lang/Runnable;

    .line 159
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    .line 48
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    return v0
.end method

.method static synthetic access$002(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;I)I
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;
    .param p1, "x1"    # I

    .line 48
    iput p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    return p1
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/formulaeditor/InternFormula;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    return-object v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    return-object v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)[I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->locationOnScreen:[I

    return-object v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->popupMenu:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    return-object v0
.end method

.method static synthetic access$500(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->cursorAnimation:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initPopupMenu()V
    .locals 2

    .line 195
    new-instance v0, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;-><init>(Landroid/content/Context;Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->popupMenu:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    .line 196
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/-$$Lambda$FormulaEditorEditText$wy6_z50KgFvSkVlb7x_Qkoqqbio;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/formulaeditor/-$$Lambda$FormulaEditorEditText$wy6_z50KgFvSkVlb7x_Qkoqqbio;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->setOnUpdateListener(Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu$OnUpdateListener;)V

    .line 200
    return-void
.end method

.method private pushToHistoryAndRefreshPreviewString()V
    .locals 4

    .line 177
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/UndoState;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getInternFormulaState()Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 178
    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getCurrentBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/UndoState;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaState;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 177
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->push(Lorg/catrobat/catroid/formulaeditor/UndoState;)V

    .line 179
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->updateTextAndCursorFromInternFormula()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "resultingText":Ljava/lang/String;
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setSelection(I)V

    .line 181
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->refreshFormulaPreviewString(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private updateTextAndCursorFromInternFormula()Ljava/lang/String;
    .locals 3

    .line 394
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getExternFormulaString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "newExternFormulaString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getExternCursorPosition()I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    .line 397
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 398
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->length()I

    move-result v1

    iput v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    .line 401
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->highlightSelection()V

    .line 403
    return-object v0
.end method


# virtual methods
.method public addTokens(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->addTokens(Landroid/content/Context;Ljava/util/List;)V

    .line 191
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->pushToHistoryAndRefreshPreviewString()V

    .line 192
    return-void
.end method

.method public deleteSelection()V
    .locals 2

    .line 185
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->deleteSelection(Landroid/content/Context;)V

    .line 186
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->pushToHistoryAndRefreshPreviewString()V

    .line 187
    return-void
.end method

.method public dismissPopupMenu()V
    .locals 3

    .line 446
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->popupMenu:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->dismiss()V

    .line 447
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setCursorAndSelection(IZ)V

    .line 448
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->highlightSelection()V

    .line 449
    return-void
.end method

.method public endEdit()V
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->clear()V

    .line 353
    return-void
.end method

.method public enterNewFormula(Lorg/catrobat/catroid/formulaeditor/UndoState;)V
    .locals 2
    .param p1, "state"    # Lorg/catrobat/catroid/formulaeditor/UndoState;

    .line 215
    iget-object v0, p1, Lorg/catrobat/catroid/formulaeditor/UndoState;->internFormulaState:Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->createInternFormulaFromState()Lorg/catrobat/catroid/formulaeditor/InternFormula;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    .line 216
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V

    .line 218
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->updateTextAndCursorFromInternFormula()Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->selectWholeFormula()V

    .line 221
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->highlightSelection()V

    .line 223
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;-><init>(Lorg/catrobat/catroid/formulaeditor/UndoState;)V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->updateCurrentState(Lorg/catrobat/catroid/formulaeditor/UndoState;)V

    .line 228
    :goto_0
    return-void
.end method

.method public formulaSaved()V
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->changesSaved()V

    .line 349
    return-void
.end method

.method public getFormulaParser()Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;
    .locals 1

    .line 417
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getInternFormulaParser()Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;

    move-result-object v0

    return-object v0
.end method

.method public getHistory()Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    return-object v0
.end method

.method public getIndexOfCorrespondingRegularExpression()I
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getIndexOfCorrespondingRegularExpression()I

    move-result v0

    return v0
.end method

.method public getSelectedTextFromInternFormula()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getSelectedTokenForCopy()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStringFromInternFormula()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getExternFormulaString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleKeyEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->handleKeyInput(ILandroid/content/Context;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->pushToHistoryAndRefreshPreviewString()V

    .line 324
    return-void
.end method

.method public hasChanges()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->hasUnsavedChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public highlightSelection()V
    .locals 9

    .line 290
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 291
    .local v0, "highlightSpan":Landroid/text/Spannable;
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->COLOR_HIGHLIGHT:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 292
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->COLOR_ERROR:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getExternSelectionStartIndex()I

    move-result v1

    .line 295
    .local v1, "selectionStartIndex":I
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getExternSelectionEndIndex()I

    move-result v2

    .line 296
    .local v2, "selectionEndIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getExternSelectionType()Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    move-result-object v3

    .line 298
    .local v3, "selectionType":Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    if-eq v2, v4, :cond_3

    if-eq v2, v1, :cond_3

    .line 299
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-le v2, v4, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->USER_SELECTION:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    const/16 v5, 0x21

    if-ne v3, v4, :cond_1

    .line 304
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->COLOR_HIGHLIGHT:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v4, v1, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 307
    :cond_1
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->COLOR_ERROR:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v4, v1, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 310
    :goto_0
    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getSelection()Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->popupMenu:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    if-eqz v4, :cond_2

    .line 311
    iget-object v5, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->locationOnScreen:[I

    const/4 v6, 0x0

    aget v6, v5, v6

    const/4 v7, 0x1

    aget v5, v5, v7

    iget v8, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->popupMenuBottom:I

    add-int/2addr v5, v8

    invoke-virtual {v4, v6, v5, v7}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->show(IIZ)V

    .line 313
    :cond_2
    return-void

    .line 300
    :cond_3
    :goto_1
    return-void
.end method

.method public init(Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;)V
    .locals 1
    .param p1, "formulaEditorFragment"    # Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 163
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 164
    invoke-virtual {p0, p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setLongClickable(Z)V

    .line 166
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setSelectAllOnFocus(Z)V

    .line 167
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setCursorVisible(Z)V

    .line 168
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->cursorAnimation:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 169
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->initPopupMenu()V

    .line 170
    return-void
.end method

.method public isDoNotMoveCursorOnTab()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->doNotMoveCursorOnTab:Z

    return v0
.end method

.method public isPopupMenuVisible()Z
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->popupMenu:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isSelectedTokenFirstParamOfRegularExpression()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->isSelectedTokenFirstParamOfRegularExpression()Z

    move-result v0

    return v0
.end method

.method public isThereSomethingToDelete()Z
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->isThereSomethingToDelete()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$initPopupMenu$0$FormulaEditorEditText()V
    .locals 1

    .line 197
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->pushToHistoryAndRefreshPreviewString()V

    .line 198
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateButtonsOnKeyboardAndInvalidateOptionsMenu()V

    .line 199
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 273
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 274
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    .line 275
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 277
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 278
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_1

    .line 279
    iget v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 280
    .local v1, "line":I
    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 281
    .local v2, "xCoordinate":F
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 282
    .local v3, "startYCoordinate":F
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getTextSize()F

    move-result v5

    add-float/2addr v4, v5

    .line 283
    .local v4, "endYCoordinate":F
    if-nez v1, :cond_0

    const/high16 v5, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    add-float v10, v4, v5

    .line 285
    .end local v4    # "endYCoordinate":F
    .local v10, "endYCoordinate":F
    iget-object v9, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v2

    move v6, v3

    move v7, v2

    move v8, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 287
    .end local v1    # "line":I
    .end local v2    # "xCoordinate":F
    .end local v3    # "startYCoordinate":F
    .end local v10    # "endYCoordinate":F
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 204
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 205
    iget-boolean v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->popupMenuShown:Z

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->locationOnScreen:[I

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->getLocationOnScreen([I)V

    .line 207
    iput p5, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->popupMenuBottom:I

    .line 208
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->popupMenu:Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->locationOnScreen:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    add-int/2addr v1, p5

    iget-object v5, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    .line 209
    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getSelection()Lorg/catrobat/catroid/formulaeditor/InternFormulaTokenSelection;

    move-result-object v5

    if-eqz v5, :cond_0

    move v2, v4

    .line 208
    :cond_0
    invoke-virtual {v0, v3, v1, v2}, Lorg/catrobat/catroid/ui/FormulaEditorPopupMenu;->show(IIZ)V

    .line 210
    iput-boolean v4, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->popupMenuShown:Z

    .line 212
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motion"    # Landroid/view/MotionEvent;

    .line 408
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public overrideSelectedText(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->overrideSelectedText(Ljava/lang/String;Landroid/content/Context;)V

    .line 340
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->pushToHistoryAndRefreshPreviewString()V

    .line 341
    return-void
.end method

.method public quickSelect()V
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->selectWholeFormula()V

    .line 357
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->highlightSelection()V

    .line 358
    return-void
.end method

.method public redo()Z
    .locals 3

    .line 378
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->redoIsPossible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x0

    return v0

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->forward()Lorg/catrobat/catroid/formulaeditor/UndoState;

    move-result-object v0

    .line 382
    .local v0, "nextStep":Lorg/catrobat/catroid/formulaeditor/UndoState;
    if-eqz v0, :cond_1

    .line 384
    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/UndoState;->internFormulaState:Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->createInternFormulaFromState()Lorg/catrobat/catroid/formulaeditor/InternFormula;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    .line 385
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V

    .line 386
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateInternCursorPosition()V

    .line 387
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->updateTextAndCursorFromInternFormula()Ljava/lang/String;

    .line 389
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getExternFormulaString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->refreshFormulaPreviewString(Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x1

    return v1
.end method

.method public setParseErrorCursorAndSelection()V
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->selectParseErrorTokenAndSetCursor()V

    .line 317
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->highlightSelection()V

    .line 318
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setSelection(I)V

    .line 319
    return-void
.end method

.method public setSelectionToFirstParamOfRegularExpressionAtInternalIndex(I)V
    .locals 1
    .param p1, "indexOfRegularExpression"    # I

    .line 437
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->setSelectionToFirstParamOfRegularExpressionAtInternalIndex(I)V

    .line 438
    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->highlightSelection()V

    .line 439
    return-void
.end method

.method public undo()Z
    .locals 3

    .line 361
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->undoIsPossible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    return v0

    .line 364
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->backward()Lorg/catrobat/catroid/formulaeditor/UndoState;

    move-result-object v0

    .line 365
    .local v0, "previousState":Lorg/catrobat/catroid/formulaeditor/UndoState;
    if-eqz v0, :cond_1

    .line 367
    iget-object v1, v0, Lorg/catrobat/catroid/formulaeditor/UndoState;->internFormulaState:Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->createInternFormulaFromState()Lorg/catrobat/catroid/formulaeditor/InternFormula;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    .line 368
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->generateExternFormulaStringAndInternExternMapping(Landroid/content/Context;)V

    .line 369
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateInternCursorPosition()V

    .line 370
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->updateTextAndCursorFromInternFormula()Ljava/lang/String;

    .line 373
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getExternFormulaString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->refreshFormulaPreviewString(Ljava/lang/String;)V

    .line 374
    const/4 v1, 0x1

    return v1
.end method

.method public updateListReferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    if-nez v0, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateListReferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 251
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/UndoState;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getInternFormulaState()Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 252
    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getCurrentBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/UndoState;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaState;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 251
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->push(Lorg/catrobat/catroid/formulaeditor/UndoState;)V

    .line 253
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->initialStates:Ljava/util/Map;

    .line 254
    .local v0, "initialState":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/InternFormulaState;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 255
    .local v2, "state":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/InternFormulaState;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {v3, v4, p1, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->updateUserDataTokens(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v2    # "state":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/InternFormulaState;>;"
    goto :goto_0

    .line 257
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->updateTextAndCursorFromInternFormula()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "resultingText":Ljava/lang/String;
    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setSelection(I)V

    .line 259
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->refreshFormulaPreviewString(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public updateVariableReferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->updateVariableReferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 235
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/UndoState;

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->internFormula:Lorg/catrobat/catroid/formulaeditor/InternFormula;

    invoke-virtual {v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula;->getInternFormulaState()Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    .line 236
    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getCurrentBrickField()Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/UndoState;-><init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaState;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 235
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->push(Lorg/catrobat/catroid/formulaeditor/UndoState;)V

    .line 237
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->history:Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;

    iget-object v0, v0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorHistory;->initialStates:Ljava/util/Map;

    .line 238
    .local v0, "initialState":Ljava/util/Map;, "Ljava/util/Map<Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/InternFormulaState;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 239
    .local v2, "state":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/InternFormulaState;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {v3, v4, p1, p2}, Lorg/catrobat/catroid/formulaeditor/InternFormulaState;->updateUserDataTokens(Lorg/catrobat/catroid/formulaeditor/InternTokenType;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v2    # "state":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/InternFormulaState;>;"
    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->updateTextAndCursorFromInternFormula()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "resultingText":Ljava/lang/String;
    iget v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->absoluteCursorPosition:I

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->setSelection(I)V

    .line 243
    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/FormulaEditorEditText;->formulaEditorFragment:Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->refreshFormulaPreviewString(Ljava/lang/String;)V

    .line 244
    return-void
.end method
