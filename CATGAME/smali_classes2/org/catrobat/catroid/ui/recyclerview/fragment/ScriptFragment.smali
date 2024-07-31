.class public Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
.super Landroidx/fragment/app/ListFragment;
.source "ScriptFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$OnItemClickListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$SelectionListener;
.implements Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;
.implements Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;
.implements Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment$ActionModeType;
    }
.end annotation


# static fields
.field private static final BACKPACK:I = 0x1

.field private static final BRICK_TAG:Ljava/lang/String; = "brickToFocus"

.field private static final CATBLOCKS:I = 0x5

.field private static final COMMENT:I = 0x4

.field private static final COPY:I = 0x2

.field private static final DELETE:I = 0x3

.field private static final NONE:I = 0x0

.field private static final SCRIPT_TAG:Ljava/lang/String; = "scriptToFocus"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private actionMode:Landroid/view/ActionMode;

.field private actionModeType:I

.field private activity:Lorg/catrobat/catroid/ui/SpriteActivity;

.field private adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

.field private brickController:Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;

.field private brickToFocus:Lorg/catrobat/catroid/content/bricks/Brick;

.field private currentSceneName:Ljava/lang/String;

.field private currentSpriteName:Ljava/lang/String;

.field private listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

.field private savedListViewState:Landroid/os/Parcelable;

.field private transient savedLocalLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation
.end field

.field private transient savedLocalUserVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation
.end field

.field private savedMultiplayerVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation
.end field

.field private savedUserLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation
.end field

.field private savedUserVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation
.end field

.field private scriptController:Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

.field private scriptFinder:Lorg/catrobat/catroid/ui/ScriptFinder;

.field private scriptToFocus:Lorg/catrobat/catroid/content/Script;

.field private undoBrickPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionModeType:I

    .line 142
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptController:Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

    .line 143
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->brickController:Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;)Lorg/catrobat/catroid/ui/dragndrop/BrickListView;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    return-object v0
.end method

.method private copy(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    .line 889
    .local p1, "selectedBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 890
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->brickController:Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;

    invoke-virtual {v1, p1, v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;->copy(Ljava/util/List;Lorg/catrobat/catroid/content/Sprite;)V

    .line 891
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->updateItems(Lorg/catrobat/catroid/content/Sprite;)V

    .line 892
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->finishActionMode()V

    .line 893
    return-void
.end method

.method private delete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    .line 904
    .local p1, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 905
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->brickController:Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;

    invoke-virtual {v1, p1, v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/BrickController;->delete(Ljava/util/List;Lorg/catrobat/catroid/content/Sprite;)V

    .line 906
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->updateItems(Lorg/catrobat/catroid/content/Sprite;)V

    .line 907
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->finishActionMode()V

    .line 908
    return-void
.end method

.method public static getContextMenuItems(Lorg/catrobat/catroid/content/bricks/Brick;)Ljava/util/List;
    .locals 5
    .param p0, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v1, p0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    const v2, 0x7f120054

    .line 668
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 667
    const v3, 0x7f120097

    .line 671
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 667
    if-eqz v1, :cond_0

    .line 668
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    const v1, 0x7f120094

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    const v1, 0x7f12009a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    return-object v0

    .line 675
    :cond_0
    instance-of v1, p0, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    const v4, 0x7f120096

    if-eqz v1, :cond_4

    .line 676
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    instance-of v1, p0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;

    if-nez v1, :cond_2

    .line 679
    invoke-interface {p0}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f12008e

    goto :goto_0

    :cond_1
    const v1, 0x7f120090

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_2
    const v1, 0x7f120092

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    const v1, 0x7f120095

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    instance-of v1, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->hasEditableFormulaField()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 689
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_3
    const v1, 0x7f12009b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 695
    :cond_4
    const v1, 0x7f120091

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    invoke-interface {p0}, Lorg/catrobat/catroid/content/bricks/Brick;->consistsOfMultipleParts()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 697
    const v1, 0x7f120098

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_5
    const v1, 0x7f120093

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-interface {p0}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f12008d

    goto :goto_1

    :cond_6
    const v1, 0x7f12008f

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    instance-of v1, p0, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;

    if-eqz v1, :cond_7

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->areAllBrickFieldsNumbers()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 705
    const v1, 0x7f1200f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_7
    instance-of v1, p0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    if-eqz v1, :cond_8

    move-object v1, p0

    check-cast v1, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->hasEditableFormulaField()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 708
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_8
    invoke-interface {p0}, Lorg/catrobat/catroid/content/bricks/Brick;->getAllParts()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 711
    const v1, 0x7f120099

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_9
    invoke-interface {p0}, Lorg/catrobat/catroid/content/bricks/Brick;->hasHelpPage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 715
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_a
    :goto_2
    return-object v0
.end method

.method private handleContextMenuItemClick(ILorg/catrobat/catroid/content/bricks/Brick;I)V
    .locals 5
    .param p1, "itemId"    # I
    .param p2, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;
    .param p3, "position"    # I

    .line 722
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->showUndo(Z)V

    .line 723
    const v1, 0x7f120054

    if-eq p1, v1, :cond_4

    const v1, 0x7f1200f0

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 772
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->onItemLongClick(Lorg/catrobat/catroid/content/bricks/Brick;I)Z

    .line 773
    goto/16 :goto_3

    .line 778
    :pswitch_1
    invoke-interface {p2}, Lorg/catrobat/catroid/content/bricks/Brick;->getAllParts()Ljava/util/List;

    move-result-object v0

    .line 779
    .local v0, "bricksOfControlStructure":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .local v1, "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 781
    .local v3, "brickInControlStructure":Lorg/catrobat/catroid/content/bricks/Brick;
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->getPosition(Lorg/catrobat/catroid/content/bricks/Brick;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    .end local v3    # "brickInControlStructure":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 783
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->highlightControlStructureBricks(Ljava/util/List;)V

    goto/16 :goto_3

    .line 775
    .end local v0    # "bricksOfControlStructure":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    .end local v1    # "positions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_2
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->openWebViewWithHelpPage(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 776
    goto/16 :goto_3

    .line 767
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->onClick(Landroid/view/View;)V

    .line 768
    goto/16 :goto_3

    .line 745
    :pswitch_4
    invoke-interface {p2}, Lorg/catrobat/catroid/content/bricks/Brick;->getAllParts()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->showDeleteAlert(Ljava/util/List;)V

    .line 746
    goto/16 :goto_3

    .line 742
    :pswitch_5
    invoke-interface {p2}, Lorg/catrobat/catroid/content/bricks/Brick;->getAllParts()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->showDeleteAlert(Ljava/util/List;)V

    .line 743
    goto/16 :goto_3

    .line 732
    :pswitch_6
    :try_start_0
    invoke-interface {p2}, Lorg/catrobat/catroid/content/bricks/Brick;->getAllParts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    .line 733
    .local v0, "clonedBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v1, p3, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->addItem(ILorg/catrobat/catroid/content/bricks/Brick;)V

    .line 734
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->startMoving(Lorg/catrobat/catroid/content/bricks/Brick;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v0    # "clonedBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_3

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1202d8

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 737
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    goto :goto_3

    .line 756
    :pswitch_7
    invoke-interface {p2}, Lorg/catrobat/catroid/content/bricks/Brick;->getAllParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 757
    .local v1, "brickPart":Lorg/catrobat/catroid/content/bricks/Brick;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 758
    .end local v1    # "brickPart":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_1

    .line 759
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->notifyDataSetChanged()V

    .line 760
    goto :goto_3

    .line 749
    :pswitch_8
    invoke-interface {p2}, Lorg/catrobat/catroid/content/bricks/Brick;->getAllParts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 750
    .local v2, "brickPart":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2, v0}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 751
    .end local v2    # "brickPart":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_2

    .line 752
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->notifyDataSetChanged()V

    .line 753
    goto :goto_3

    .line 762
    :cond_3
    move-object v0, p2

    check-cast v0, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;

    .line 763
    .local v0, "visualPlacementBrick":Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getXBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v1

    .line 764
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->getYBrickField()Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v2

    .line 763
    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->placeVisually(Lorg/catrobat/catroid/content/bricks/Brick$BrickField;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V

    .line 765
    goto :goto_3

    .line 725
    .end local v0    # "visualPlacementBrick":Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v0, "bricksToPack":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {p2, v0}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 727
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->showNewScriptGroupAlert(Ljava/util/List;)V

    .line 728
    nop

    .line 786
    .end local v0    # "bricksToPack":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f12008d
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleContextualAction()V
    .locals 2

    .line 245
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 249
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionModeType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->toggleComments(Ljava/util/List;)V

    .line 261
    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->showDeleteAlert(Ljava/util/List;)V

    .line 258
    goto :goto_0

    .line 254
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->copy(Ljava/util/List;)V

    .line 255
    goto :goto_0

    .line 251
    :cond_4
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->showNewScriptGroupAlert(Ljava/util/List;)V

    .line 252
    nop

    .line 267
    :goto_0
    return-void

    .line 263
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionModeType not set correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideKeyboard()V
    .locals 3

    .line 342
    nop

    .line 343
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 344
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 345
    return-void
.end method

.method private highlightBrickAtIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 337
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getBrickPositionsToHighlight()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 338
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getBrickPositionsToHighlight()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method private loadVariables()V
    .locals 5

    .line 992
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    .line 993
    .local v0, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    .line 994
    .local v1, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    .line 996
    .local v2, "project":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedUserVariables:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/content/Project;->restoreUserDataValues(Ljava/util/List;Ljava/util/List;)V

    .line 997
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariables()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedMultiplayerVariables:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/content/Project;->restoreUserDataValues(Ljava/util/List;Ljava/util/List;)V

    .line 998
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedUserLists:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/content/Project;->restoreUserDataValues(Ljava/util/List;Ljava/util/List;)V

    .line 999
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedLocalUserVariables:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lorg/catrobat/catroid/content/Sprite;->restoreUserDataValues(Ljava/util/List;Ljava/util/List;)V

    .line 1000
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedLocalLists:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lorg/catrobat/catroid/content/Sprite;->restoreUserDataValues(Ljava/util/List;Ljava/util/List;)V

    .line 1001
    return-void
.end method

.method public static newInstance(Lorg/catrobat/catroid/content/Script;)Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    .locals 3
    .param p0, "scriptToFocus"    # Lorg/catrobat/catroid/content/Script;

    .line 160
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;-><init>()V

    .line 161
    .local v0, "scriptFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "scriptToFocus"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 163
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->setArguments(Landroid/os/Bundle;)V

    .line 164
    return-object v0
.end method

.method public static newInstance(Lorg/catrobat/catroid/content/bricks/Brick;)Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    .locals 3
    .param p0, "brickToFocus"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 152
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;-><init>()V

    .line 153
    .local v0, "scriptFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "brickToFocus"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 155
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->setArguments(Landroid/os/Bundle;)V

    .line 156
    return-object v0
.end method

.method private openWebViewWithHelpPage(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 7
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 789
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 790
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    .line 791
    .local v1, "backgroundSprite":Lorg/catrobat/catroid/content/Sprite;
    new-instance v2, Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;-><init>()V

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lorg/catrobat/catroid/ui/fragment/CategoryBricksFactory;->getBrickCategory(Lorg/catrobat/catroid/content/bricks/Brick;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, "category":Ljava/lang/String;
    invoke-interface {p1, v2}, Lorg/catrobat/catroid/content/bricks/Brick;->getHelpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 794
    .local v3, "brickHelpUrl":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    .line 795
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 796
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->startActivity(Landroid/content/Intent;)V

    .line 797
    return-void
.end method

.method private refreshFragmentAfterUndo()V
    .locals 4

    .line 1004
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1005
    .local v0, "scriptFragment":Landroidx/fragment/app/Fragment;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 1006
    .local v1, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1007
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1008
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 1009
    iget v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->undoBrickPosition:I

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getFirstVisiblePosition()I

    move-result v3

    if-lt v2, v3, :cond_0

    iget v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->undoBrickPosition:I

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getLastVisiblePosition()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 1010
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$tIYpaH9cOW1reT2GhKHlmmpA9Gc;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$tIYpaH9cOW1reT2GhKHlmmpA9Gc;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;)V

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->post(Ljava/lang/Runnable;)Z

    .line 1012
    :cond_1
    return-void
.end method

.method private resetActionModeParameters()V
    .locals 2

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionModeType:I

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionMode:Landroid/view/ActionMode;

    .line 272
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->setCheckBoxMode(I)V

    .line 273
    return-void
.end method

.method private saveVariables()V
    .locals 4

    .line 968
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    .line 969
    .local v0, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    .line 970
    .local v1, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    .line 972
    .local v2, "project":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getUserVariablesCopy()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedUserVariables:Ljava/util/List;

    .line 973
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariablesCopy()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedMultiplayerVariables:Ljava/util/List;

    .line 974
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getUserListsCopy()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedUserLists:Ljava/util/List;

    .line 975
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getUserVariablesCopy()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedLocalUserVariables:Ljava/util/List;

    .line 976
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getUserListsCopy()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedLocalLists:Ljava/util/List;

    .line 977
    return-void
.end method

.method private scrollToFocusItem()V
    .locals 6

    .line 1022
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptToFocus:Lorg/catrobat/catroid/content/Script;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->brickToFocus:Lorg/catrobat/catroid/content/bricks/Brick;

    if-nez v0, :cond_0

    .line 1023
    return-void

    .line 1026
    :cond_0
    const/4 v0, -0x1

    .line 1027
    .local v0, "scrollToIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1028
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 1029
    .local v2, "item":Ljava/lang/Object;
    instance-of v3, v2, Lorg/catrobat/catroid/content/bricks/Brick;

    if-nez v3, :cond_1

    .line 1030
    goto :goto_1

    .line 1032
    :cond_1
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 1033
    .local v3, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->brickToFocus:Lorg/catrobat/catroid/content/bricks/Brick;

    if-eqz v4, :cond_2

    if-eq v3, v4, :cond_3

    :cond_2
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptToFocus:Lorg/catrobat/catroid/content/Script;

    if-eqz v4, :cond_4

    .line 1034
    invoke-interface {v3}, Lorg/catrobat/catroid/content/bricks/Brick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptToFocus:Lorg/catrobat/catroid/content/Script;

    if-ne v4, v5, :cond_4

    .line 1035
    :cond_3
    move v0, v1

    .line 1036
    goto :goto_2

    .line 1027
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1039
    .end local v1    # "i":I
    :cond_5
    :goto_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 1040
    return-void

    .line 1042
    :cond_6
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1043
    move v1, v0

    .line 1044
    .local v1, "finalScrollToIndex":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment$1;

    invoke-direct {v3, p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;I)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1051
    .end local v1    # "finalScrollToIndex":I
    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptToFocus:Lorg/catrobat/catroid/content/Script;

    .line 1052
    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->brickToFocus:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 1053
    return-void
.end method

.method private showBackpackModeChooser()V
    .locals 3

    .line 811
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f12060a

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1207aa

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 812
    .local v0, "items":[Ljava/lang/CharSequence;
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 813
    const v2, 0x7f120056

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$JNkmeBry-UVx0QqrcnqtxCNBMVs;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$JNkmeBry-UVx0QqrcnqtxCNBMVs;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;)V

    .line 814
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 823
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 824
    return-void
.end method

.method private showCategoryFragment()V
    .locals 4

    .line 505
    new-instance v0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;-><init>()V

    .line 506
    .local v0, "brickCategoryFragment":Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;->setOnCategorySelectedListener(Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment$OnCategorySelectedListener;)V

    .line 508
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 509
    const v2, 0x7f0a03b7

    const-string v3, "brick_category_fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 510
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 512
    return-void
.end method

.method private showDeleteAlert(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    .line 896
    .local p1, "selectedBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->copyProjectForUndoOption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->showUndo(Z)V

    .line 898
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->getPosition(Lorg/catrobat/catroid/content/bricks/Brick;)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->undoBrickPosition:I

    .line 900
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->delete(Ljava/util/List;)V

    .line 901
    return-void
.end method

.method private startActionMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 551
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120039

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    goto :goto_0

    .line 554
    :cond_0
    iput p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionModeType:I

    .line 555
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionMode:Landroid/view/ActionMode;

    .line 556
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->hideBottomBar(Landroid/app/Activity;)V

    .line 558
    :goto_0
    return-void
.end method

.method private switchToBackpack()V
    .locals 3

    .line 854
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 855
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fragmentPosition"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->startActivity(Landroid/content/Intent;)V

    .line 857
    return-void
.end method

.method private switchToCatblocks()V
    .locals 6

    .line 864
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getFirstVisiblePosition()I

    move-result v0

    .line 865
    .local v0, "firstVisible":I
    const/4 v1, 0x0

    .line 866
    .local v1, "firstVisibleBrickID":Ljava/util/UUID;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    if-ltz v0, :cond_1

    .line 867
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 868
    .local v2, "firstVisibleObject":Ljava/lang/Object;
    instance-of v3, v2, Lorg/catrobat/catroid/content/bricks/Brick;

    if-eqz v3, :cond_1

    .line 869
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 870
    .local v3, "firstVisibleBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v4, v3, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-eqz v4, :cond_0

    .line 871
    invoke-interface {v3}, Lorg/catrobat/catroid/content/bricks/Brick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Script;->getScriptId()Ljava/util/UUID;

    move-result-object v1

    goto :goto_0

    .line 873
    :cond_0
    invoke-interface {v3}, Lorg/catrobat/catroid/content/bricks/Brick;->getBrickID()Ljava/util/UUID;

    move-result-object v1

    .line 878
    .end local v2    # "firstVisibleObject":Ljava/lang/Object;
    .end local v3    # "firstVisibleBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setUseCatBlocks(Landroid/content/Context;Z)V

    .line 880
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-direct {v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;-><init>(Ljava/util/UUID;)V

    .line 882
    .local v2, "catblocksFragment":Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 883
    .local v3, "fragmentTransaction":Landroidx/fragment/app/FragmentTransaction;
    const v4, 0x7f0a03b7

    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->Companion:Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$Companion;

    .line 884
    invoke-virtual {v5}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    .line 883
    invoke-virtual {v3, v4, v2, v5}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 885
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 886
    return-void
.end method

.method private toggleComments(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    .line 911
    .local p1, "selectedBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 912
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 913
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 914
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->finishActionMode()V

    .line 915
    return-void
.end method


# virtual methods
.method public addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 3
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 607
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;

    move-result-object v0

    invoke-interface {p1}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :cond_0
    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 614
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;Lorg/catrobat/catroid/ui/dragndrop/BrickListView;)V

    .line 615
    return-void
.end method

.method public addBrick(Lorg/catrobat/catroid/content/bricks/Brick;Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;Lorg/catrobat/catroid/ui/dragndrop/BrickListView;)V
    .locals 3
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p3, "brickAdapter"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;
    .param p4, "brickListView"    # Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    .line 619
    invoke-virtual {p3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 620
    instance-of v0, p1, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-eqz v0, :cond_0

    .line 621
    invoke-interface {p1}, Lorg/catrobat/catroid/content/bricks/Brick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    goto :goto_0

    .line 623
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/content/StartScript;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/StartScript;-><init>()V

    .line 624
    .local v0, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 625
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    .line 627
    .end local v0    # "script":Lorg/catrobat/catroid/content/Script;
    :goto_0
    invoke-virtual {p3, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->updateItems(Lorg/catrobat/catroid/content/Sprite;)V

    goto :goto_1

    .line 628
    :cond_1
    invoke-virtual {p3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    instance-of v0, p1, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-nez v0, :cond_2

    .line 629
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/Script;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 630
    invoke-virtual {p3, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->updateItems(Lorg/catrobat/catroid/content/Sprite;)V

    goto :goto_1

    .line 632
    :cond_2
    invoke-virtual {p4}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getFirstVisiblePosition()I

    move-result v0

    .line 633
    .local v0, "firstVisibleBrick":I
    invoke-virtual {p4}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->getLastVisiblePosition()I

    move-result v1

    .line 634
    .local v1, "lastVisibleBrick":I
    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 635
    .local v2, "position":I
    add-int/2addr v2, v0

    .line 636
    invoke-virtual {p3, v2, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->addItem(ILorg/catrobat/catroid/content/bricks/Brick;)V

    .line 637
    invoke-virtual {p4, p1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->startMoving(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 639
    .end local v0    # "firstVisibleBrick":I
    .end local v1    # "lastVisibleBrick":I
    .end local v2    # "position":I
    :goto_1
    return-void
.end method

.method public cancelHighlighting()V
    .locals 1

    .line 501
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->cancelHighlighting()V

    .line 502
    return-void
.end method

.method public cancelMove()V
    .locals 2

    .line 491
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->cancelMove()V

    .line 492
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    .line 493
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->updateItems(Lorg/catrobat/catroid/content/Sprite;)V

    .line 494
    return-void
.end method

.method public checkVariables()Z
    .locals 5

    .line 980
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    .line 981
    .local v0, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    .line 982
    .local v1, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    .line 984
    .local v2, "project":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedUserVariables:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/content/Project;->hasUserDataChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 985
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariables()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedMultiplayerVariables:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/content/Project;->hasUserDataChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 986
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedUserLists:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/content/Project;->hasUserDataChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 987
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedLocalUserVariables:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lorg/catrobat/catroid/content/Sprite;->hasUserDataChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 988
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedLocalLists:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lorg/catrobat/catroid/content/Sprite;->hasUserDataChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 984
    :goto_1
    return v3
.end method

.method public closeFinder()V
    .locals 1

    .line 1064
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptFinder:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptFinder:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->close()V

    .line 1067
    :cond_0
    return-void
.end method

.method public copyProjectForUndoOption()Z
    .locals 9

    .line 922
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    .line 923
    .local v0, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    .line 924
    .local v1, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->currentSpriteName:Ljava/lang/String;

    .line 925
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->currentSceneName:Ljava/lang/String;

    .line 926
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v2

    .line 927
    .local v2, "project":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    .line 928
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "code.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 929
    .local v3, "currentCodeFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "undo_code.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 931
    .local v4, "undoCodeFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 933
    :try_start_0
    invoke-static {v3, v4}, Lorg/catrobat/catroid/io/StorageOperations;->transferData(Ljava/io/File;Ljava/io/File;)V

    .line 934
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->saveVariables()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    const/4 v5, 0x1

    return v5

    .line 936
    :catch_0
    move-exception v5

    .line 937
    .local v5, "exception":Ljava/io/IOException;
    sget-object v6, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Copying project "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    .end local v5    # "exception":Ljava/io/IOException;
    :cond_0
    const/4 v5, 0x0

    return v5
.end method

.method public createActionBarTitle(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Ljava/lang/String;
    .locals 2
    .param p1, "currentProject"    # Lorg/catrobat/catroid/content/Project;
    .param p2, "currentScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p3, "currentSprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 329
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 330
    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findBrickByHash(I)Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 1
    .param p1, "hashCode"    # I

    .line 590
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->findByHash(I)Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public finishActionMode()V
    .locals 1

    .line 583
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->clearSelection()V

    .line 584
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionModeType:I

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 587
    :cond_0
    return-void
.end method

.method public getActionModeType()I
    .locals 1

    .line 1056
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionModeType:I

    return v0
.end method

.method public handleAddButton()V
    .locals 2

    .line 594
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->isCurrentlyHighlighted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->cancelHighlighting()V

    .line 597
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->isCurrentlyMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->highlightMovingItem()V

    goto :goto_0

    .line 600
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 601
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->showCategoryFragment()V

    .line 603
    :goto_0
    return-void
.end method

.method public highlightMovingItem()V
    .locals 1

    .line 487
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->highlightMovingItem()V

    .line 488
    return-void
.end method

.method public isCurrentlyHighlighted()Z
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->isCurrentlyHighlighted()Z

    move-result v0

    return v0
.end method

.method public isCurrentlyMoving()Z
    .locals 1

    .line 480
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->isCurrentlyMoving()Z

    move-result v0

    return v0

    .line 483
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFinderOpen()Z
    .locals 1

    .line 1060
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptFinder:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->isOpen()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onCreateView$0$ScriptFragment(IIIILandroid/widget/TextView;)V
    .locals 6
    .param p1, "sceneIndex"    # I
    .param p2, "spriteIndex"    # I
    .param p3, "brickIndex"    # I
    .param p4, "totalResults"    # I
    .param p5, "textView"    # Landroid/widget/TextView;

    .line 289
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 290
    .local v0, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 291
    .local v1, "currentScene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 293
    .local v2, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {p0, v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->createActionBarTitle(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v5

    .line 297
    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/ProjectManager;->setCurrentSceneAndSprite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->updateItems(Lorg/catrobat/catroid/content/Sprite;)V

    .line 301
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->notifyDataSetChanged()V

    .line 302
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v3, p3}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->smoothScrollToPosition(I)V

    .line 303
    invoke-direct {p0, p3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->highlightBrickAtIndex(I)V

    .line 304
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->hideKeyboard()V

    .line 305
    return-void
.end method

.method public synthetic lambda$onCreateView$1$ScriptFragment()V
    .locals 3

    .line 308
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->cancelHighlighting()V

    .line 309
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->finishActionMode()V

    .line 310
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->activity:Lorg/catrobat/catroid/ui/SpriteActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->activity:Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    .line 312
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    .line 311
    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->setCurrentSceneAndSprite(Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)V

    .line 313
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->activity:Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->activity:Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->createActionBarTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->activity:Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->addTabs()V

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->activity:Lorg/catrobat/catroid/ui/SpriteActivity;

    const v1, 0x7f0a0617

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    return-void
.end method

.method public synthetic lambda$onCreateView$2$ScriptFragment()V
    .locals 2

    .line 320
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->activity:Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->removeTabs()V

    .line 321
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->activity:Lorg/catrobat/catroid/ui/SpriteActivity;

    const v1, 0x7f0a0617

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    return-void
.end method

.method public synthetic lambda$onItemClick$3$ScriptFragment(Ljava/util/List;Lorg/catrobat/catroid/content/bricks/Brick;ILandroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "options"    # Ljava/util/List;
    .param p2, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;
    .param p3, "position"    # I
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 659
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->handleContextMenuItemClick(ILorg/catrobat/catroid/content/bricks/Brick;I)V

    return-void
.end method

.method public synthetic lambda$refreshFragmentAfterUndo$6$ScriptFragment()V
    .locals 2

    .line 1010
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    iget v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->undoBrickPosition:I

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->setSelection(I)V

    return-void
.end method

.method public synthetic lambda$showBackpackModeChooser$4$ScriptFragment(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 815
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->switchToBackpack()V

    goto :goto_0

    .line 817
    :cond_1
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->startActionMode(I)V

    .line 818
    nop

    .line 822
    :goto_0
    return-void
.end method

.method public synthetic lambda$showNewScriptGroupAlert$5$ScriptFragment(Ljava/util/List;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedBricks"    # Ljava/util/List;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "textInput"    # Ljava/lang/String;

    .line 834
    invoke-virtual {p0, p3, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->pack(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public loadProjectAfterUndoOption()V
    .locals 7

    .line 944
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 945
    .local v0, "project":Lorg/catrobat/catroid/content/Project;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "code.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 946
    .local v1, "currentCodeFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "undo_code.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 948
    .local v2, "undoCodeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 950
    :try_start_0
    invoke-static {v2, v1}, Lorg/catrobat/catroid/io/StorageOperations;->transferData(Ljava/io/File;Ljava/io/File;)V

    .line 951
    new-instance v3, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;-><init>(Ljava/io/File;Landroid/content/Context;)V

    invoke-virtual {v3, p0}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->setListener(Lorg/catrobat/catroid/io/asynctask/ProjectLoader$ProjectLoadListener;)Lorg/catrobat/catroid/io/asynctask/ProjectLoader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/io/asynctask/ProjectLoader;->loadProjectAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    goto :goto_0

    .line 952
    :catch_0
    move-exception v3

    .line 953
    .local v3, "exception":Ljava/io/IOException;
    sget-object v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Replaceing project "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    .end local v3    # "exception":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 476
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->notifyDataSetChanged()V

    .line 477
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 227
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a031b

    if-eq v0, v1, :cond_0

    .line 232
    const/4 v0, 0x0

    return v0

    .line 229
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->handleContextualAction()V

    .line 230
    nop

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 357
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 359
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 360
    .local v0, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    .line 361
    .local v1, "currentScene":Lorg/catrobat/catroid/content/Scene;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    .line 362
    .local v2, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getBroadcastMessageContainer()Lorg/catrobat/catroid/common/BroadcastMessageContainer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/BroadcastMessageContainer;->update()V

    .line 364
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;-><init>(Lorg/catrobat/catroid/content/Sprite;)V

    iput-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    .line 365
    invoke-virtual {v3, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$SelectionListener;)V

    .line 366
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v3, p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$OnItemClickListener;)V

    .line 368
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 370
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 372
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Sprite;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_NUMBER_OF_LOOKS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    const v4, 0x7f120406

    .line 374
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 373
    invoke-static {v3, v4}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->setInternExternLanguageConverterMap(Lorg/catrobat/catroid/formulaeditor/Sensors;Ljava/lang/Integer;)V

    goto :goto_0

    .line 376
    :cond_0
    sget-object v3, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_NUMBER_OF_LOOKS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    const v4, 0x7f120407

    .line 377
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 376
    invoke-static {v3, v4}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->setInternExternLanguageConverterMap(Lorg/catrobat/catroid/formulaeditor/Sensors;Ljava/lang/Integer;)V

    .line 379
    :goto_0
    return-void
.end method

.method public onCategorySelected(Ljava/lang/String;)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "fragment":Landroidx/fragment/app/ListFragment;
    const-string v1, ""

    .line 518
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0a03b7

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 519
    .local v2, "currentFragment":Landroidx/fragment/app/Fragment;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1201e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 520
    invoke-static {p0}, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->newInstance(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;

    move-result-object v0

    .line 521
    sget-object v1, Lorg/catrobat/catroid/ui/fragment/UserDefinedBrickListFragment;->USER_DEFINED_BRICK_LIST_FRAGMENT_TAG:Ljava/lang/String;

    goto :goto_1

    .line 522
    :cond_0
    instance-of v4, v2, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1201e5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 526
    :cond_1
    invoke-static {p1, p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->newInstance(Ljava/lang/String;Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    move-result-object v0

    .line 527
    sget-object v1, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->ADD_BRICK_FRAGMENT_TAG:Ljava/lang/String;

    goto :goto_1

    .line 523
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->newInstance(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;Ljava/lang/String;)Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    move-result-object v0

    .line 524
    sget-object v1, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->BRICK_SEARCH_FRAGMENT_TAG:Ljava/lang/String;

    .line 530
    :goto_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 531
    invoke-virtual {v4, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    const/4 v4, 0x0

    .line 532
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 533
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 534
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 173
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 175
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 176
    const-string v1, "brickToFocus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->brickToFocus:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 177
    const-string v1, "scriptToFocus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Script;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptToFocus:Lorg/catrobat/catroid/content/Script;

    .line 179
    :cond_0
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 189
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 190
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 192
    iget v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionModeType:I

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x3

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->selectAllCommentedOutBricks()V

    .line 207
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->setCheckBoxMode(I)V

    .line 208
    const v1, 0x7f12020b

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    goto :goto_0

    .line 202
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->setCheckBoxMode(I)V

    .line 203
    const v1, 0x7f120038

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    goto :goto_0

    .line 198
    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->setCheckBoxMode(I)V

    .line 199
    const v1, 0x7f120037

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    goto :goto_0

    .line 194
    :cond_3
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->setCheckBoxMode(I)V

    .line 195
    const v1, 0x7f120035

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    nop

    .line 217
    :goto_0
    return v3

    .line 211
    :cond_4
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->setCheckBoxMode(I)V

    .line 212
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 213
    return v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 277
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0168

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    .line 279
    sget v1, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v1, 0x3

    .line 280
    .local v1, "bottomListPadding":I
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->setPadding(IIII)V

    .line 281
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->setClipToPadding(Z)V

    .line 283
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/ui/SpriteActivity;

    iput-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->activity:Lorg/catrobat/catroid/ui/SpriteActivity;

    .line 285
    const v2, 0x7f0a038b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/ui/ScriptFinder;

    iput-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptFinder:Lorg/catrobat/catroid/ui/ScriptFinder;

    .line 286
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$-6KvpFmXCPXYCemfrJKU9vkwGyY;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$-6KvpFmXCPXYCemfrJKU9vkwGyY;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;)V

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/ScriptFinder;->setOnResultFoundListener(Lorg/catrobat/catroid/ui/ScriptFinder$OnResultFoundListener;)V

    .line 307
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptFinder:Lorg/catrobat/catroid/ui/ScriptFinder;

    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$nnm1P2ATWLiOgwxxXezI0Cuc7JM;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$nnm1P2ATWLiOgwxxXezI0Cuc7JM;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;)V

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/ScriptFinder;->setOnCloseListener(Lorg/catrobat/catroid/ui/ScriptFinder$OnCloseListener;)V

    .line 319
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptFinder:Lorg/catrobat/catroid/ui/ScriptFinder;

    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$LZIbwqWaP_hTDWGdN3A5xKDmkns;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$LZIbwqWaP_hTDWGdN3A5xKDmkns;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;)V

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/ui/ScriptFinder;->setOnOpenListener(Lorg/catrobat/catroid/ui/ScriptFinder$OnOpenListener;)V

    .line 324
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->setHasOptionsMenu(Z)V

    .line 325
    return-object v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 239
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->resetActionModeParameters()V

    .line 240
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->clearSelection()V

    .line 241
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/BottomBar;->showBottomBar(Landroid/app/Activity;)V

    .line 242
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 349
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onDestroyView()V

    .line 350
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptFinder:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->activity:Lorg/catrobat/catroid/ui/SpriteActivity;

    if-eqz v0, :cond_0

    .line 351
    const v1, 0x7f0a0617

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_0
    return-void
.end method

.method public onItemClick(Lorg/catrobat/catroid/content/bricks/Brick;I)V
    .locals 5
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;
    .param p2, "position"    # I

    .line 643
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->isCurrentlyHighlighted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->cancelHighlighting()V

    .line 645
    return-void

    .line 647
    :cond_0
    invoke-static {p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContextMenuItems(Lorg/catrobat/catroid/content/bricks/Brick;)Ljava/util/List;

    move-result-object v0

    .line 648
    .local v0, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 650
    .local v1, "items":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 651
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 650
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 654
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/catrobat/catroid/content/bricks/Brick;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 655
    .local v2, "brickView":Landroid/view/View;
    invoke-interface {p1}, Lorg/catrobat/catroid/content/bricks/Brick;->disableSpinners()V

    .line 657
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 658
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$O66uCW9UqYmql6qNqsCTeCS4YYY;

    invoke-direct {v4, p0, v0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$O66uCW9UqYmql6qNqsCTeCS4YYY;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;Ljava/util/List;Lorg/catrobat/catroid/content/bricks/Brick;I)V

    .line 659
    invoke-virtual {v3, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 660
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 661
    return-void
.end method

.method public onItemLongClick(Lorg/catrobat/catroid/content/bricks/Brick;I)Z
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;
    .param p2, "position"    # I

    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->showUndo(Z)V

    .line 802
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->isCurrentlyHighlighted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->cancelHighlighting()V

    goto :goto_0

    .line 805
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->startMoving(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 807
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onLoadFinished(Z)V
    .locals 3
    .param p1, "success"    # Z

    .line 960
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->currentSceneName:Ljava/lang/String;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->currentSpriteName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ProjectManager;->setCurrentSceneAndSprite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 961
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->checkVariables()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->loadVariables()V

    .line 964
    :cond_0
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->refreshFragmentAfterUndo()V

    .line 965
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 440
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->isCurrentlyMoving()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->highlightMovingItem()V

    .line 442
    return v1

    .line 444
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->isCurrentlyHighlighted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->cancelHighlighting()V

    .line 447
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 470
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 449
    :sswitch_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->loadProjectAfterUndoOption()V

    .line 450
    goto :goto_0

    .line 467
    :sswitch_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptFinder:Lorg/catrobat/catroid/ui/ScriptFinder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/ScriptFinder;->open()V

    .line 468
    goto :goto_0

    .line 458
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->prepareActionMode(I)V

    .line 459
    goto :goto_0

    .line 455
    :sswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->prepareActionMode(I)V

    .line 456
    goto :goto_0

    .line 461
    :sswitch_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->prepareActionMode(I)V

    .line 462
    goto :goto_0

    .line 464
    :sswitch_5
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->switchToCatblocks()V

    .line 465
    goto :goto_0

    .line 452
    :sswitch_6
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->prepareActionMode(I)V

    .line 453
    nop

    .line 472
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f0a0059 -> :sswitch_6
        0x7f0a02e7 -> :sswitch_5
        0x7f0a031a -> :sswitch_4
        0x7f0a0327 -> :sswitch_3
        0x7f0a0337 -> :sswitch_2
        0x7f0a0388 -> :sswitch_1
        0x7f0a041e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .line 417
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onPause()V

    .line 418
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 419
    .local v0, "currentProject":Lorg/catrobat/catroid/content/Project;
    new-instance v1, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;-><init>(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;->saveProjectAsync()V

    .line 421
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedListViewState:Landroid/os/Parcelable;

    .line 423
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 424
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 428
    const v0, 0x7f0a05b0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 429
    const v0, 0x7f0a0577

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 430
    const v0, 0x7f0a02e9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 431
    const v0, 0x7f0a0388

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 435
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 436
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 383
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onResume()V

    .line 385
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 386
    .local v0, "project":Lorg/catrobat/catroid/content/Project;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v1

    .line 387
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    .line 389
    .local v2, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v3

    .line 391
    .local v3, "actionBar":Landroidx/appcompat/app/ActionBar;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    :goto_0
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->isBackpackEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 398
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->loadBackpack()V

    .line 401
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lorg/catrobat/catroid/ui/BottomBar;->showBottomBar(Landroid/app/Activity;)V

    .line 402
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lorg/catrobat/catroid/ui/BottomBar;->showPlayButton(Landroid/app/Activity;)V

    .line 403
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lorg/catrobat/catroid/ui/BottomBar;->showAddButton(Landroid/app/Activity;)V

    .line 405
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->updateItems(Lorg/catrobat/catroid/content/Sprite;)V

    .line 407
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->savedListViewState:Landroid/os/Parcelable;

    if-eqz v4, :cond_2

    .line 408
    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->listView:Lorg/catrobat/catroid/ui/dragndrop/BrickListView;

    invoke-virtual {v5, v4}, Lorg/catrobat/catroid/ui/dragndrop/BrickListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 411
    :cond_2
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scrollToFocusItem()V

    .line 412
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f1204e6

    invoke-static {v4, v5}, Lorg/catrobat/catroid/utils/SnackbarUtil;->showHintSnackbar(Landroid/app/Activity;I)V

    .line 413
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 4
    .param p1, "selectedItemCnt"    # I

    .line 562
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionModeType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const-string v2, " "

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 573
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionMode:Landroid/view/ActionMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f12020b

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 574
    goto :goto_0

    .line 570
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionMode:Landroid/view/ActionMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120038

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 571
    goto :goto_0

    .line 567
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionMode:Landroid/view/ActionMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120037

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 568
    goto :goto_0

    .line 564
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->actionMode:Landroid/view/ActionMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120035

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 565
    nop

    .line 580
    :goto_0
    return-void

    .line 576
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ActionModeType not set Correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pack(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    .line 843
    .local p2, "selectedBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->scriptController:Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/controller/ScriptController;->pack(Ljava/lang/String;Ljava/util/List;)V

    .line 844
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f12060b

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 845
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->switchToBackpack()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->finishActionMode()V

    .line 851
    return-void
.end method

.method protected prepareActionMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 537
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 538
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedScriptGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->startActionMode(I)V

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->switchToBackpack()V

    goto :goto_0

    .line 543
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->showBackpackModeChooser()V

    goto :goto_0

    .line 546
    :cond_2
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->startActionMode(I)V

    .line 548
    :goto_0
    return-void
.end method

.method public setUndoBrickPosition(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 918
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->getPosition(Lorg/catrobat/catroid/content/bricks/Brick;)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->undoBrickPosition:I

    .line 919
    return-void
.end method

.method public showNewScriptGroupAlert(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    .line 827
    .local p1, "selectedBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 828
    .local v0, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    .line 829
    .local v1, "duplicateInputTextwatcher":Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedScriptGroups()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;->setScope(Ljava/util/List;)V

    .line 830
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    const v4, 0x7f120250

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedScriptGroups()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 832
    const v3, 0x7f12071f

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v3

    .line 833
    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v3

    .line 834
    const v4, 0x7f1205ff

    invoke-virtual {p0, v4}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$BpRmWHMGA5R2zueJ2vI0ulOLJVw;

    invoke-direct {v5, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$ScriptFragment$BpRmWHMGA5R2zueJ2vI0ulOLJVw;-><init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;Ljava/util/List;)V

    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 836
    const v3, 0x7f1205a7

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 837
    const v4, 0x7f1201b8

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 838
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 839
    return-void
.end method

.method public showUndo(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1015
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    .line 1016
    .local v0, "activity":Lorg/catrobat/catroid/ui/SpriteActivity;
    if-eqz v0, :cond_0

    .line 1017
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/ui/SpriteActivity;->showUndo(Z)V

    .line 1019
    :cond_0
    return-void
.end method
